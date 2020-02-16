#!/bin/bash
# See the comments in launch.sh
# This does the same thing, just without using 'screen' to launch it in the background.
echo "Starting monlaunch"
bash -c "source /home/ubuntu/catkin_ws/devel/setup.bash && mon launch --name rosmon rover startup.launch"

