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
CMAKE_SOURCE_DIR = /home/bundito/PforP/processing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bundito/PforP/build-processing-Desktop-Default

# Include any dependencies generated for this target.
include CMakeFiles/gaussian.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gaussian.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gaussian.dir/flags.make

CMakeFiles/gaussian.dir/gaussian.cpp.o: CMakeFiles/gaussian.dir/flags.make
CMakeFiles/gaussian.dir/gaussian.cpp.o: /home/bundito/PforP/processing/gaussian.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bundito/PforP/build-processing-Desktop-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gaussian.dir/gaussian.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gaussian.dir/gaussian.cpp.o -c /home/bundito/PforP/processing/gaussian.cpp

CMakeFiles/gaussian.dir/gaussian.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gaussian.dir/gaussian.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bundito/PforP/processing/gaussian.cpp > CMakeFiles/gaussian.dir/gaussian.cpp.i

CMakeFiles/gaussian.dir/gaussian.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gaussian.dir/gaussian.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bundito/PforP/processing/gaussian.cpp -o CMakeFiles/gaussian.dir/gaussian.cpp.s

CMakeFiles/gaussian.dir/gaussian.cpp.o.requires:

.PHONY : CMakeFiles/gaussian.dir/gaussian.cpp.o.requires

CMakeFiles/gaussian.dir/gaussian.cpp.o.provides: CMakeFiles/gaussian.dir/gaussian.cpp.o.requires
	$(MAKE) -f CMakeFiles/gaussian.dir/build.make CMakeFiles/gaussian.dir/gaussian.cpp.o.provides.build
.PHONY : CMakeFiles/gaussian.dir/gaussian.cpp.o.provides

CMakeFiles/gaussian.dir/gaussian.cpp.o.provides.build: CMakeFiles/gaussian.dir/gaussian.cpp.o


CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o: CMakeFiles/gaussian.dir/flags.make
CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o: gaussian_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bundito/PforP/build-processing-Desktop-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o -c /home/bundito/PforP/build-processing-Desktop-Default/gaussian_autogen/mocs_compilation.cpp

CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bundito/PforP/build-processing-Desktop-Default/gaussian_autogen/mocs_compilation.cpp > CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.i

CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bundito/PforP/build-processing-Desktop-Default/gaussian_autogen/mocs_compilation.cpp -o CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.s

CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/gaussian.dir/build.make CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o


# Object files for target gaussian
gaussian_OBJECTS = \
"CMakeFiles/gaussian.dir/gaussian.cpp.o" \
"CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o"

# External object files for target gaussian
gaussian_EXTERNAL_OBJECTS =

gaussian: CMakeFiles/gaussian.dir/gaussian.cpp.o
gaussian: CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o
gaussian: CMakeFiles/gaussian.dir/build.make
gaussian: /usr/lib/x86_64-linux-gnu/libMagick++-6.Q16.so
gaussian: CMakeFiles/gaussian.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bundito/PforP/build-processing-Desktop-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable gaussian"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gaussian.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gaussian.dir/build: gaussian

.PHONY : CMakeFiles/gaussian.dir/build

CMakeFiles/gaussian.dir/requires: CMakeFiles/gaussian.dir/gaussian.cpp.o.requires
CMakeFiles/gaussian.dir/requires: CMakeFiles/gaussian.dir/gaussian_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/gaussian.dir/requires

CMakeFiles/gaussian.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gaussian.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gaussian.dir/clean

CMakeFiles/gaussian.dir/depend:
	cd /home/bundito/PforP/build-processing-Desktop-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bundito/PforP/processing /home/bundito/PforP/processing /home/bundito/PforP/build-processing-Desktop-Default /home/bundito/PforP/build-processing-Desktop-Default /home/bundito/PforP/build-processing-Desktop-Default/CMakeFiles/gaussian.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gaussian.dir/depend

