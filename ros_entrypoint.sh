#!/bin/bash
set -e

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /root/ros_scenario_simulation/devel/setup.bash --extend
source /root/$PLANNER_WS/install/setup.bash --extend


# DIR="/~/ros_scenario_simulation/devel/"
# if [ ! -d "$DIR" ]; then
#     echo "-- Building ROS Scenario Simulation --"
#     apt-get update
#     rosdep update
#     rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

#     rm -rf /~/ros_scenario_simulation/build /~/ros_scenario_simulation/devel /~/ros_scenario_simulation/logs
#     cd /~/ros_scenario_simulation && catkin build
#     cd /~/ros_scenario_simulation && catkin build

# else
#     echo "-- Running Tests --"
# fi

exec "$@"