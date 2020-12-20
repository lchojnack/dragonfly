# DRAGONFLY
ROS package for dragonfly project

## PX4

### Simulation
```bash
cd Firmware
git submodule update --init --recursive
DONT_RUN=1 make px4_sitl_default gazebo
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd):$(pwd)/Tools/sitl_gazebo
```
```bash
roslaunch dragonfly bringup_dragonfly_simulation.launch
```

### Robot
```bash
make omnibus_f4sd_default
```
