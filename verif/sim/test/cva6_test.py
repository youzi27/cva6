import subprocess
import colorama
import sys
from colorama import Fore
from concurrent.futures import ProcessPoolExecutor
from concurrent.futures import ProcessPoolExecutor, as_completed
# 初始化colorama
colorama.init(autoreset=True)

# 基础命令模板，其中包含种子数字的占位符
command_template = "python3 /home/server/RISCV/cva6/verif/sim/cva6.py --target cv64a6_imafdc_sv39 --iss=$DV_SIMULATORS --iss_yaml=/home/server/RISCV/cva6/verif/sim/cva6.yaml --asm_tests /home/server/RISCV/cva6/verif/sim/gzh/seeds/cva6-divefuzz/cva6-1/new_seeds_{seed}_.S -o=/home/server/RISCV/cva6/verif/sim/out/seed_{seed} --linker=/home/server/RISCV/cva6/verif/tests/custom/common/test.ld --output=/home/server/RISCV/cva6/verif/sim/out/seed_{seed} --gcc_opts=\"-static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -g /home/server/RISCV/cva6/verif/tests/custom/common/syscalls.c /home/server/RISCV/cva6/verif/tests/custom/common/crt.S -lgcc -I/home/server/RISCV/cva6/verif/tests/custom/env -I/home/server/RISCV/cva6/verif/tests/custom/common\""



#TODO 多核似乎存在问题  原因未知，猜测：vcs与spike比较混乱，未标识id



# def execute_command(seed):
#     command = command_template.format(seed=seed)
#     result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
#     #print(result.stdout)
#     if "Mismatch" in result.stdout or "mismatch" in result.stdout:
#         return Fore.RED + f"Mismatch 发现，当前seed编号是: {seed}"
#     elif "ERROR" in result.stdout or "error" in result.stdout or "Error" in result.stdout:
#         return Fore.RED + f"ERROR 发现，当前seed编号是: {seed}"
#     else:
#         return f"已成功执行: {seed}"

# # 使用ProcessPoolExecutor并行执行命令
# num_executions = 2
# with ProcessPoolExecutor() as executor:
#     # 提交所有任务并立即返回Future对象
#     futures = [executor.submit(execute_command, seed) for seed in range(num_executions)]

#     # as_completed方法返回一个迭代器，它会在任何Future完成时产生Future
#     for future in as_completed(futures):
#         # 获取该Future的结果并打印
#         print(future.result())

# 打印结果
# for result in results:
#     print(result)

# 需要执行命令的次数
num_executions = 2000
log_file = "log.txt" 
with open(log_file, "w") as file:
    for seed in range(num_executions):
        # 使用当前的种子数字格式化命令字符串
        command = command_template.format(seed=seed)
        
        # 执行命令并捕获输出
        result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
        
        # 将输出写入文件
        file.write(result.stdout)

        # 检查输出中是否包含"Mismatch"
        if "Mismatch" in result.stdout or "mismatch" in result.stdout:
            print(Fore.RED + f"Mismatch 发现，当前seed编号是: {seed}")
            file.write(f"Mismatch 发现，当前seed编号是: {seed}\n")
            #break  # 停止执行
        elif "ERROR" in result.stdout or "error" in result.stdout or "Error" in result.stdout:
            print(Fore.RED + f"ERROR 发现，当前seed编号是: {seed}")
            file.write(f"ERROR 发现，当前seed编号是: {seed}\n")
            #break  # 停止执行
        # 可选：打印命令用于调试或确认
        else:
            print(f"已成功执行: {seed}")
            file.write(f"已成功执行: {seed}\n")
# #print(result.stdout)
#python3 /home/server/RISCV/cva6/verif/sim/cva6.py --target cv64a6_imafdc_sv39 --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml --asm_tests /home/server/RISCV/cva6/verif/sim/bug_report/test_pmp.S -o=/home/server/RISCV/cva6/verif/sim/pmp_issue --linker=../tests/custom/common/test.ld  --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -g ../tests/custom/common/syscalls.c ../tests/custom/common/crt.S -lgcc -I../tests/custom/env -I../tests/custom/common"

#-o=/home/server/RISCV/cva6/verif/sim/out/seed_0
            #python3 /home/server/RISCV/cva6/verif/sim/cva6.py --target cv64a6_imafdc_sv39 --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml --asm_tests /home/server/RISCV/cva6/verif/sim/gzh/bug_report/pmp_issue.S -o=/home/server/RISCV/cva6/verif/sim/out/seed_0 --linker=../tests/custom/common/test.ld  --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -g ../tests/custom/common/syscalls.c ../tests/custom/common/crt.S -lgcc -I../tests/custom/env -I../tests/custom/common"
#python3 /home/server/RISCV/cva6/verif/sim/cva6.py --target cv64a6_imafdc_sv39 --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml --asm_tests /home/server/RISCV/cva6/verif/sim/gzh/seeds/cva6-divefuzz/cva6_1/new_seeds_0_.S -o=/home/server/RISCV/cva6/verif/sim/out/seed_0 --linker=../tests/custom/common/test.ld  --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -g ../tests/custom/common/syscalls.c ../tests/custom/common/crt.S -lgcc -I../tests/custom/env -I../tests/custom/common"