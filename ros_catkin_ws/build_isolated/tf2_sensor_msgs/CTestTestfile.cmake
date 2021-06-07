# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/tf2/tf2_sensor_msgs
# Build directory: /home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tf2_sensor_msgs_nosetests_test.test_tf2_sensor_msgs.py "/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/test_results/tf2_sensor_msgs/nosetests-test.test_tf2_sensor_msgs.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/test_results/tf2_sensor_msgs" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/tf2/tf2_sensor_msgs/test/test_tf2_sensor_msgs.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/test_results/tf2_sensor_msgs/nosetests-test.test_tf2_sensor_msgs.py.xml")
add_test(_ctest_tf2_sensor_msgs_rostest_test_test.launch "/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/test_results/tf2_sensor_msgs/rostest-test_test.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/tf2/tf2_sensor_msgs --package=tf2_sensor_msgs --results-filename test_test.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/tf2_sensor_msgs/test_results\" /home/pi/ros_catkin_ws/src/tf2/tf2_sensor_msgs/test/test.launch ")
subdirs(gtest)
