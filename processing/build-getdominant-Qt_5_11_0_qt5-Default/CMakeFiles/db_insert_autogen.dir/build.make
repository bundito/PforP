# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /home/bundito/projects/PforP/db_insert

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default

# Utility rule file for db_insert_autogen.

# Include the progress variables for this target.
include CMakeFiles/db_insert_autogen.dir/progress.make

CMakeFiles/db_insert_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target db_insert"
	/usr/bin/cmake -E cmake_autogen /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles/db_insert_autogen.dir/AutogenInfo.cmake ""

db_insert_autogen: CMakeFiles/db_insert_autogen
db_insert_autogen: CMakeFiles/db_insert_autogen.dir/build.make

.PHONY : db_insert_autogen

# Rule to build all files generated by this target.
CMakeFiles/db_insert_autogen.dir/build: db_insert_autogen

.PHONY : CMakeFiles/db_insert_autogen.dir/build

CMakeFiles/db_insert_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/db_insert_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/db_insert_autogen.dir/clean

CMakeFiles/db_insert_autogen.dir/depend:
	cd /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bundito/projects/PforP/db_insert /home/bundito/projects/PforP/db_insert /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default /home/bundito/projects/PforP/processing/build-getdominant-Qt_5_11_0_qt5-Default/CMakeFiles/db_insert_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/db_insert_autogen.dir/depend
