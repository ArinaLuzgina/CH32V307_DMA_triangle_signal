################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/015"}
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/USB_Device/subdir.mk
-include User/UART/subdir.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
SimulateCDC.hex \

SECONDARY_LIST += \
SimulateCDC.lst \

SECONDARY_SIZE += \
SimulateCDC.siz \


# All Target
all: SimulateCDC.elf secondary-outputs

# Tool invocations
SimulateCDC.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "Z:\work\CH32\EVT\EXAM\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"SimulateCDC.map" --specs=nano.specs --specs=nosys.specs -o "SimulateCDC.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
SimulateCDC.hex: SimulateCDC.elf
	@	riscv-none-embed-objcopy -O ihex "SimulateCDC.elf"  "SimulateCDC.hex"
	@	@
SimulateCDC.lst: SimulateCDC.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "SimulateCDC.elf" > "SimulateCDC.lst"
	@	@
SimulateCDC.siz: SimulateCDC.elf
	@	riscv-none-embed-size --format=berkeley "SimulateCDC.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) SimulateCDC.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
