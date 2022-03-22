################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := "C:\Users\Mihtop\Desktop\ECS\ECS\ide\\\utils\\rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include bsp/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# 所有目标
all: 201124.out

# 工具调用
201124.out: $(OBJS) $(LDS_SRCS)
	@echo '正在构建目标： $@'
	@echo '正在调用： Linker'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\binutils\eld.exe"  "C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib\crt0_c.o" $(OBJS) -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos" -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib" -Map xxxmap --cref --no-whole-archive --start-group -lc_c -lm_c -lepos_c  --end-group -T$(LDS_SRCS) -o "201124.out"
	@echo '已结束构建目标： $@'
	@echo ' '

# 其他目标
clean:
	-$(RM) $(OBJS)$(ASM_DEPS)$(C_DEPS)$(EXECUTABLES)$(S_UPPER_DEPS) 201124.out
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
