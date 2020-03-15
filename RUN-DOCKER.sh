#!/bin/bash

IMAGE_NAME=$(sudo docker ps -aqf "name=ros-kinetic-develop")

if [ ! $IMAGE_NAME ]; then
  sudo docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/takayuki/private/docker/ros-docker/catkin_ws:/home/developer/catkin_ws --name ros-kinetic-develop -it ros-kinetic
fi

sudo docker start ros-kinetic-develop
sudo docker exec -it $(sudo docker ps -aqf "name=ros-kinetic-develop") bash

