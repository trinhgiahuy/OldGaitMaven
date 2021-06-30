#!/bin/bash

#Kill running process
#sudo killall bash
sudo killall python
sudo killall screen

#Turn off the led
echo 0 > /sys/class/gpio/gpio24/value
echo 0 > /sys/class/gpio/gpio25/value

#Empties all log file
cat /dev/null > /home/pi/led.log
cat /dev/null > /home/pi/ascii.log
cat /dev/null > /home/pi/rostmp.log
cat /dev/null > /home/pi/measurement.log
cat /dev/null > /home/pi/gpstemp.log
cat /dev/null > /home/pi/insdata.log
cat /dev/null > /home/pi/tags.txt

#Remove data file
rm /home/pi/data/*.txt
rm /home/pi/data/*.active

#After run this refresh script, remember to killall bash process manually
# sudo killall bash
