#
# Project configuration.
#
set(${project_name}_VERSION_MAJOR 1)
set(${project_name}_VERSION_MINOR 0)
set(${project_name}_VERSION_PATCH 0)

# Sources for the project.
set(${project_name}_SOURCES 
	${${project_name}_DIR}/Core/Src/main.c
	${${project_name}_DIR}/Core/Src/stm32f2xx_hal_msp.c
	${${project_name}_DIR}/Core/Src/stm32f2xx_it.c
	${${project_name}_DIR}/Core/Src/system_stm32f2xx.c
	${${project_name}_DIR}/Core/Src/syscalls.c
	${${project_name}_DIR}/Core/Src/sysmem.c
)

# Include directories for the project.
set(${project_name}_INCDIR
	${${project_name}_DIR}/Core/Inc
)

set(${project_name}_nucleo_f207zg_LINKER_SCRIPT ${${project_name}_DIR}/STM32F207ZGTX_FLASH.ld)
message(STATUS "Linker script: ${${project_name}_nucleo_f207zg_LINKER_SCRIPT}")
set(${project_name}_nucleo_f207zg_STARTUP_SRC ${${project_name}_DIR}/Core/Startup/startup_stm32f207zgtx.s)
message(STATUS "Startup code: ${${project_name}_nucleo_f207zg_STARTUP_SRC}")
