#!/bin/bash
# enable access to xhost from the container
xhost +

# Run docker
docker run -it --privileged --rm \
    --env=LOCAL_USER_ID="$(id -u)" \
    -v $HOME/workspace/:/dragonfly:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -e DISPLAY:=0 \
    --env="QT_X11_NO_MITSHM=1" \
    --network=host \
    --name=px4 px4io/px4-dev-ros-melodic /bin/bash -c "/dragonfly/src/dragonfly/dragonfly_start.sh"