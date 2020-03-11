sudo docker start ros-melodic-develop

#sudo docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/takayuki/private/docker/ros-docker/catkin_ws:/home/developer/catkin_ws --name ros-melodic-develop -it ros-melodic
sudo docker exec -it $(sudo docker ps -aqf "name=ros-melodic-develop") bash

