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

# Utility rule file for getdominant_autogen.

# Include the progress variables for this target.
include CMakeFiles/getdominant_autogen.dir/progress.make

CMakeFiles/getdominant_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target getdominant"
	/usr/bin/cmake -E cmake_autogen /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles/getdominant_autogen.dir/AutogenInfo.cmake ""

getdominant_autogen: CMakeFiles/getdominant_autogen
getdominant_autogen: CMakeFiles/getdominant_autogen.dir/build.make

.PHONY : getdominant_autogen

# Rule to build all files generated by this target.
CMakeFiles/getdominant_autogen.dir/build: getdominant_autogen

.PHONY : CMakeFiles/getdominant_autogen.dir/build

CMakeFiles/getdominant_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/getdominant_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/getdominant_autogen.dir/clean

CMakeFiles/getdominant_autogen.dir/depend:
	cd /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bundito/projects/PforP/processing/getdominant /home/bundito/projects/PforP/processing/getdominant /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles/getdominant_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/getdominant_autogen.dir/depend
