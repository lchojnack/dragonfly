#!/bin/bash

export DRAGONFLY_HOME=$HOME/workspace

source $DRAGONFLY_HOME/devel/setup.bash

cd $DRAGONFLY_HOME/src/dragonfly/Firmware
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd):$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd):$(pwd)/Tools/sitl_gazebo

cd $DRAGONFLY_HOME
gzclient