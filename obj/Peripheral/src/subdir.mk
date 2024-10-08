################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/015"}
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_adc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_bkp.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_can.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_crc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dac.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dbgmcu.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dma.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dvp.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_eth.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_exti.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_flash.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_fsmc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_gpio.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_i2c.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_iwdg.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_misc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_opa.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_pwr.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rcc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rng.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rtc.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_sdio.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_spi.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_tim.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_usart.c \
Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_wwdg.c 

OBJS += \
./Peripheral/src/ch32v30x_adc.o \
./Peripheral/src/ch32v30x_bkp.o \
./Peripheral/src/ch32v30x_can.o \
./Peripheral/src/ch32v30x_crc.o \
./Peripheral/src/ch32v30x_dac.o \
./Peripheral/src/ch32v30x_dbgmcu.o \
./Peripheral/src/ch32v30x_dma.o \
./Peripheral/src/ch32v30x_dvp.o \
./Peripheral/src/ch32v30x_eth.o \
./Peripheral/src/ch32v30x_exti.o \
./Peripheral/src/ch32v30x_flash.o \
./Peripheral/src/ch32v30x_fsmc.o \
./Peripheral/src/ch32v30x_gpio.o \
./Peripheral/src/ch32v30x_i2c.o \
./Peripheral/src/ch32v30x_iwdg.o \
./Peripheral/src/ch32v30x_misc.o \
./Peripheral/src/ch32v30x_opa.o \
./Peripheral/src/ch32v30x_pwr.o \
./Peripheral/src/ch32v30x_rcc.o \
./Peripheral/src/ch32v30x_rng.o \
./Peripheral/src/ch32v30x_rtc.o \
./Peripheral/src/ch32v30x_sdio.o \
./Peripheral/src/ch32v30x_spi.o \
./Peripheral/src/ch32v30x_tim.o \
./Peripheral/src/ch32v30x_usart.o \
./Peripheral/src/ch32v30x_wwdg.o 

C_DEPS += \
./Peripheral/src/ch32v30x_adc.d \
./Peripheral/src/ch32v30x_bkp.d \
./Peripheral/src/ch32v30x_can.d \
./Peripheral/src/ch32v30x_crc.d \
./Peripheral/src/ch32v30x_dac.d \
./Peripheral/src/ch32v30x_dbgmcu.d \
./Peripheral/src/ch32v30x_dma.d \
./Peripheral/src/ch32v30x_dvp.d \
./Peripheral/src/ch32v30x_eth.d \
./Peripheral/src/ch32v30x_exti.d \
./Peripheral/src/ch32v30x_flash.d \
./Peripheral/src/ch32v30x_fsmc.d \
./Peripheral/src/ch32v30x_gpio.d \
./Peripheral/src/ch32v30x_i2c.d \
./Peripheral/src/ch32v30x_iwdg.d \
./Peripheral/src/ch32v30x_misc.d \
./Peripheral/src/ch32v30x_opa.d \
./Peripheral/src/ch32v30x_pwr.d \
./Peripheral/src/ch32v30x_rcc.d \
./Peripheral/src/ch32v30x_rng.d \
./Peripheral/src/ch32v30x_rtc.d \
./Peripheral/src/ch32v30x_sdio.d \
./Peripheral/src/ch32v30x_spi.d \
./Peripheral/src/ch32v30x_tim.d \
./Peripheral/src/ch32v30x_usart.d \
./Peripheral/src/ch32v30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/ch32v30x_adc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_bkp.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_bkp.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_can.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_can.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_crc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_crc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dac.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dac.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dbgmcu.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dma.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_dvp.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_dvp.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_eth.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_eth.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_exti.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_flash.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_fsmc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_fsmc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_gpio.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_i2c.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_iwdg.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_misc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_misc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_opa.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_opa.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_pwr.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rcc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rng.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rng.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_rtc.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_rtc.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_sdio.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_sdio.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_spi.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_tim.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_usart.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v30x_wwdg.o: Z:/work/CH32/EVT/EXAM/SRC/Peripheral/src/ch32v30x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\UART" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User\USB_Device" -I"Z:\work\CH32\EVT\EXAM\SRC\Debug" -I"Z:\work\CH32\EVT\EXAM\SRC\Core" -I"Z:\work\CH32\EVT\EXAM\USB\USBHS\DEVICE\SimulateCDC\User" -I"Z:\work\CH32\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

