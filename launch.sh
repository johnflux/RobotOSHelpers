#!/bin/bash

# This script is run when the machine boots up, called by /lib/systemd/system/ros.service
# It starts all of our ros programs (ros nodes), by launching startup.launch
# This is mostly equivalent to the standard:
#
#   roslaunch ros startup.launch
#
# But with some small tweaks to make it nicer:
#
#  1. We use 'mon launch'  instead of 'roslaunch'.  This program gives us a nice ncurses
#     console GUI to view the status of our varies ros nodes, and also lets us view the status
#     via ros itself - allowing us to display the status, cpu usage, mem usage etc in the webbrowser.
#  2. We use 'screen' to let us view this ncurses GUI when we ssh in to the ros, by doing:
#       screen -r monlaunch
#     Press  ctrl+a+d  to detach again

echo "Starting monlaunch"
screen -S "monlaunch" -dm bash -c "source /home/ubuntu/catkin_ws/devel/setup.bash && mon launch --name rosmon ros startup.launch"

