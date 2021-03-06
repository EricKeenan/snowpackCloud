# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack

# Include any dependencies generated for this target.
include applications/snowpack/CMakeFiles/snowpack.app.dir/depend.make

# Include the progress variables for this target.
include applications/snowpack/CMakeFiles/snowpack.app.dir/progress.make

# Include the compile flags for this target's objects.
include applications/snowpack/CMakeFiles/snowpack.app.dir/flags.make

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o: applications/snowpack/CMakeFiles/snowpack.app.dir/flags.make
applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o: applications/snowpack/Main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o"
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snowpack.app.dir/Main.cc.o -c /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack/Main.cc

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snowpack.app.dir/Main.cc.i"
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack/Main.cc > CMakeFiles/snowpack.app.dir/Main.cc.i

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snowpack.app.dir/Main.cc.s"
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack/Main.cc -o CMakeFiles/snowpack.app.dir/Main.cc.s

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.requires:

.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.requires

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.provides: applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.requires
	$(MAKE) -f applications/snowpack/CMakeFiles/snowpack.app.dir/build.make applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.provides.build
.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.provides

applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.provides.build: applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o


# Object files for target snowpack.app
snowpack_app_OBJECTS = \
"CMakeFiles/snowpack.app.dir/Main.cc.o"

# External object files for target snowpack.app
snowpack_app_EXTERNAL_OBJECTS =

bin/snowpack: applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o
bin/snowpack: applications/snowpack/CMakeFiles/snowpack.app.dir/build.make
bin/snowpack: lib/libsnowpack.so.3.4.5
bin/snowpack: /home/jupyter-eric/snowpackCloud/snowpack/Source/meteoio/lib/libmeteoio.so
bin/snowpack: applications/snowpack/CMakeFiles/snowpack.app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/snowpack"
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snowpack.app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/snowpack/CMakeFiles/snowpack.app.dir/build: bin/snowpack

.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/build

applications/snowpack/CMakeFiles/snowpack.app.dir/requires: applications/snowpack/CMakeFiles/snowpack.app.dir/Main.cc.o.requires

.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/requires

applications/snowpack/CMakeFiles/snowpack.app.dir/clean:
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack && $(CMAKE_COMMAND) -P CMakeFiles/snowpack.app.dir/cmake_clean.cmake
.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/clean

applications/snowpack/CMakeFiles/snowpack.app.dir/depend:
	cd /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack/CMakeFiles/snowpack.app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/snowpack/CMakeFiles/snowpack.app.dir/depend

