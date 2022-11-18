################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Mid/pos/pos.c 

OBJS += \
./Mid/pos/pos.o 

C_DEPS += \
./Mid/pos/pos.d 


# Each subdirectory must supply rules for building sources it contributes
Mid/pos/%.o Mid/pos/%.su: ../Mid/pos/%.c Mid/pos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x6 -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I../Mid/motor -I../Mid/PI -I../Mid/pos -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Mid-2f-pos

clean-Mid-2f-pos:
	-$(RM) ./Mid/pos/pos.d ./Mid/pos/pos.o ./Mid/pos/pos.su

.PHONY: clean-Mid-2f-pos

