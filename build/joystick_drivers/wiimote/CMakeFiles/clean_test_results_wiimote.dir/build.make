# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/robond/p5/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robond/p5/build

# Utility rule file for clean_test_results_wiimote.

# Include the progress variables for this target.
include joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/progress.make

joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote:
	cd /home/robond/p5/build/joystick_drivers/wiimote && /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/robond/p5/build/test_results/wiimote

clean_test_results_wiimote: joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote
clean_test_results_wiimote: joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/build.make

.PHONY : clean_test_results_wiimote

# Rule to build all files generated by this target.
joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/build: clean_test_results_wiimote

.PHONY : joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/build

joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/clean:
	cd /home/robond/p5/build/joystick_drivers/wiimote && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_wiimote.dir/cmake_clean.cmake
.PHONY : joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/clean

joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/depend:
	cd /home/robond/p5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robond/p5/src /home/robond/p5/src/joystick_drivers/wiimote /home/robond/p5/build /home/robond/p5/build/joystick_drivers/wiimote /home/robond/p5/build/joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick_drivers/wiimote/CMakeFiles/clean_test_results_wiimote.dir/depend

