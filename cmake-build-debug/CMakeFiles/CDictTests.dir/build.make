# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/CDictTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CDictTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CDictTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CDictTests.dir/flags.make

CMakeFiles/CDictTests.dir/tests/cdict_test.c.o: CMakeFiles/CDictTests.dir/flags.make
CMakeFiles/CDictTests.dir/tests/cdict_test.c.o: ../tests/cdict_test.c
CMakeFiles/CDictTests.dir/tests/cdict_test.c.o: CMakeFiles/CDictTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CDictTests.dir/tests/cdict_test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CDictTests.dir/tests/cdict_test.c.o -MF CMakeFiles/CDictTests.dir/tests/cdict_test.c.o.d -o CMakeFiles/CDictTests.dir/tests/cdict_test.c.o -c "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/cdict_test.c"

CMakeFiles/CDictTests.dir/tests/cdict_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CDictTests.dir/tests/cdict_test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/cdict_test.c" > CMakeFiles/CDictTests.dir/tests/cdict_test.c.i

CMakeFiles/CDictTests.dir/tests/cdict_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CDictTests.dir/tests/cdict_test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/cdict_test.c" -o CMakeFiles/CDictTests.dir/tests/cdict_test.c.s

CMakeFiles/CDictTests.dir/src/cdict.c.o: CMakeFiles/CDictTests.dir/flags.make
CMakeFiles/CDictTests.dir/src/cdict.c.o: ../src/cdict.c
CMakeFiles/CDictTests.dir/src/cdict.c.o: CMakeFiles/CDictTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CDictTests.dir/src/cdict.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CDictTests.dir/src/cdict.c.o -MF CMakeFiles/CDictTests.dir/src/cdict.c.o.d -o CMakeFiles/CDictTests.dir/src/cdict.c.o -c "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/src/cdict.c"

CMakeFiles/CDictTests.dir/src/cdict.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CDictTests.dir/src/cdict.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/src/cdict.c" > CMakeFiles/CDictTests.dir/src/cdict.c.i

CMakeFiles/CDictTests.dir/src/cdict.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CDictTests.dir/src/cdict.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/src/cdict.c" -o CMakeFiles/CDictTests.dir/src/cdict.c.s

CMakeFiles/CDictTests.dir/tests/test_utils.c.o: CMakeFiles/CDictTests.dir/flags.make
CMakeFiles/CDictTests.dir/tests/test_utils.c.o: ../tests/test_utils.c
CMakeFiles/CDictTests.dir/tests/test_utils.c.o: CMakeFiles/CDictTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/CDictTests.dir/tests/test_utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CDictTests.dir/tests/test_utils.c.o -MF CMakeFiles/CDictTests.dir/tests/test_utils.c.o.d -o CMakeFiles/CDictTests.dir/tests/test_utils.c.o -c "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/test_utils.c"

CMakeFiles/CDictTests.dir/tests/test_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CDictTests.dir/tests/test_utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/test_utils.c" > CMakeFiles/CDictTests.dir/tests/test_utils.c.i

CMakeFiles/CDictTests.dir/tests/test_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CDictTests.dir/tests/test_utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/tests/test_utils.c" -o CMakeFiles/CDictTests.dir/tests/test_utils.c.s

# Object files for target CDictTests
CDictTests_OBJECTS = \
"CMakeFiles/CDictTests.dir/tests/cdict_test.c.o" \
"CMakeFiles/CDictTests.dir/src/cdict.c.o" \
"CMakeFiles/CDictTests.dir/tests/test_utils.c.o"

# External object files for target CDictTests
CDictTests_EXTERNAL_OBJECTS =

CDictTests: CMakeFiles/CDictTests.dir/tests/cdict_test.c.o
CDictTests: CMakeFiles/CDictTests.dir/src/cdict.c.o
CDictTests: CMakeFiles/CDictTests.dir/tests/test_utils.c.o
CDictTests: CMakeFiles/CDictTests.dir/build.make
CDictTests: CMakeFiles/CDictTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable CDictTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CDictTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CDictTests.dir/build: CDictTests
.PHONY : CMakeFiles/CDictTests.dir/build

CMakeFiles/CDictTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CDictTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CDictTests.dir/clean

CMakeFiles/CDictTests.dir/depend:
	cd "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++" "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++" "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug" "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug" "/mnt/s/CR_2024CMU_ECE/SEM_202408_Y1_FALL/CR_202408_(04800-I)_ISSE/CR_202408_ISSE_ASS/local/11/ExpressionWhizz++/cmake-build-debug/CMakeFiles/CDictTests.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/CDictTests.dir/depend

