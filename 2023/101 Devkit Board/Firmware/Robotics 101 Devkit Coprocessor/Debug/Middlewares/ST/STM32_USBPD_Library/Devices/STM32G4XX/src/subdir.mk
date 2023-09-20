################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.c \
../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.c 

OBJS += \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.o \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.o 

C_DEPS += \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.d \
./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/%.o Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/%.su Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/%.cyclo: ../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/%.c Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32G431xx -DTX_INCLUDE_USER_DEFINE_FILE -DUX_INCLUDE_USER_DEFINE_FILE -DUSBPD_PORT_COUNT=1 -D_SNK -DUSBPDCORE_LIB_PD3_CONFIG_MINSNK -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../AZURE_RTOS/App -I../USBX/App -I../USBX/Target -I../Middlewares/ST/usbx/common/core/inc/ -I../Middlewares/ST/usbx/ports/generic/inc/ -I../Middlewares/ST/usbx/common/usbx_device_classes/inc/ -I../Middlewares/ST/usbx/common/usbx_stm32_device_controllers/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../USBPD/App -I../USBPD -I../Middlewares/ST/STM32_USBPD_Library/Core/inc -I../Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USBPD_Library-2f-Devices-2f-STM32G4XX-2f-src

clean-Middlewares-2f-ST-2f-STM32_USBPD_Library-2f-Devices-2f-STM32G4XX-2f-src:
	-$(RM) ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_cad_hw_if.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_hw_if_it.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_phy_hw_if.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_pwr_hw_if.su ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.cyclo ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.d ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.o ./Middlewares/ST/STM32_USBPD_Library/Devices/STM32G4XX/src/usbpd_timersserver.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USBPD_Library-2f-Devices-2f-STM32G4XX-2f-src

