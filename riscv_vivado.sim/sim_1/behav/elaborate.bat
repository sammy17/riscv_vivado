@echo off
set xv_path=F:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 4c4a0a2261e14aa4b44984f313e220bb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Test_RISCV_PROCESSOR_behav xil_defaultlib.Test_RISCV_PROCESSOR xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
