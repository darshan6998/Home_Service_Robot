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

# Utility rule file for wiimote_generate_messages_cpp.

# Include the progress variables for this target.
include joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/progress.make

joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/State.h
joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/TimedSwitch.h
joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/IrSourceInfo.h


/home/robond/p5/devel/include/wiimote/State.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/robond/p5/devel/include/wiimote/State.h: /home/robond/p5/src/joystick_drivers/wiimote/msg/State.msg
/home/robond/p5/devel/include/wiimote/State.h: /home/robond/p5/src/joystick_drivers/wiimote/msg/IrSourceInfo.msg
/home/robond/p5/devel/include/wiimote/State.h: /opt/ros/kinetic/share/std_msgs/msg/Header.msg
/home/robond/p5/devel/include/wiimote/State.h: /opt/ros/kinetic/share/geometry_msgs/msg/Vector3.msg
/home/robond/p5/devel/include/wiimote/State.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robond/p5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from wiimote/State.msg"
	cd /home/robond/p5/src/joystick_drivers/wiimote && /home/robond/p5/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/robond/p5/src/joystick_drivers/wiimote/msg/State.msg -Iwiimote:/home/robond/p5/src/joystick_drivers/wiimote/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -p wiimote -o /home/robond/p5/devel/include/wiimote -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/robond/p5/devel/include/wiimote/TimedSwitch.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/robond/p5/devel/include/wiimote/TimedSwitch.h: /home/robond/p5/src/joystick_drivers/wiimote/msg/TimedSwitch.msg
/home/robond/p5/devel/include/wiimote/TimedSwitch.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robond/p5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from wiimote/TimedSwitch.msg"
	cd /home/robond/p5/src/joystick_drivers/wiimote && /home/robond/p5/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/robond/p5/src/joystick_drivers/wiimote/msg/TimedSwitch.msg -Iwiimote:/home/robond/p5/src/joystick_drivers/wiimote/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -p wiimote -o /home/robond/p5/devel/include/wiimote -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/robond/p5/devel/include/wiimote/IrSourceInfo.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/robond/p5/devel/include/wiimote/IrSourceInfo.h: /home/robond/p5/src/joystick_drivers/wiimote/msg/IrSourceInfo.msg
/home/robond/p5/devel/include/wiimote/IrSourceInfo.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robond/p5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from wiimote/IrSourceInfo.msg"
	cd /home/robond/p5/src/joystick_drivers/wiimote && /home/robond/p5/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/robond/p5/src/joystick_drivers/wiimote/msg/IrSourceInfo.msg -Iwiimote:/home/robond/p5/src/joystick_drivers/wiimote/msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -p wiimote -o /home/robond/p5/devel/include/wiimote -e /opt/ros/kinetic/share/gencpp/cmake/..

wiimote_generate_messages_cpp: joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp
wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/State.h
wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/TimedSwitch.h
wiimote_generate_messages_cpp: /home/robond/p5/devel/include/wiimote/IrSourceInfo.h
wiimote_generate_messages_cpp: joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/build.make

.PHONY : wiimote_generate_messages_cpp

# Rule to build all files generated by this target.
joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/build: wiimote_generate_messages_cpp

.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/build

joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/clean:
	cd /home/robond/p5/build/joystick_drivers/wiimote && $(CMAKE_COMMAND) -P CMakeFiles/wiimote_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/clean

joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/depend:
	cd /home/robond/p5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robond/p5/src /home/robond/p5/src/joystick_drivers/wiimote /home/robond/p5/build /home/robond/p5/build/joystick_drivers/wiimote /home/robond/p5/build/joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick_drivers/wiimote/CMakeFiles/wiimote_generate_messages_cpp.dir/depend

