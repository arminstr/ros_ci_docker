# Docker resources for execution of OpenPlanner together with ROS Scenario Simulation framework

## Install docker
Follow this instruction for installing docker:
https://docs.docker.com/engine/install/ubuntu/

## Commands for execution

Get the repository:
```bash
cd ~
git clone https://github.com/arminstr/ros_ci_docker.git
```
Build the Docker Container:
```bash
cd ros_ci_docker
docker build -t ci/ros:scenario_sim .
```
> **Note:** Ensure you can run docker without sudo. Building the conainer takes between 30 minutes and 1 hour depending on your systems performance. 

Run the Container:
```bash
docker run -p 8080:90 -it ci/ros:scenario_sim
```

## Viewing the report
Go to **localhost:8080** and take a look at the scenarios.
