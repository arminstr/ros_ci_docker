#!/bin/bash
set -e


# Set the default command to execute
# when creating a new container
service nginx start &

source /opt/ros/$ROS_DISTRO/setup.bash
source /root/ros_scenario_simulation/devel/setup.bash --extend
source /root/$PLANNER_WS/install/setup.bash --extend

# Start the simulation framework and put it in background
roslaunch sim_run run.launch

exec "$@"