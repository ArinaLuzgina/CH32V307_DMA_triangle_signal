################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/015"}
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
Z:/work/CH32/EVT/EXAM/SRC/Core/core_riscv.c 

OBJS += \
./Core/core_riscv.o 

C_DEPS += \
./Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
Core/core_riscv.o: Z:/work/CH32/EVT/EXAM/SRC/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

