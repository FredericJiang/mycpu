import chisel3._
import chisel3.util._
import Constant._


/*
class Inst_IO extends Bundle{
val inst_ready  = Input(Bool())
val inst_read   = Input(UInt()
val inst_req    = Output(Bool())
val inst_addr   = Output(UInt(AXI_Addr_Width.W))
}
*/



class Icache extends Module{
  val io = IO(new Bundle{
    val core_inst = Flipped(new Core_Inst)
    val axi_inst  = new AXI_Inst
  })

  val core = io.core_inst
  val axi  = io.axi_inst

  val CACHE_DEPTH = 64

// Icache Tag Block
  val tag     = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(0.U(22.W))))
  val offset  = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(0.U(4.W))))
  val valid   = RegInit(VecInit(Seq.fill(CACHE_DEPTH)(false.B)))



  val idle :: search :: fetch :: update :: Nil = Enum(4)
  val state  = RegInit(idle)

// Icache Intermediate signal 
  val req_tag    = Wire(UInt(22.W))
  val req_index  = Wire(UInt(6.W))
  val req_offset = Wire(UInt(4.W))


  val req_reg_addr = RegInit(0.U(32.W))
  val valid_addr = Mux(state === search, core.inst_addr, req_reg_addr)

  req_tag     := valid_addr(31,10)
  req_index   := valid_addr(9, 4)
  req_offset  := valid_addr( 3, 0)

// state machine signal

  
  val cache_hit       = Wire(Bool())
  val cache_reg_fill  = RegInit(false.B)
  val cache_data_out  = Wire(UInt(128.W))

  cache_hit := (tag(req_index) === req_tag) && valid(req_index)

// Icache IO to AXI and Core sinal

  val inst_req2axi     = WireInit(false.B)
  val inst_addr2axi    = WireInit(0.U(32.W))

  val inst_ready2core  = RegNext(state === search && cache_hit)  //cache 读数据延后一排
  val inst_read2core   = MuxLookup(req_offset(3, 2), 0.U, Array(
                      "b00".U -> cache_data_out( 31, 0),
                      "b01".U -> cache_data_out( 63,32),
                      "b10".U -> cache_data_out( 95,64),
                      "b11".U -> cache_data_out(127,96),
                    ))


// Icache Data Block sinal
  val icache_wdata = RegInit(0.U(128.W))
  val icache_cen   = false.B
  val icache_wen   = RegInit(false.B)
  

  switch(state){
    is(idle){
      when(core.inst_req){
        state := search
      }
    }

    is(search){
      when(cache_hit){
      req_reg_addr := core.inst_addr
      state := idle
    }
    .elsewhen(!cache_hit){
      req_reg_addr := core.inst_addr
      state := fetch
    }
  
}

    is(fetch){
// 在fetch级需要进行两次判断，由于cachemiss，第一次判断对AXI发出读请求，第二次判断AXI数据是否返回
    when(cache_reg_fill === false.B){
// cache_reg_fill 初始值为false，第一次需要从axi load数据
      state  := fetch
      inst_req2axi  := true.B
      inst_addr2axi := Cat(req_reg_addr(31,4),0.U,0.U,0.U,0.U) 
     }
    .otherwise{
      state := update
     }

    when (axi.inst_ready) {
// AXI 取回数据后cache_reg_fill 为 true, 跳出当前状态，并写入icache data block
      cache_reg_fill := true.B
      inst_req2axi   := false.B

      icache_wen     := true.B
      icache_wdata   := axi.inst_read      
     }
    }
    
    is(update){
// 修改icache tag block的信息
      cache_reg_fill    := false.B

      valid(req_index)  := true.B
      tag(req_index)    := req_tag
      offset(req_index) := req_offset
      
      icache_wen        := false.B     
      state             := search    

    }
}




// Icache connect to AXI and Core
  core.inst_read  := inst_read2core
  core.inst_ready := inst_ready2core
//core.inst_req    
//core.inst_addr   

  axi.inst_req    := inst_req2axi
  axi.inst_addr   := inst_addr2axi

//axi.inst_ready axi.inst_read 在fetch级进行访问


// Icache Data Block
  val icache = Module(new S011HD1P_X32Y2D128)
  icache.io.CLK  := clock
  icache.io.CEN  := icache_cen
  icache.io.WEN  := ~icache_wen
  icache.io.A    := req_index
  icache.io.D    := icache_wdata
  cache_data_out := icache.io.Q


}



class S011HD1P_X32Y2D128 extends BlackBox with HasBlackBoxResource {
  val io = IO(new Bundle {
    val Q   = Output(UInt(128.W))
    val CLK = Input(Clock())
    val CEN = Input(Bool())
    val WEN = Input(Bool())
    val A   = Input(UInt(6.W))
    val D   = Input(UInt(128.W))
  })
  addResource("/vsrc/S011HD1P_X32Y2D128.v")
}