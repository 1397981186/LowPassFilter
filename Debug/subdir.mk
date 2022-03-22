################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../init.c 

LDS_SRCS += \
../linker.lds 

ASM_SRCS += \
../bw_cvabs_f.asm \
../bw_cvfft_f.asm \
../bw_cvifft_f.asm \
../complex_multi.asm \
../div_func.asm \
../get_coreid.asm 

OBJS += \
./bw_cvabs_f.o \
./bw_cvfft_f.o \
./bw_cvifft_f.o \
./complex_multi.o \
./div_func.o \
./get_coreid.o \
./init.o 

ASM_DEPS += \
./bw_cvabs_f.d \
./bw_cvfft_f.d \
./bw_cvifft_f.d \
./complex_multi.d \
./div_func.d \
./get_coreid.d 

C_DEPS += \
./init.d 


# Each subdirectory must supply rules for building sources it contributes
bw_cvabs_f.o: ../bw_cvabs_f.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"bw_cvabs_f.d" -MT"bw_cvabs_f.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

%.out: ./%.o
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Linker'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\binutils\eld.exe"  "C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib\crt0_c.o" "$<" -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos" -L"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\newlib" -Map xxxmap --cref --no-whole-archive --start-group -lc_c -lm_c -lepos_c  --end-group -T../linker.lds -o "$@"
	@echo '�ѽ��������� $<'
	@echo ' '

bw_cvfft_f.o: ../bw_cvfft_f.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"bw_cvfft_f.d" -MT"bw_cvfft_f.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

bw_cvifft_f.o: ../bw_cvifft_f.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"bw_cvifft_f.d" -MT"bw_cvifft_f.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

complex_multi.o: ../complex_multi.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"complex_multi.d" -MT"complex_multi.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

div_func.o: ../div_func.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"div_func.d" -MT"div_func.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

get_coreid.o: ../get_coreid.asm
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"get_coreid.d" -MT"get_coreid.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '

init.o: ../init.c
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� Compiler'
	"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\hxcc\bin\occ" -c -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\epos\score\processor\hx1042" -I"C:\Users\Mihtop\Desktop\ECS\ECS\ide\\..\hxdsp1042\epos\include\bsp\hx1042" -g -O0 -D__epos__ -DSINGLE_TASK_MODE -D__SINGLE_THREAD__ -U__GNUC__ -keep -MMD -MP -MF"init.d" -MT"init.d" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '


