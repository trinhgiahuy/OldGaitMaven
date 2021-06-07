#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pi/ros_catkin_ws/src/tf2/tf2_kdl"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/opt/ros/kinetic/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/opt/ros/kinetic/lib/python2.7/dist-packages:/home/pi/ros_catkin_ws/build_isolated/tf2_kdl/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pi/ros_catkin_ws/build_isolated/tf2_kdl" \
    "/usr/bin/python" \
    "/home/pi/ros_catkin_ws/src/tf2/tf2_kdl/setup.py" \
    build --build-base "/home/pi/ros_catkin_ws/build_isolated/tf2_kdl" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/opt/ros/kinetic" --install-scripts="/opt/ros/kinetic/bin"
