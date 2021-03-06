# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sunho/HelloCV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sunho/HelloCV

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/sunho/HelloCV/CMakeFiles /home/sunho/HelloCV/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/sunho/HelloCV/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Lane_Detection

# Build rule for target.
Lane_Detection: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Lane_Detection
.PHONY : Lane_Detection

# fast build rule for target.
Lane_Detection/fast:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/build
.PHONY : Lane_Detection/fast

src/func_util.o: src/func_util.cpp.o

.PHONY : src/func_util.o

# target to build an object file
src/func_util.cpp.o:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/func_util.cpp.o
.PHONY : src/func_util.cpp.o

src/func_util.i: src/func_util.cpp.i

.PHONY : src/func_util.i

# target to preprocess a source file
src/func_util.cpp.i:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/func_util.cpp.i
.PHONY : src/func_util.cpp.i

src/func_util.s: src/func_util.cpp.s

.PHONY : src/func_util.s

# target to generate assembly for a file
src/func_util.cpp.s:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/func_util.cpp.s
.PHONY : src/func_util.cpp.s

src/lane_class.o: src/lane_class.cpp.o

.PHONY : src/lane_class.o

# target to build an object file
src/lane_class.cpp.o:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_class.cpp.o
.PHONY : src/lane_class.cpp.o

src/lane_class.i: src/lane_class.cpp.i

.PHONY : src/lane_class.i

# target to preprocess a source file
src/lane_class.cpp.i:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_class.cpp.i
.PHONY : src/lane_class.cpp.i

src/lane_class.s: src/lane_class.cpp.s

.PHONY : src/lane_class.s

# target to generate assembly for a file
src/lane_class.cpp.s:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_class.cpp.s
.PHONY : src/lane_class.cpp.s

src/lane_fit_sliding_window.o: src/lane_fit_sliding_window.cpp.o

.PHONY : src/lane_fit_sliding_window.o

# target to build an object file
src/lane_fit_sliding_window.cpp.o:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_fit_sliding_window.cpp.o
.PHONY : src/lane_fit_sliding_window.cpp.o

src/lane_fit_sliding_window.i: src/lane_fit_sliding_window.cpp.i

.PHONY : src/lane_fit_sliding_window.i

# target to preprocess a source file
src/lane_fit_sliding_window.cpp.i:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_fit_sliding_window.cpp.i
.PHONY : src/lane_fit_sliding_window.cpp.i

src/lane_fit_sliding_window.s: src/lane_fit_sliding_window.cpp.s

.PHONY : src/lane_fit_sliding_window.s

# target to generate assembly for a file
src/lane_fit_sliding_window.cpp.s:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/lane_fit_sliding_window.cpp.s
.PHONY : src/lane_fit_sliding_window.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/Lane_Detection.dir/build.make CMakeFiles/Lane_Detection.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... Lane_Detection"
	@echo "... edit_cache"
	@echo "... src/func_util.o"
	@echo "... src/func_util.i"
	@echo "... src/func_util.s"
	@echo "... src/lane_class.o"
	@echo "... src/lane_class.i"
	@echo "... src/lane_class.s"
	@echo "... src/lane_fit_sliding_window.o"
	@echo "... src/lane_fit_sliding_window.i"
	@echo "... src/lane_fit_sliding_window.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

