# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/enterprise/enterprise_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/enterprise/enterprise_ws/build

# Include any dependencies generated for this target.
include mst_color/CMakeFiles/color.dir/depend.make

# Include the progress variables for this target.
include mst_color/CMakeFiles/color.dir/progress.make

# Include the compile flags for this target's objects.
include mst_color/CMakeFiles/color.dir/flags.make

mst_color/CMakeFiles/color.dir/src/color.cpp.o: mst_color/CMakeFiles/color.dir/flags.make
mst_color/CMakeFiles/color.dir/src/color.cpp.o: /home/enterprise/enterprise_ws/src/mst_color/src/color.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/enterprise/enterprise_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mst_color/CMakeFiles/color.dir/src/color.cpp.o"
	cd /home/enterprise/enterprise_ws/build/mst_color && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color.dir/src/color.cpp.o -c /home/enterprise/enterprise_ws/src/mst_color/src/color.cpp

mst_color/CMakeFiles/color.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.dir/src/color.cpp.i"
	cd /home/enterprise/enterprise_ws/build/mst_color && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/enterprise/enterprise_ws/src/mst_color/src/color.cpp > CMakeFiles/color.dir/src/color.cpp.i

mst_color/CMakeFiles/color.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.dir/src/color.cpp.s"
	cd /home/enterprise/enterprise_ws/build/mst_color && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/enterprise/enterprise_ws/src/mst_color/src/color.cpp -o CMakeFiles/color.dir/src/color.cpp.s

mst_color/CMakeFiles/color.dir/src/color.cpp.o.requires:
.PHONY : mst_color/CMakeFiles/color.dir/src/color.cpp.o.requires

mst_color/CMakeFiles/color.dir/src/color.cpp.o.provides: mst_color/CMakeFiles/color.dir/src/color.cpp.o.requires
	$(MAKE) -f mst_color/CMakeFiles/color.dir/build.make mst_color/CMakeFiles/color.dir/src/color.cpp.o.provides.build
.PHONY : mst_color/CMakeFiles/color.dir/src/color.cpp.o.provides

mst_color/CMakeFiles/color.dir/src/color.cpp.o.provides.build: mst_color/CMakeFiles/color.dir/src/color.cpp.o

# Object files for target color
color_OBJECTS = \
"CMakeFiles/color.dir/src/color.cpp.o"

# External object files for target color
color_EXTERNAL_OBJECTS =

/home/enterprise/enterprise_ws/devel/lib/libcolor.so: mst_color/CMakeFiles/color.dir/src/color.cpp.o
/home/enterprise/enterprise_ws/devel/lib/libcolor.so: mst_color/CMakeFiles/color.dir/build.make
/home/enterprise/enterprise_ws/devel/lib/libcolor.so: mst_color/CMakeFiles/color.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/enterprise/enterprise_ws/devel/lib/libcolor.so"
	cd /home/enterprise/enterprise_ws/build/mst_color && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mst_color/CMakeFiles/color.dir/build: /home/enterprise/enterprise_ws/devel/lib/libcolor.so
.PHONY : mst_color/CMakeFiles/color.dir/build

mst_color/CMakeFiles/color.dir/requires: mst_color/CMakeFiles/color.dir/src/color.cpp.o.requires
.PHONY : mst_color/CMakeFiles/color.dir/requires

mst_color/CMakeFiles/color.dir/clean:
	cd /home/enterprise/enterprise_ws/build/mst_color && $(CMAKE_COMMAND) -P CMakeFiles/color.dir/cmake_clean.cmake
.PHONY : mst_color/CMakeFiles/color.dir/clean

mst_color/CMakeFiles/color.dir/depend:
	cd /home/enterprise/enterprise_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enterprise/enterprise_ws/src /home/enterprise/enterprise_ws/src/mst_color /home/enterprise/enterprise_ws/build /home/enterprise/enterprise_ws/build/mst_color /home/enterprise/enterprise_ws/build/mst_color/CMakeFiles/color.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mst_color/CMakeFiles/color.dir/depend

