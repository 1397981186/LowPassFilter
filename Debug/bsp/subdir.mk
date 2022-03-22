################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/bspstart.c 

OBJS += \
./bsp/bspstart.o 

C_DEPS += \
./bsp/bspstart.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/bspstart.o: ../bsp/bspstart.c
	@echo '正在构建文件： $<'
	@echo '正在调用： Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"bsp/bspstart.d" -MT"bsp/bspstart.d" -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '

bsp/%.out: ./bsp/%.o
	@echo '正在构建文件： $<'
	@echo '正在调用： Linker'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\binutils\eld.exe"  "C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib\crt0_c.o" "$<" -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos" -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib" -Map xxxmap --cref --no-whole-archive --start-group -lc_c -lm_c -lepos_c  --end-group -T../linker.lds -o "$@"
	@echo '已结束构建： $<'
	@echo ' '


