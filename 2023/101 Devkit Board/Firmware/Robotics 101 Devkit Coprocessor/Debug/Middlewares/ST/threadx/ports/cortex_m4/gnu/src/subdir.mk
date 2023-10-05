################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_restore.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_save.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_control.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_disable.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_restore.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_schedule.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_stack_build.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_system_return.S \
../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_timer_interrupt.S 

OBJS += \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_restore.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_save.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_control.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_disable.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_restore.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_schedule.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_stack_build.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_system_return.o \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_timer_interrupt.o 

S_UPPER_DEPS += \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_restore.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_save.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_control.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_disable.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_restore.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_schedule.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_stack_build.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_system_return.d \
./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_timer_interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/threadx/ports/cortex_m4/gnu/src/%.o: ../Middlewares/ST/threadx/ports/cortex_m4/gnu/src/%.S Middlewares/ST/threadx/ports/cortex_m4/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-ST-2f-threadx-2f-ports-2f-cortex_m4-2f-gnu-2f-src

clean-Middlewares-2f-ST-2f-threadx-2f-ports-2f-cortex_m4-2f-gnu-2f-src:
	-$(RM) ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_restore.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_restore.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_save.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_context_save.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_control.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_control.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_disable.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_disable.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_restore.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_interrupt_restore.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_schedule.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_schedule.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_stack_build.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_stack_build.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_system_return.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_thread_system_return.o ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_timer_interrupt.d ./Middlewares/ST/threadx/ports/cortex_m4/gnu/src/tx_timer_interrupt.o

.PHONY: clean-Middlewares-2f-ST-2f-threadx-2f-ports-2f-cortex_m4-2f-gnu-2f-src

