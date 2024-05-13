#!/bin/bash


# cd ../.. || exit
# Source the environment script. 注意：这一行在脚本中不会像直接在shell中那样工作。
current_directory=$(pwd)
echo "当前目录是：$current_directory"
source "$current_directory/../../../setup-env.sh"

# Set DV_SIMULATORS environment variable
export DV_SIMULATORS=veri-testharness,spike

# Change directory to gcc-toolchain-builder
cd "$current_directory/../../../util/gcc-toolchain-builder" || exit

# Execute the get-toolchain script
sh get-toolchain.sh

# Set RISCV environment variable
# export RISCV=~/RISCV/riscv_tools/riscv-gnu-toolchain

# Build the toolchain
sh build-toolchain.sh $RISCV

# Change directory as per the final step
cd "$current_directory/../../../verif/sim/test" || exit

