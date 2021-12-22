# oscpu-framework

该项目基于一生一芯框架进行搭建，采用chisel进行risc-V CPU的设计。

在新的开发环境下开发，首先需要遵循下面的流程进行libraries中开发工具的搭建，可以完成bin文件下所有的测试样例。

后续如果需要修改libraries中的内容会在本文件中提示，不进行上传，需要手动修改！

# 开发环境

操作系统：[Linux Ubuntu v20.04](https://ubuntu.com/download/desktop)  

开发软件：[verilator](https://verilator.org/guide/latest/)、[gtkwave](http://gtkwave.sourceforge.net/)、[mill](https://github.com/com-lihaoyi/mil)

使用下面的命令一键安装搭建开发环境。

```shell
# 选择使用verilog语言开发
wget https://gitee.com/oscpu/oscpu-env-setup/raw/master/oscpu-env-setup.sh && chmod +x oscpu-env-setup.sh && ./oscpu-env-setup.sh -g && rm oscpu-env-setup.sh
# 选择使用chisel语言开发
wget https://gitee.com/oscpu/oscpu-env-setup/raw/master/oscpu-env-setup.sh && chmod +x oscpu-env-setup.sh && ./oscpu-env-setup.sh -g -c && rm oscpu-env-setup.sh
```





# 例程

`projects`目录用于存放工程文件夹，`projects`目录下的几个例程可用于了解如何基于`verilator`和`香山difftest框架`来开发仿真CPU。你可以在该目录下创建自己的工程。工程目录结构如下：

```shell
.
├── build.sc		# 存放chisel编译信息的文件，选择chisel语言时需要该文件
├── csrc			# 存放仿真c++源码的文件夹，接入香山difftest框架时不需要该文件夹
├── src				# 存放chisel源码的文件夹，选择chisel语言时需要该文件夹
└── vsrc			# 存放verilog源码的文件夹，选择verilog语言时需要该文件夹
```

该项目提供了脚本`build.sh`用于自动化编译、仿真和查看波形。下面是`build.sh`的参数说明，也可在oscpu目录下使用`./build.sh -h`命令查看帮助。

```shell
-e 指定一个例程作为工程目录，如果不指定，将使用"cpu"目录作为工程目录
-b 编译工程，编译后会在工程目录下生成"build"(difftest)或"build_test"子目录，里面存放编译后生成的文件
-t 指定verilog顶层文件名，如果不指定，将使用"top.v" 或"SimTop.v"(difftest)作为顶层文件名，该选项在接入difftest时无效
-s 运行仿真程序，即"build/emu"程序，运行时工作目录为"build"(difftest)或"build_test"子目录
-a 传入仿真程序的参数，比如：-a "1 2 3 ......"，多个参数需要使用双引号
-f 传入c++编译器的参数，比如：-f "-DGLOBAL_DEFINE=1 -ggdb3"，多个参数需要使用双引号，该选项在接入difftest时无效
-l 传入c++链接器的参数，比如：-l "-ldl -lm"，多个参数需要使用双引号，该选项在接入difftest时无效
-g 使用gdb调试仿真程序，该选项在接入difftest时无效
-w 使用gtkwave打开工作目录下修改时间最新的.vcd波形文件
-c 删除工程目录下编译生成的"build"文件夹
-d 接入香山difftest框架
-m 传入difftest框架makefile的参数，比如：-m "EMU_TRACE=1 EMU_THREADS=4"，多个参数需要使用双引号
-r 使用给定的测试用例集合进行回归测试，比如：-r "case1 case2"，该选项要求工程能够接入difftest
```

## 编译和仿真 

### counter

`examples/counter`目录下存放了4位计数器的例程源码。可以使用下面的命令编译和仿真。

```shell
./build.sh -e counter -b -s
```

如果`verilator`安装正确，你会看到下面的输出

```shell
Simulating...
Enabling waves ...
Enter the test cycle:
```


### chisel_cpu_diff

`projects/cpu_diff`目录下存放了接入`香山difftest框架`的`chisel`版本单周期`RISC-V` CPU例程源码，源码实现了`RV64I`指令`addi`。可以使用下面的命令编译和仿真。

```shell
./build.sh -e chisel_cpu_diff -d -s -a "-i inst_diff.bin" -m "EMU_TRACE=1" -b



### cpu_axi_diff

`projects/cpu_diff`目录下存放了通过`AXI总线`接入`香山difftest框架`的`verilog`版本单周期`RISC-V`CPU例程源码，源码实现了`RV64I`指令`addi`和`AXI总线`读逻辑。可以使用下面的命令编译和仿真。

```shell
./build.sh -e cpu_axi_diff -d -s -a "-i inst_diff.bin --wave-path=wave.vcd --dump-wave -b 0" -m "EMU_TRACE=1 WITH_DRAMSIM3=1" -b
```

```

### soc

`projects/soc`目录下存放了接入`ysyxSoC`的示例程序。源码中只有一个占位符，能够通过编译但不能正常运行。

要使用该框架，需要先按照 [ysyx SoC 的 readme](https://github.com/osCPU/ysyxsoc) 完成 `命名规范` 和 `CPU 内部修改` 两个步骤，得到 `ysyx_21xxxx.v`，随后放入 `projects/soc/vsrc/` 中。此后，执行下面的命令将会根据 `myinfo.txt` 中的 ID 自动 对代码进行规范检查、集成到 `soc` 并运行指定的程序。`ysyxSoC` 中附带的例程会被自动软连接至 `build` 目录下，仿真时可以快速使用。

```bash
./build.sh -e soc -b -s -y -v '--timescale "1ns/1ns" -Wno-fatal --trace' -a "-i ysyxSoC/flash/hello-flash.bin --dump-wave"
```

由于无法直接使用 `difftest` 框架，暂时只支持少量参数。
```bash
$ ./emu -h
Usage: ./emu [OPTION...]

  -i, --image=FILE           run with this image file
      --dump-wave            dump waveform when log is enabled
  -b, --log-begin=NUM        display log from NUM th cycle
  -e, --log-end=NUM          stop display log at NUM th cycle
  -h, --help                 print program help info
```

## 查看波形

在`oscpu`目录下使用命令可以通过`gtkwave`查看输出的波形，其中`xxx`表示例程名。

```shell
# 未接入difftest
./build.sh -e xxx -w
# 接入difftest
./build.sh -e xxx -d -w
```

# 测试用例

`bin`目录下存放了`一生一芯`[基础任务](https://oscpu.github.io/ysyx/wiki/tasks/basic.html)需要使用的测试用例，具体说明详见[一生一芯基础任务测试用例说明](./bin/README.md)。

# 回归测试

一键回归测试用于自动化测试给定的测试用例集合，可以通过以下命令对CPU进行一键回归测试。该命令会将`bin`目录下指定子目录中所有`.bin`文件作为参数来调用接入了`香山difftest框架`的仿真程序，其中`xxx`表示例程名。

```shell
# 未接入AXI总线的情况下使用"non-output/cpu-tests"和"non-output/riscv-tests"目录下的bin进行回归测试
./build.sh -e xxx -b -r "non-output/cpu-tests non-output/riscv-tests"
# 接入AXI总线的情况下使用"non-output/cpu-tests"和"non-output/riscv-tests"目录下的bin进行回归测试
./build.sh -e xxx -b -r "non-output/cpu-tests non-output/riscv-tests" -m "WITH_DRAMSIM3=1"
```