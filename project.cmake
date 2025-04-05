#
# Project configuration.
#

################################################################################
# MIGRATION GUIDE: STM Fxxx Board Support
################################################################################
# To fully support the STM32Fx series (like nucleo_f446ze), follow these steps:
#
# 1. Create the following Fx-specific files by adapting from their F2 counterparts:
#    - Core/Src/stm32f4xx_hal_msp.c (adapted from stm32f2xx_hal_msp.c)
#    - Core/Src/stm32f4xx_it.c (adapted from stm32f2xx_it.c)
#    - Core/Src/system_stm32f4xx.c (adapted from system_stm32f2xx.c)
#
# 2. Update header files in Core/Inc if necessary to support F4 series
#
# The project.cmake file now supports dynamic selection of sources based on the
# board being used, but these source files need to be created.
################################################################################

set(${project_name}_VERSION_MAJOR 1)
set(${project_name}_VERSION_MINOR 0)
set(${project_name}_VERSION_PATCH 0)

# Common sources for the project.
set(${project_name}_SOURCES
	${${project_name}_DIR}/Core/Src/main.c
	${${project_name}_DIR}/Core/Src/syscalls.c
	${${project_name}_DIR}/Core/Src/sysmem.c
)

# Board-specific sources at CLASS level (STM32)
set(${project_name}_STM32_SOURCES)

# STM32F2 subclass specific sources - tested with nucleo_f207zg
set(${project_name}_STM32F2_SOURCES
	${${project_name}_DIR}/Core/Src/stm32f2xx_hal_msp.c
	${${project_name}_DIR}/Core/Src/stm32f2xx_it.c
	${${project_name}_DIR}/Core/Src/system_stm32f2xx.c
)

# Family and model specific sources for F2 (empty, using F2 sources above)
set(${project_name}_STM32F207_SOURCES)
set(${project_name}_STM32F207ZG_SOURCES)

# STM32F4 subclass specific sources - tested with nucleo_f446ze
set(${project_name}_STM32F4_SOURCES
 	${${project_name}_DIR}/Core/Src/stm32f4xx_hal_msp.c
 	${${project_name}_DIR}/Core/Src/stm32f4xx_it.c
 	${${project_name}_DIR}/Core/Src/system_stm32f4xx.c
)

# Family and model specific sources for F4
set(${project_name}_STM32F446_SOURCES)
set(${project_name}_STM32F446ZE_SOURCES)

# Include directories for the project.
set(${project_name}_INCDIR
	${${project_name}_DIR}/Core/Inc
)

# Board-specific include directories
set(${project_name}_STM32_INCDIR)
set(${project_name}_STM32F2_INCDIR)
set(${project_name}_STM32F207_INCDIR)
set(${project_name}_STM32F207ZG_INCDIR)

set(${project_name}_STM32F4_INCDIR)
set(${project_name}_STM32F446_INCDIR)
set(${project_name}_STM32F446ZE_INCDIR)

# Note: Linker scripts and startup sources are determined automatically based on the board
# configuration in the respective board.cmake files.
