/*
import chisel3._
import chisel3.util._
import Constant._

class Dcache extends Module{
  val io = IO(new Bundle{
    val core_data = Flipped(new Core_Data)
    val axi_data  = new AXI_Data
  })
/*
class DATAIO extends Bundle with AxiParameters {
  val data_valid  = Output(Bool())
  val data_ready  = Input(Bool())
  val data_req    = Output(Bool())
  val data_addr   = Output(UInt(AxiAddrWidth.W)) 
  val data_size   = Output(UInt(2.W)) 
  val data_strb   = Output(UInt(8.W)) 

  val data_read   = Input(UInt(128.W))
  val data_write  = Output(UInt(128.W)) 
}
*/

  val core = io.core_data
  val axi  = io.axi_data
  val CACHE_DEPTH = 64.U


// Dcache Tag Block
  val tag     = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(0.U(22.W))))
  val offset  = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(0.U(4.W))))
  val valid   = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(false.B)))
  val dirty   = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(false.B)))



// Dcache Intermediate signal 
  val req_tag    = Wire(UInt(22.W))
  val req_index  = Wire(UInt(6.W))
  val req_offset = Wire(UInt(4.W))
  val req_addr   = WireInit(0.U(32.W))

  req_tag     := req_addr(31,10)
  req_index   := req_addr(9, 4)
  req_offset  := req_addr(3, 0)


  val cache_hit     = Wire(Bool())
  val cache_dirty   = Wire(Bool())










  val dcache = Module(new S011HD1P_X32Y2D128_BW)
  dcache.io.CLK    := clock
  dcache.io.CEN    := true.B
  dcache.io.WEN    := dcache_wen
  dcache.io.BWEN   := dcache_strb
  dcache.io.A      := dcache_index
  dcache.io.D      := dcache_wdata
  cache_data_out   := dcache.io.Q


}



class S011HD1P_X32Y2D128_BW extends BlackBox with HasBlackBoxResource {
  val io = IO(new Bundle {
    val Q       = Output(UInt(128.W))
    val CLK     = Input(Clock())
    val CEN     = Input(Bool())
    val WEN     = Input(Bool())
    val BWEN    = Input(UInt(128.W))
    val A       = Input(UInt(6.W))
    val D       = Input(UInt(128.W))
  })
  addResource("/vsrc/S011HD1P_X32Y2D128_BW.v")
}
*/