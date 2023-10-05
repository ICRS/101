################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USBPD/usbpd_dpm_core.c \
../USBPD/usbpd_dpm_user.c \
../USBPD/usbpd_pwr_if.c \
../USBPD/usbpd_pwr_user.c 

OBJS += \
./USBPD/usbpd_dpm_core.o \
./USBPD/usbpd_dpm_user.o \
./USBPD/usbpd_pwr_if.o \
./USBPD/usbpd_pwr_user.o 

C_DEPS += \
./USBPD/usbpd_dpm_core.d \
./USBPD/usbpd_dpm_user.d \
./USBPD/usbpd_pwr_if.d \
./USBPD/usbpd_pwr_user.d 


# Each subdirectory must supply rules for building sources it contributes
USBPD/%.o USBPD/%.su USBPD/%.cyclo: ../USBPD/%.c USBPD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32G431xx -DTX_INCLUDE_USER_DEFINE_FILE -DUX_INCLUDE_USER_DEFINE_FILE -DUSBPD_PORT_COUNT=1 -D_SNK -DUSBPDCORE_LIB_PD3_CONFIG_MINSNK -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../AZURE_RTOS/App -I../USBX/App -I../USBX/Target -I../Middlewares/ST/usbx/common/core/inc/ -I../Middlewares/ST/usbx/ports/generic/inc/ -I../Middlewares/ST/usbx/common/usbx_device_classes/inc/ -I../Middlewares/ST/usbx/common/usbx_stm32_device_controllers/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../USBPD/App -I../USBPD -I../Middlewares/ST/STM32_USBPD_Library/Core/inc -I../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USBPD

clean-USBPD:
	-$(RM) ./USBPD/usbpd_dpm_core.cyclo ./USBPD/usbpd_dpm_core.d ./USBPD/usbpd_dpm_core.o ./USBPD/usbpd_dpm_core.su ./USBPD/usbpd_dpm_user.cyclo ./USBPD/usbpd_dpm_user.d ./USBPD/usbpd_dpm_user.o ./USBPD/usbpd_dpm_user.su ./USBPD/usbpd_pwr_if.cyclo ./USBPD/usbpd_pwr_if.d ./USBPD/usbpd_pwr_if.o ./USBPD/usbpd_pwr_if.su ./USBPD/usbpd_pwr_user.cyclo ./USBPD/usbpd_pwr_user.d ./USBPD/usbpd_pwr_user.o ./USBPD/usbpd_pwr_user.su

.PHONY: clean-USBPD

