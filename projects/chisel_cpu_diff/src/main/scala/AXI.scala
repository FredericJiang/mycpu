import chisel3._
import chisel3.util._
import Constant._


trait HandShaking{
   val id    = Output(UInt(AXI_Id_Width.W))
   val valid = Output(Bool())
   val ready = Input(Bool())
}

class AXI_IO extends Bundle{
  val ar  = (new AXI_A)
  val r   = Flipped((new AXI_R))
  val aw  = (new AXI_A)
  val w   = (new AXI_W)
  val b   = Flipped((new AXI_B))
}

class AXI_A extends Bundle with HandShaking{
   val addr  = Output(UInt(AXI_Addr_Width.W))
   val len   = Output(UInt(8.W))
   val size  = Output(UInt(3.W))
   val burst = Output(UInt(2.W))
   val lock  = Output(UInt(2.W))
   val cache = Output(UInt(4.W))
   val prot  = Output(UInt(3.W))
}

class AXI_R extends Bundle with HandShaking{
  val data = Output(UInt(AXI_Data_Width.W))
  val resp = Output(UInt(2.W))
  val last = Output(Bool())
}

class AXI_W extends Bundle with HandShaking{
  val data = Output(UInt(AXI_Data_Width.W))
  val strb = Output(UInt(2.W))
  val last = Output(Bool())
}

class AXI_B extends Bundle with HandShaking{
  val resp = Output(UInt(2.W))
}





class AXI_Inst extends Bundle{


}

class AXI_Data extends Bundle{


}


class Core2AXI extends Bundle{
  val io = IO(new Bundle {
    val out = new AXI_IO
    val imem = Flipped(new AXI_Inst)
    val dmem = Flipped(new AXI_Data)
  })

val out      = io.out
val imem     = io.imem
val dmem     = io.dmem

val inst_ren = WireInit(false.B)
val data_ren = WireInit(false.B)
val data_wen = WireInit(false.B)

inst_ren := imem.inst_valid && imem.inst_req === REQ_READ
data_ren := dmem.data_valid && dmem.data_req === REQ_READ
data_wen := dmem.data_valid && dmem.data_req === REQ_WRITE

/*
Signal from core
AXI_INST<>imem{
  val inst_read   = Input(UInt(RW_DATA_WIDTH.W))
  val inst_valid  = Output(Bool())
  val inst_ready  = Input(Bool())
  val inst_req    = Output(Bool())
  val inst_addr   = Output(UInt(AxiAddrWidth.W))   
  val inst_size   = Output(UInt(2.W))
}

dmem{
  val data_read   = Input(UInt(AxiDataWidth.W))
  val data_write  = Output(UInt(AxiDataWidth.W)) 
  val data_valid  = Output(Bool())
  val data_ready  = Input(Bool())
  val data_req    = Output(Bool())
  val data_addr   = Output(UInt(AxiAddrWidth.W)) 
  val data_size   = Output(UInt(2.W)) 
  val data_strb   = Output(UInt(8.W)) 

}

*/



// state definition signal
  val r_idle :: r_inst_addr :: r_inst_read :: r_inst_done :: r_data_addr :: r_data_read :: r_data_done :: Nil = Enum(7)
 
  val w_idle :: w_data_addr :: w_data_write :: w_data_resp :: w_data_done :: Nil = Enum(5)



// state control change signal
  val ar_hs      = out.ar.ready && out.ar.valid   //read address channel
  val r_hs       = out.r.ready  && out.r.valid    //read data channel
  val aw_hs      = out.aw.ready && out.aw.valid   //write address channel
  val w_hs       = out.w.ready  && out.w.valid    //wrtie data channel
  val b_hs       = out.b.ready  && out.b.valid    //write responds channel

  val w_done     = w_hs && out.w.bits.last
  val r_done     = r_hs && out.r.bits.last


// state machine

  val read_state  = RegInit(r_idle)
  val write_state = RegInit(w_idle)



// FSM of Read Inst & Data
switch(read_state){
  is(r_idle){
      when(inst_ren){ read_state := r_inst_addr }
 .elsewhen(data_ren){ read_state := r_data_addr }}
  
  is(r_inst_addr){
      when(ar_hs)   { read_state := r_inst_read }}

  is(r_inst_read){
      when(r_done)  { read_state := r_inst_done }}

  is(r_inst_done)   { read_state := r_idle      }

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

  is(w_data_done)   { write_state := w_idle       }
}









// Read address channel signals
  out.ar.id      := 0.U 
  out.ar.addr    := axi_raddr
  out.ar.len     := 1.U
  out.ar.size    := "b11".U  
  out.ar.burst   := "b01".U  
  out.ar.lock    := 0.U  
  out.ar.cache   := "b0010".U  
  out.ar.prot    := "b000".U
  out.ar.valid   := read_state === r_inst_addr || read_state === r_data_addr
 

// Read data channel signals
  out.r.ready    := true.B

// write address channel signals
  out.aw.id      := 0.U  
  out.aw.addr    := axi_waddr
  out.aw.len     := 0.U  
  out.aw.size    := "b11".U
  out.aw.burst   := "b01".U
  out.aw.lock    := 0.U
  out.aw.cache   := "b0010".U  
  out.aw.prot    := "b000".U
  out.aw.valid   := write_state === w_data_addr

// write data channel signals
  out.w.id       := 0.U 
  out.w.data     := Mux(data_ok, dmem.data_write(127,64), dmem.data_write(63, 0))
  out.w.strb     := dmem.data_strb
  out.w.last     := true.B
  out.w.valid    := write_state === w_data_write

// write responds channel signals
  out.b.ready    := true.B



  imem.inst_ready := read_state === r_inst_done
  dmem.data_ready := read_state === r_data_done || (w_state === w_data_done && data_ok)













}