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
CMAKE_SOURCE_DIR = /home/bundito/projects/PforP/processing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bundito/projects/PforP/build-processing-Desktop-Debug

# Utility rule file for gaussian_autogen.

# Include the progress variables for this target.
include CMakeFiles/gaussian_autogen.dir/progress.make

CMakeFiles/gaussian_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bundito/projects/PforP/build-processing-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target gaussian"
	/usr/bin/cmake -E cmake_autogen /home/bundito/projects/PforP/build-processing-Desktop-Debug/CMakeFiles/gaussian_autogen.dir/AutogenInfo.cmake Debug

gaussian_autogen: CMakeFiles/gaussian_autogen
gaussian_autogen: CMakeFiles/gaussian_autogen.dir/build.make

.PHONY : gaussian_autogen

# Rule to build all files generated by this target.
CMakeFiles/gaussian_autogen.dir/build: gaussian_autogen

.PHONY : CMakeFiles/gaussian_autogen.dir/build

CMakeFiles/gaussian_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gaussian_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gaussian_autogen.dir/clean

CMakeFiles/gaussian_autogen.dir/depend:
	cd /home/bundito/projects/PforP/build-processing-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bundito/projects/PforP/processing /home/bundito/projects/PforP/processing /home/bundito/projects/PforP/build-processing-Desktop-Debug /home/bundito/projects/PforP/build-processing-Desktop-Debug /home/bundito/projects/PforP/build-processing-Desktop-Debug/CMakeFiles/gaussian_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gaussian_autogen.dir/depend

