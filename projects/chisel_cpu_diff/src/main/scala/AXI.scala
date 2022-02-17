import chisel3._
import chisel3.util._
import Constant._



class AXI_IO extends Bundle{
  val ar  = Decoupled(new AXI_A)
  val r   = Flipped(Decoupled(new AXI_R))
  val aw  = Decoupled(new AXI_A)
  val w   = Decoupled(new AXI_W)
  val b   = Flipped(Decoupled(new AXI_B))
}

class AXI_A extends Bundle {
   val id    = Output(UInt(AXI_Id_Width.W))
   val user  = Output(UInt(1.W))
   val addr  = Output(UInt(AXI_Addr_Width.W))
   val len   = Output(UInt(8.W))
   val size  = Output(UInt(3.W))
   val burst = Output(UInt(2.W))
   val lock  = Output(UInt(2.W))
   val cache = Output(UInt(4.W))
   val prot  = Output(UInt(3.W))
   val qos   = Output(UInt(4.W))
}

class AXI_R extends Bundle {
   val id   = Output(UInt(AXI_Id_Width.W))
   val data = Output(UInt(AXI_Data_Width.W))
   val resp = Output(UInt(2.W))
   val last = Output(Bool())
}

class AXI_W extends Bundle {
  val id    = Output(UInt(AXI_Id_Width.W))
  val data = Output(UInt(AXI_Data_Width.W))
  val strb = Output(UInt(8.W))
  val last = Output(Bool())
}

class AXI_B extends Bundle {
  val id    = Output(UInt(AXI_Id_Width.W))
  val resp = Output(UInt(2.W))
}



class Inst_IO extends Bundle{
val inst_ready  = Input(Bool())
val inst_req    = Output(Bool())
val inst_addr   = Output(UInt(AXI_Addr_Width.W))

}

class AXI_Inst extends Inst_IO{
val inst_read   = Input(UInt(128.W))
}

class Core_Inst extends Inst_IO{
val inst_read   = Input(UInt(32.W))
}

class Data_IO extends Bundle{
val data_ready  = Input(Bool())
val data_req_r  = Output(Bool())
val data_req_w  = Output(Bool())
val data_addr_r   = Output(UInt(AXI_Addr_Width.W))//32 bits
val data_addr_w   = Output(UInt(AXI_Addr_Width.W))
//val data_strb   = Output(UInt(64.W)) 
}

class Core_Data extends Data_IO{
val data_read   = Input(UInt(AXI_Data_Width.W)) //64 bits
val data_write  = Output(UInt(AXI_Data_Width.W))
val data_strb   = Output(UInt(64.W))
}

class AXI_Data extends Data_IO{
val data_read   = Input(UInt(128.W))
val data_write  = Output(UInt(128.W))
val data_strb   = Output(UInt(8.W))  
}




class Core2AXI extends Module{
  val io = IO(new Bundle {
    val axi2ram = new AXI_IO
    val imem = Flipped(new AXI_Inst)
    val dmem = Flipped(new AXI_Data)
  })

val out      = io.axi2ram
val imem     = io.imem
val dmem     = io.dmem

val inst_ren = WireInit(false.B)
val data_ren = WireInit(false.B)
val data_wen = WireInit(false.B)



// state definition signal
  val r_idle :: r_inst_addr :: r_inst_read :: r_inst_done :: r_data_addr :: r_data_read :: r_data_done :: Nil = Enum(7)
 
  val w_idle :: w_data_addr :: w_data_write :: w_data_resp :: w_data_done :: Nil = Enum(5)

//val reg_data_ren = RegInit(false.B)
//val data_read_done = WireInit(false.B)
val reg_data_addr_r = RegInit(0.U(32.W))

//when(dmem.data_req_r){reg_data_ren := dmem.data_req_r}

when(dmem.data_addr_r =/= 0.U){reg_data_addr_r := dmem.data_addr_r}


// state control change signal

  inst_ren :=  imem.inst_req
  data_ren :=  dmem.data_req_r //|| (reg_data_ren && !data_read_done )
  data_wen :=  dmem.data_req_w

  val ar_hs    = out.ar.ready && out.ar.valid   //read address channel
  val r_hs     = out.r.ready  && out.r.valid    //read data channel
  val aw_hs    = out.aw.ready && out.aw.valid   //write address channel
  val w_hs     = out.w.ready  && out.w.valid    //wrtie data channel
  val b_hs     = out.b.ready  && out.b.valid    //write responds channel

  val w_done   = w_hs && out.w.bits.last
  val r_done   = r_hs && out.r.bits.last

// state machine

  val read_state  = RegInit(r_idle)
  val write_state = RegInit(w_idle)


val write_done = RegInit(false.B)
when(dmem.data_req_w && write_state === w_data_done){ write_done:= true.B }
.elsewhen(!dmem.data_req_w)                         { write_done:= false.B }
// FSM of Read Inst & Data

switch(read_state){
  is(r_idle){
      when(inst_ren){ read_state := r_inst_addr }
 .elsewhen( data_ren){ read_state := r_data_addr;  }}//reg_data_ren := false.B;
  
  is(r_inst_addr){
      when(ar_hs)   { read_state := r_inst_read }}

  is(r_inst_read){
      when(r_done)  { read_state := r_inst_done }} //stage for send inst to core

  is(r_inst_done){ 
      when(data_ren){ read_state := r_data_addr;  } //reg_data_ren := false.B ; avoid always read inst not time to read data
 .otherwise         { read_state := r_idle      }}

  is(r_data_addr){
      when(ar_hs)   { read_state := r_data_read }}
  
  is(r_data_read){
      when(r_done)  { read_state := r_data_done }}
  
  is(r_data_done)   { read_state := r_idle      }
}


// FSM of Write data

switch(write_state){
  is(w_idle)      {
      when(data_wen){ write_state := w_data_addr  }}

  is(w_data_addr) {
      when(aw_hs)   { write_state := w_data_write }}

  is(w_data_write){
      when(w_done)  { write_state := w_data_resp  }}

  is(w_data_resp) {
      when(b_hs)    { write_state := w_data_done  }}

   is(w_data_done)  { write_state := w_idle       }
}


val axi_addr = WireInit(0.U(32.W))
when(read_state === r_inst_addr)      {axi_addr:= imem.inst_addr   }
.elsewhen(read_state === r_data_addr && dmem.data_addr_r =/= 0.U ) {axi_addr:= dmem.data_addr_r }
.elsewhen(read_state === r_data_addr && dmem.data_addr_r === 0.U ) {axi_addr:= reg_data_addr_r}
val inst_reg_addr = RegInit(0.U(32.W))
inst_reg_addr:= imem.inst_addr 

val axi_addr_w = Mux(write_done, Cat(dmem.data_addr_w(31, 4), "b1000".U), Cat(dmem.data_addr_w(31, 4),0.U,0.U,0.U,0.U))      

// Read address channel signals
  out.ar.bits.id     := 0.U 
  out.ar.bits.addr   := axi_addr
  out.ar.bits.len    := "b001".U //every burst transfer 2 data
  out.ar.bits.size   := "b011".U //every clock transfer 8 bytes = 64bits
  out.ar.bits.burst  := "b01".U  // incrementing-address burst
  out.ar.bits.lock   := 0.U  
  out.ar.bits.cache  := "b0010".U
  out.ar.bits.prot   := "b000".U
  out.ar.bits.qos    := 0.U
  out.ar.bits.user   := 0.U

  out.ar.valid   := (read_state === r_inst_addr ) || read_state === r_data_addr
// Read data channel signals
  out.r.ready    := true.B

// write address channel signals
  out.aw.bits.id      := 0.U   
  out.aw.bits.addr    := axi_addr_w
  out.aw.bits.len     := "b000".U //every burst transfer 1 data
  out.aw.bits.size    := "b011".U //every clock transfer 8 bytes = 64bits
  out.aw.bits.burst   := "b01".U  // incrementing-address burst
  out.aw.bits.lock    := 0.U
  out.aw.bits.cache   := "b0010".U  
  out.aw.bits.prot    := "b000".U
  out.aw.bits.user    := 0.U
  out.aw.bits.qos     := 0.U

  out.aw.valid   := (write_state === w_data_addr)
// write data channel signals
  out.w.bits.id       := 0.U 
  out.w.bits.data     := Mux(write_done,io.dmem.data_write(127,64), io.dmem.data_write(63,0))
  out.w.bits.strb     := "b11111111".U
  out.w.bits.last     := true.B

  out.w.valid    := (write_state === w_data_write)

// write responds channel signals
  out.b.ready    := true.B



// Core part for inst read




  val inst_read_h = RegInit(0.U(64.W))
  val inst_read_l = RegInit(0.U(64.W))
  val data_read_h = RegInit(0.U(64.W))
  val data_read_l = RegInit(0.U(64.W))

  when (r_hs) {
    when (out.r.bits.last) {
      inst_read_h := out.r.bits.data
      data_read_h := out.r.bits.data
    }
    .otherwise {
      inst_read_l := out.r.bits.data
      data_read_l := out.r.bits.data
    }
  }

  imem.inst_read := Cat(inst_read_h, inst_read_l)
  dmem.data_read := Cat(data_read_h, data_read_l)
  //dmem.data_read := data_read_h

  imem.inst_ready := (read_state === r_inst_done) 
  dmem.data_ready := (read_state === r_data_done) || ((write_state === w_data_done) && write_done )



// Core part for data read

//dmem.data_read  := out.r.bits.data
// Core part for data write
//imem.read_idle := read_state=== r_idle



}