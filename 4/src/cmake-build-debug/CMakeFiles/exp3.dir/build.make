# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /home/recolic/program/clion-2017.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/recolic/program/clion-2017.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/recolic/Documents/hust_shits/4/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/recolic/Documents/hust_shits/4/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/exp3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exp3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exp3.dir/flags.make

CMakeFiles/exp3.dir/main.cc.o: CMakeFiles/exp3.dir/flags.make
CMakeFiles/exp3.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/recolic/Documents/hust_shits/4/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/exp3.dir/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/exp3.dir/main.cc.o -c /home/recolic/Documents/hust_shits/4/src/main.cc

CMakeFiles/exp3.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exp3.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/recolic/Documents/hust_shits/4/src/main.cc > CMakeFiles/exp3.dir/main.cc.i

CMakeFiles/exp3.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exp3.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/recolic/Documents/hust_shits/4/src/main.cc -o CMakeFiles/exp3.dir/main.cc.s

CMakeFiles/exp3.dir/main.cc.o.requires:

.PHONY : CMakeFiles/exp3.dir/main.cc.o.requires

CMakeFiles/exp3.dir/main.cc.o.provides: CMakeFiles/exp3.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/exp3.dir/build.make CMakeFiles/exp3.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/exp3.dir/main.cc.o.provides

CMakeFiles/exp3.dir/main.cc.o.provides.build: CMakeFiles/exp3.dir/main.cc.o


CMakeFiles/exp3.dir/gc/gc.cpp.o: CMakeFiles/exp3.dir/flags.make
CMakeFiles/exp3.dir/gc/gc.cpp.o: ../gc/gc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/recolic/Documents/hust_shits/4/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/exp3.dir/gc/gc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/exp3.dir/gc/gc.cpp.o -c /home/recolic/Documents/hust_shits/4/src/gc/gc.cpp

CMakeFiles/exp3.dir/gc/gc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exp3.dir/gc/gc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/recolic/Documents/hust_shits/4/src/gc/gc.cpp > CMakeFiles/exp3.dir/gc/gc.cpp.i

CMakeFiles/exp3.dir/gc/gc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exp3.dir/gc/gc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/recolic/Documents/hust_shits/4/src/gc/gc.cpp -o CMakeFiles/exp3.dir/gc/gc.cpp.s

CMakeFiles/exp3.dir/gc/gc.cpp.o.requires:

.PHONY : CMakeFiles/exp3.dir/gc/gc.cpp.o.requires

CMakeFiles/exp3.dir/gc/gc.cpp.o.provides: CMakeFiles/exp3.dir/gc/gc.cpp.o.requires
	$(MAKE) -f CMakeFiles/exp3.dir/build.make CMakeFiles/exp3.dir/gc/gc.cpp.o.provides.build
.PHONY : CMakeFiles/exp3.dir/gc/gc.cpp.o.provides

CMakeFiles/exp3.dir/gc/gc.cpp.o.provides.build: CMakeFiles/exp3.dir/gc/gc.cpp.o


# Object files for target exp3
exp3_OBJECTS = \
"CMakeFiles/exp3.dir/main.cc.o" \
"CMakeFiles/exp3.dir/gc/gc.cpp.o"

# External object files for target exp3
exp3_EXTERNAL_OBJECTS =

exp3: CMakeFiles/exp3.dir/main.cc.o
exp3: CMakeFiles/exp3.dir/gc/gc.cpp.o
exp3: CMakeFiles/exp3.dir/build.make
exp3: libr.a
exp3: CMakeFiles/exp3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/recolic/Documents/hust_shits/4/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable exp3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exp3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exp3.dir/build: exp3

.PHONY : CMakeFiles/exp3.dir/build

CMakeFiles/exp3.dir/requires: CMakeFiles/exp3.dir/main.cc.o.requires
CMakeFiles/exp3.dir/requires: CMakeFiles/exp3.dir/gc/gc.cpp.o.requires

.PHONY : CMakeFiles/exp3.dir/requires

CMakeFiles/exp3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exp3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exp3.dir/clean

CMakeFiles/exp3.dir/depend:
	cd /home/recolic/Documents/hust_shits/4/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/recolic/Documents/hust_shits/4/src /home/recolic/Documents/hust_shits/4/src /home/recolic/Documents/hust_shits/4/src/cmake-build-debug /home/recolic/Documents/hust_shits/4/src/cmake-build-debug /home/recolic/Documents/hust_shits/4/src/cmake-build-debug/CMakeFiles/exp3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exp3.dir/depend

