#!/bin/bash
roslaunch quadrotore2_moveit plan_and_execute.launch &
sleep 5
rosrun dynamic_reconfigure dynparam set /move_group/trajectory_execution execution_duration_monitoring false
