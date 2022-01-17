import chisel3._
import chisel3.util._
import difftest._



class SimTop extends Module {
  val io = IO(new Bundle {
    val logCtrl = new LogCtrlIO
    val perfInfo = new PerfInfoIO
    val uart = new UARTIO

    val memAXI_0 = new AXI_IO
  })

  val core     = Module(new Core)
  val core2axi = Module(new Core2AXI)
  val icache   = Module(new Icache)
  val dcache   = Module(new Dcache)

  core.io.imem <> icache.io.core_inst
  core.io.dmem <> dcache.io.core_data
  
  icache.io.axi_inst <> core2axi.io.imem
  dcache.io.axi_data <> core2axi.io.dmem


  io.memAXI_0.aw <> core2axi.io.axi2ram.aw
  io.memAXI_0.w  <> core2axi.io.axi2ram.w
  io.memAXI_0.b  <> core2axi.io.axi2ram.b
  io.memAXI_0.ar <> core2axi.io.axi2ram.ar
  io.memAXI_0.r  <> core2axi.io.axi2ram.r
/*
  val mem = Module(new Ram2r1w)
  mem.io.imem <> core.io.imem
  mem.io.dmem <> core.io.dmem
*/

  io.uart.out.valid := false.B
  io.uart.out.ch := 0.U
  io.uart.in.valid := false.B

}
