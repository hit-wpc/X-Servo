################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Mid/motor/motor.c 

OBJS += \
./Mid/motor/motor.o 

C_DEPS += \
./Mid/motor/motor.d 


# Each subdirectory must supply rules for building sources it contributes
Mid/motor/%.o Mid/motor/%.su: ../Mid/motor/%.c Mid/motor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x6 -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I../Mid/motor -I../Mid/PI -I../Mid/pos -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Mid-2f-motor

clean-Mid-2f-motor:
	-$(RM) ./Mid/motor/motor.d ./Mid/motor/motor.o ./Mid/motor/motor.su

.PHONY: clean-Mid-2f-motor

