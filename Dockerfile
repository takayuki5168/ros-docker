# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-melodic-desktop-full \
    python-catkin-tools \
    && rm -rf /var/lib/apt/lists/*

# install other tools
RUN apt-get update && apt-get install -y \
    tmux git emacs25 vim gnuplot

# set display
RUN groupadd --gid 1000 developer && \
    useradd  --uid 1000 --gid 1000 --groups sudo --create-home --shell /bin/bash developer && \
    echo 'developer:developer' | chpasswd

USER developer
WORKDIR /home/developer
CMD /bin/bash && source /opt/ros/melodic/setup.bash