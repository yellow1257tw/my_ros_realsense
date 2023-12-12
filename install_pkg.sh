cd ros/src

git clone https://github.com/shinkansan/2019-UGRP-DPoom.git
git clone https://github.com/SeunghyunLim/Dpoom_gazebo.git
cd..

#install realsense-ros

sudo apt-get install ros-melodic-realsense2-camera -y
sudo apt-get install ros-melodic-realsense2-description -y

sudo mkdir -p /etc/apt/keyrings
curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null

sudo apt-get install apt-transport-https -y

echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
sudo tee /etc/apt/sources.list.d/librealsense.list
sudo apt-get update

sudo apt-get install librealsense2-dkms -y
sudo apt-get install librealsense2-utils -y

sudo apt-get install librealsense2-dev -y
sudo apt-get install librealsense2-dbg -y


#test realsense-viewer 
catkin_make
