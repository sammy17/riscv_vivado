@echo off
set xv_path=F:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim Test_RISCV_PROCESSOR_behav -key {Behavioral:sim_1:Functional:Test_RISCV_PROCESSOR} -tclbatch Test_RISCV_PROCESSOR.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
