# install necessary tools
sudo apt-get update 
sudo apt install curl

# install ROS following http://wiki.ros.org/melodic/Installation/Ubuntu
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop-full
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential python-rosdep
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo rosdep init
rosdep update

# install Azure Kinect SDK
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-add-repository https://packages.microsoft.com/ubuntu/18.04/prod
sudo apt-get update
sudo apt install libk4a1.3
sudo apt install libk4a1.3-dev
sudo apt install k4a-tools

# clone Azure Kinect ROS drivers, make workspace
mkdir catkin_ws/src
cd catkin_ws/src
git clone https://github.com/microsoft/Azure_Kinect_ROS_Driver
cd ..
catkin_make

