# CMAKE generated file: DO NOT EDIT!
# Generated by "MSYS Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/C/Program Files/JetBrains/CLion 2020.2.3/bin/cmake/win/bin/cmake.exe"

# The command to remove a file.
RM = "/C/Program Files/JetBrains/CLion 2020.2.3/bin/cmake/win/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /C/msys64/home/Andrew/hello_arm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm

# Include any dependencies generated for this target.
include CMakeFiles/hello_arm.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_arm.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_arm.elf.dir/flags.make

CMakeFiles/hello_arm.elf.dir/main.c.obj: CMakeFiles/hello_arm.elf.dir/flags.make
CMakeFiles/hello_arm.elf.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hello_arm.elf.dir/main.c.obj"
	"/C/Program Files (x86)/GNU Arm Embedded Toolchain/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello_arm.elf.dir/main.c.obj   -c /C/msys64/home/Andrew/hello_arm/main.c

CMakeFiles/hello_arm.elf.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello_arm.elf.dir/main.c.i"
	"/C/Program Files (x86)/GNU Arm Embedded Toolchain/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /C/msys64/home/Andrew/hello_arm/main.c > CMakeFiles/hello_arm.elf.dir/main.c.i

CMakeFiles/hello_arm.elf.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello_arm.elf.dir/main.c.s"
	"/C/Program Files (x86)/GNU Arm Embedded Toolchain/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /C/msys64/home/Andrew/hello_arm/main.c -o CMakeFiles/hello_arm.elf.dir/main.c.s

CMakeFiles/hello_arm.elf.dir/startup.s.obj: CMakeFiles/hello_arm.elf.dir/flags.make
CMakeFiles/hello_arm.elf.dir/startup.s.obj: ../startup.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object CMakeFiles/hello_arm.elf.dir/startup.s.obj"
	"/C/Program Files (x86)/GNU Arm Embedded Toolchain/bin/arm-none-eabi-as.exe" $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/hello_arm.elf.dir/startup.s.obj -c /C/msys64/home/Andrew/hello_arm/startup.s

# Object files for target hello_arm.elf
hello_arm_elf_OBJECTS = \
"CMakeFiles/hello_arm.elf.dir/main.c.obj" \
"CMakeFiles/hello_arm.elf.dir/startup.s.obj"

# External object files for target hello_arm.elf
hello_arm_elf_EXTERNAL_OBJECTS =

hello_arm.elf: CMakeFiles/hello_arm.elf.dir/main.c.obj
hello_arm.elf: CMakeFiles/hello_arm.elf.dir/startup.s.obj
hello_arm.elf: CMakeFiles/hello_arm.elf.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable hello_arm.elf"
	"/C/Program Files (x86)/GNU Arm Embedded Toolchain/bin/arm-none-eabi-gcc.exe" -mcpu=cortex-m0plus -mthumb -Wall -Wno-main -nostartfiles -fomit-frame-pointer  -g  -TC:/msys64/home/Andrew/hello_arm/stm32.ld --specs=nosys.specs $(hello_arm_elf_OBJECTS) $(hello_arm_elf_EXTERNAL_OBJECTS)  -o hello_arm.elf 

# Rule to build all files generated by this target.
CMakeFiles/hello_arm.elf.dir/build: hello_arm.elf

.PHONY : CMakeFiles/hello_arm.elf.dir/build

CMakeFiles/hello_arm.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_arm.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_arm.elf.dir/clean

CMakeFiles/hello_arm.elf.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /C/msys64/home/Andrew/hello_arm /C/msys64/home/Andrew/hello_arm /C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm /C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm /C/msys64/home/Andrew/hello_arm/cmake-build-debug-arm/CMakeFiles/hello_arm.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_arm.elf.dir/depend

