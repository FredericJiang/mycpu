
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
val data_ready  = Input(Bool())
val data_req_r  = Output(Bool())
val data_req_w  = Output(Bool())
val data_addr_r   = Output(UInt(AXI_Addr_Width.W))//32 bits
val data_addr_w   = Output(UInt(AXI_Addr_Width.W))
val data_strb   = Output(UInt(8.W)) 

  val data_read   = Input(UInt(128.W))
  val data_write  = Output(UInt(128.W)) 
}
*/

  val core = io.core_data
  val axi  = io.axi_data
  val CACHE_DEPTH = 64


  val idle :: lookup :: writeback :: wb_wait :: fetch :: update :: Nil = Enum(6)
  val state = RegInit(idle)

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

  cache_hit     := (tag(req_index) === req_tag) && valid(req_index) && state ===  lookup
  cache_dirty   := (dirty(req_index) && state === lookup)

  val cache_data_out = Wire(UInt(128.W))
  val reg_cache_fill = RegInit(false.B)



// 缓存core请求的信号

  val reg_data_req_r  = RegInit(false.B)
  val reg_data_req_w  = RegInit(false.B)
  val reg_data_addr   = RegInit(0.U(32.W))

  val reg_data_strb   = RegInit(0.U(64.W)) 
  val reg_data_write  = RegInit(0.U(128.W))

  val reg_data_read   = RegInit(0.U(64.W))



 // Interconnect With Core & AXI

  val data_read2core   = WireInit(0.U)
  val data_ready2core  = RegNext((state === lookup && cache_hit)||(state === update))
 
  val data_req_r2axi   = WireInit(false.B)
  val data_req_w2axi   = WireInit(false.B) 
  val data_addr_r2axi  = WireInit(0.U(32.W))
  val data_addr_w2axi  = WireInit(0.U(32.W))
  val data_strb2axi    = WireInit(0.U(8.W))
  val data_write2axi   = WireInit(0.U(64.W))

  data_read2core   := MuxLookup(reg_data_addr(3), 0.U, Array(
                      "b0".U -> cache_data_out( 63, 0),
                      "b1".U -> cache_data_out( 127,64)          
                    ))



// DCache 的连接信号
  val dcache_cen   = WireInit(false.B)
  val dcache_wen   = WireInit(false.B)
  val dcache_strb  = WireInit(0.U(128.W))
  val dcache_index = WireInit(0.U(6.W))
  val dcache_wdata = WireInit(0.U(128.W))




switch (state) {
  is(idle){
  when(core.data_req_r || core.data_req_w){
    
    reg_data_req_r  := core.data_req_r
    reg_data_req_w  := core.data_req_w
     

    
    state := lookup
  }  

}
 
  is(lookup){
  // req_addr,req_index,req_tag 都是wire，只在当前拍有效
  req_addr        := core.data_addr_r 
  reg_data_addr   := core.data_addr_r
  
  reg_data_strb   := core.data_strb
  reg_data_write  := core.data_write 
  when(cache_hit){
   
   //记录写入的数据, 如果是读数据，则这些值为原来的值
    valid(req_index)  := true.B 
    tag(req_index)    := req_tag
    offset(req_index) := req_offset
    
    //reg_data_ready    := true.B   // data ready to core，等一拍dcache才把数据读出来
    dcache_cen        := true.B
    dcache_index      := req_index
    dcache_wen        := reg_data_req_w
    dcache_wdata      := reg_data_write
    dcache_strb       := reg_data_strb
    //core.data_ready    :=  RegNext(state === update && cache_hit )

  
        when (!dirty(req_index)) {
          dirty(req_index) := reg_data_req_w //当是写操作时，dirty===1
        }
    state := idle
  }

  .elsewhen (cache_dirty){ //需要先将dirty数据写回AXI
    state := writeback
    dcache_cen        := true.B
    dcache_index := req_index //  从Dcache中读取dirty data , 下一拍当state = writeback时，dirty_data 从cache_data_out读出
    dcache_wdata := 0.U
    dcache_wen   := false.B
  }
  .otherwise{
    state := fetch
  }

}


  is(writeback){
  req_addr := reg_data_addr
  data_addr_w2axi := Cat(tag(req_index), req_index, offset(req_index))  // dirty data address 不是当前读或者写的地址
  data_write2axi  := Mux(req_offset(3),cache_data_out(127,64) ,cache_data_out(63,0) )// cache dirty时向dcache传入数据，将dcache输出的数据写回AXI
  data_strb2axi   := "b11111111".U
  //data_size2axi   := "b011".U
  data_req_w2axi  := true.B

      when(axi.data_ready){ state := fetch}
     .otherwise           { state:= writeback}

}


  is(fetch){
  
  when(~reg_cache_fill){  // 从AXI读数据

    state := fetch
    data_req_w2axi  := false.B
    data_req_r2axi  := true.B
    data_addr_r2axi := reg_data_addr
    data_addr_w2axi := 0.U
    data_write2axi  := 0.U
    data_strb2axi   := 0.U
    //data_size2axi   := "b011".U
  
  }
  .otherwise{ state := update }
  
  when(axi.data_ready){


   reg_cache_fill := true.B  //跳出当前状态的信号
   // 取后写回dcache
   dcache_cen   := true.B
   dcache_wen   := true.B
   dcache_wdata := axi.data_read //不管需要多少位，把128位全部传进去
   dcache_strb  := "hffffffffffffffffffffffffffffffff".U
   dcache_index := reg_data_addr(9,4)

 
  req_addr := reg_data_addr // 因为是wire类型，因此需要重新赋值
  valid(req_index)  := true.B 
  tag(req_index)    := req_tag
  offset(req_index) := req_offset
  dirty(req_index)  := reg_data_req_w


  }

}
  
  is(update){   //取后读，写
  
  state:= idle
  reg_cache_fill := false.B

  req_addr := reg_data_addr // 因为是wire类型，因此需要重新赋值
  dcache_cen        := true.B
  dcache_index      := reg_data_addr(9,4)
  dcache_wen        := reg_data_req_w
  dcache_wdata      := reg_data_write
  dcache_strb       := reg_data_strb

  //core.data_ready   := RegNext(state === update ) //读需要延后一拍等cache_data_out



}



}


core.data_read   := data_read2core
core.data_ready  := data_ready2core

axi.data_req_r   := data_req_r2axi 
axi.data_req_w   := data_req_w2axi
axi.data_addr_r  := Cat(data_addr_r2axi (31,4),0.U,0.U,0.U,0.U)
axi.data_addr_w  := Cat(data_addr_w2axi (31,4),0.U,0.U,0.U,0.U)
axi.data_strb    := data_strb2axi
axi.data_write   := data_write2axi





  val dcache = Module(new S011HD1P_X32Y2D128_BW)
  dcache.io.CLK   := clock
  dcache.io.CEN   := ~(dcache_wen || dcache_cen)
  dcache.io.WEN   := ~dcache_wen
  dcache.io.BWEN  := ~dcache_strb
  dcache.io.A     := dcache_index
  dcache.io.D     := dcache_wdata
  cache_data_out  := dcache.io.Q


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
