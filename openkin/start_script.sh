#!/bin/bash

/usr/bin/flock -n /home/pi/openkin.lock -c "/home/pi/OldGaitMaven/openkin/measurement.sh &" > /dev/null 2>&1

exit $?
