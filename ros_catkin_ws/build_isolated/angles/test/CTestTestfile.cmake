# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/angles/angles/test
# Build directory: /home/pi/ros_catkin_ws/build_isolated/angles/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_angles_gtest_utest "/home/pi/ros_catkin_ws/build_isolated/angles/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/angles/test_results/angles/gtest-utest.xml" "--return-code" "/home/pi/ros_catkin_ws/devel_isolated/angles/lib/angles/utest --gtest_output=xml:/home/pi/ros_catkin_ws/build_isolated/angles/test_results/angles/gtest-utest.xml")
add_test(_ctest_angles_nosetests_utest.py "/home/pi/ros_catkin_ws/build_isolated/angles/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/angles/test_results/angles/nosetests-utest.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/ros_catkin_ws/build_isolated/angles/test_results/angles" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/angles/angles/test/utest.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build_isolated/angles/test_results/angles/nosetests-utest.py.xml")
