# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_SOURCE_DIR = /home/bundito/projects/PforP/processing/getdominant

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default

# Include any dependencies generated for this target.
include CMakeFiles/getdominant.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/getdominant.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/getdominant.dir/flags.make

CMakeFiles/getdominant.dir/getdominant.cpp.o: CMakeFiles/getdominant.dir/flags.make
CMakeFiles/getdominant.dir/getdominant.cpp.o: /home/bundito/projects/PforP/processing/getdominant/getdominant.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/getdominant.dir/getdominant.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/getdominant.dir/getdominant.cpp.o -c /home/bundito/projects/PforP/processing/getdominant/getdominant.cpp

CMakeFiles/getdominant.dir/getdominant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/getdominant.dir/getdominant.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bundito/projects/PforP/processing/getdominant/getdominant.cpp > CMakeFiles/getdominant.dir/getdominant.cpp.i

CMakeFiles/getdominant.dir/getdominant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/getdominant.dir/getdominant.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bundito/projects/PforP/processing/getdominant/getdominant.cpp -o CMakeFiles/getdominant.dir/getdominant.cpp.s

CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o: CMakeFiles/getdominant.dir/flags.make
CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o: getdominant_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o -c /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/getdominant_autogen/mocs_compilation.cpp

CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/getdominant_autogen/mocs_compilation.cpp > CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.i

CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/getdominant_autogen/mocs_compilation.cpp -o CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.s

# Object files for target getdominant
getdominant_OBJECTS = \
"CMakeFiles/getdominant.dir/getdominant.cpp.o" \
"CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o"

# External object files for target getdominant
getdominant_EXTERNAL_OBJECTS =

getdominant: CMakeFiles/getdominant.dir/getdominant.cpp.o
getdominant: CMakeFiles/getdominant.dir/getdominant_autogen/mocs_compilation.cpp.o
getdominant: CMakeFiles/getdominant.dir/build.make
getdominant: /usr/lib64/libMagick++-7.Q16HDRI.so
getdominant: CMakeFiles/getdominant.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable getdominant"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getdominant.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/getdominant.dir/build: getdominant

.PHONY : CMakeFiles/getdominant.dir/build

CMakeFiles/getdominant.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/getdominant.dir/cmake_clean.cmake
.PHONY : CMakeFiles/getdominant.dir/clean

CMakeFiles/getdominant.dir/depend:
	cd /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bundito/projects/PforP/processing/getdominant /home/bundito/projects/PforP/processing/getdominant /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles/getdominant.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/getdominant.dir/depend

