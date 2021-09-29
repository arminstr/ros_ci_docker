# Docker resources for execution of OpenPlanner together with ROS Scenario Simulation framework

## 1. Install docker
Follow this instruction for installing docker:
https://docs.docker.com/engine/install/ubuntu/

## Steps for execution
```bash
cd ~
git clone git@github.com:arminstr/ros_ci_docker.git
cd ros_ci_docker
docker build -t ci/ros:scenario_sim .
mkdir reports
docker run -v ~/ros_ci_docker/reports:/root/ros_scenario_simulation/reports -it ci/ros:scenario_sim
```
