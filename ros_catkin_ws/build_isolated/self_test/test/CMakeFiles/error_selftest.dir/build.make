# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/ros_catkin_ws/build_isolated/self_test

# Include any dependencies generated for this target.
include test/CMakeFiles/error_selftest.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/error_selftest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/error_selftest.dir/flags.make

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o: test/CMakeFiles/error_selftest.dir/flags.make
test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o: /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test/test/error_selftest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/ros_catkin_ws/build_isolated/self_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o"
	cd /home/pi/ros_catkin_ws/build_isolated/self_test/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/error_selftest.dir/error_selftest.cpp.o -c /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test/test/error_selftest.cpp

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/error_selftest.dir/error_selftest.cpp.i"
	cd /home/pi/ros_catkin_ws/build_isolated/self_test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test/test/error_selftest.cpp > CMakeFiles/error_selftest.dir/error_selftest.cpp.i

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/error_selftest.dir/error_selftest.cpp.s"
	cd /home/pi/ros_catkin_ws/build_isolated/self_test/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test/test/error_selftest.cpp -o CMakeFiles/error_selftest.dir/error_selftest.cpp.s

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.requires:

.PHONY : test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.requires

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.provides: test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/error_selftest.dir/build.make test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.provides.build
.PHONY : test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.provides

test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.provides.build: test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o


# Object files for target error_selftest
error_selftest_OBJECTS = \
"CMakeFiles/error_selftest.dir/error_selftest.cpp.o"

# External object files for target error_selftest
error_selftest_EXTERNAL_OBJECTS =

/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: test/CMakeFiles/error_selftest.dir/build.make
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/libroscpp.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/librosconsole.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/librostime.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /opt/ros/kinetic/lib/libcpp_common.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest: test/CMakeFiles/error_selftest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/ros_catkin_ws/build_isolated/self_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest"
	cd /home/pi/ros_catkin_ws/build_isolated/self_test/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/error_selftest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/error_selftest.dir/build: /home/pi/ros_catkin_ws/devel_isolated/self_test/lib/self_test/error_selftest

.PHONY : test/CMakeFiles/error_selftest.dir/build

test/CMakeFiles/error_selftest.dir/requires: test/CMakeFiles/error_selftest.dir/error_selftest.cpp.o.requires

.PHONY : test/CMakeFiles/error_selftest.dir/requires

test/CMakeFiles/error_selftest.dir/clean:
	cd /home/pi/ros_catkin_ws/build_isolated/self_test/test && $(CMAKE_COMMAND) -P CMakeFiles/error_selftest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/error_selftest.dir/clean

test/CMakeFiles/error_selftest.dir/depend:
	cd /home/pi/ros_catkin_ws/build_isolated/self_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test /home/pi/ros_catkin_ws/src/diagnostic_updater/self_test/test /home/pi/ros_catkin_ws/build_isolated/self_test /home/pi/ros_catkin_ws/build_isolated/self_test/test /home/pi/ros_catkin_ws/build_isolated/self_test/test/CMakeFiles/error_selftest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/error_selftest.dir/depend

