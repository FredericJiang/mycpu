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





class AXI_Inst extends Bundle{

val inst_read   = Input(UInt(AXI_Inst_Width.W))
val inst_ready  = Input(Bool())

val inst_req    = Output(Bool())
val inst_addr   = Output(UInt(AXI_Addr_Width.W))
}

class AXI_Data extends Bundle{

val data_read   = Input(UInt(AXI_Data_Width.W))
val data_ready  = Input(Bool())

val data_req_r  = Output(Bool())
val data_req_w  = Output(Bool())
val data_addr   = Output(UInt(AXI_Addr_Width.W))
val data_write  = Output(UInt(AXI_Data_Width.W)) 
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



// state control change signal

  inst_ren :=  imem.inst_req
  data_ren :=  dmem.data_req_r 
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

// FSM of Read Inst & Data

switch(read_state){
  is(r_idle){
      when(data_ren){ read_state := r_data_addr }
 .elsewhen(inst_ren){ read_state := r_inst_addr }}
  
  is(r_inst_addr){
      when(ar_hs)   { read_state := r_inst_read }}

  is(r_inst_read){
      when(r_done)  { read_state := r_inst_done }} //stage for send inst to core

  is(r_inst_done){ 
      when(data_ren){ read_state := r_data_addr } // avoid always read inst not time to read data
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


// Read address channel signals
  out.ar.bits.id     := 0.U 
  out.ar.bits.addr   := Mux(inst_ren, imem.inst_addr, dmem.data_addr)
  out.ar.bits.len    := "b000".U //every burst transfer 1 data
  out.ar.bits.size   := "b011".U //every clock transfer 8 bytes
  out.ar.bits.burst  := "b01".U  
  out.ar.bits.lock   := 0.U  
  out.ar.bits.cache  := "b0000".U  
  out.ar.bits.prot   := "b000".U
  out.ar.bits.qos    := 0.U
  out.ar.bits.user   := 0.U

  out.ar.valid   := (read_state === r_inst_addr ) || read_state === r_data_addr
// Read data channel signals
  out.r.ready    := true.B

// write address channel signals
  out.aw.bits.id      := 0.U  
  out.aw.bits.addr    := dmem.data_addr
  out.aw.bits.len     := "b000".U  
  out.aw.bits.size    := "b011".U
  out.aw.bits.burst   := "b01".U
  out.aw.bits.lock    := 0.U
  out.aw.bits.cache   := "b0000".U  
  out.aw.bits.prot    := "b000".U
  out.aw.bits.user    := 0.U
  out.aw.bits.qos     := 0.U

  out.aw.valid   := (write_state === w_data_addr)
// write data channel signals
  out.w.bits.id       := 0.U 
  out.w.bits.data     := io.dmem.data_write
  out.w.bits.strb     := io.dmem.data_strb
  out.w.bits.last     := true.B

  out.w.valid    := (write_state ===w_data_write)

// write responds channel signals
  out.b.ready    := true.B



// Core part for inst read
  imem.inst_ready := r_done


//need to aligned the fetched data  
  when(out.ar.bits.addr % 8.U === 0.U){ imem.inst_read  := out.r.bits.data(31,0) }
.otherwise                            { imem.inst_read  := out.r.bits.data(61,32)}



// Core part for data read
  dmem.data_ready := (read_state === r_data_done) || (write_state === w_data_done )
  dmem.data_read  := out.r.bits.data
// Core part for data write



}