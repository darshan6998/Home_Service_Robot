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

# Utility rule file for clean_test_results_joy.

# Include the progress variables for this target.
include package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/progress.make

package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy:
	cd "/home/robond/p5/build/package folder/joystick_drivers/joy" && /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/robond/p5/build/test_results/joy

clean_test_results_joy: package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy
clean_test_results_joy: package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/build.make

.PHONY : clean_test_results_joy

# Rule to build all files generated by this target.
package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/build: clean_test_results_joy

.PHONY : package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/build

package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/clean:
	cd "/home/robond/p5/build/package folder/joystick_drivers/joy" && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_joy.dir/cmake_clean.cmake
.PHONY : package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/clean

package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/depend:
	cd /home/robond/p5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robond/p5/src "/home/robond/p5/src/package folder/joystick_drivers/joy" /home/robond/p5/build "/home/robond/p5/build/package folder/joystick_drivers/joy" "/home/robond/p5/build/package folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : package\ folder/joystick_drivers/joy/CMakeFiles/clean_test_results_joy.dir/depend

