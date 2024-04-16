# my_ros_realsense

我啟動的步驟
# single robot

#run gazebo simulation

export TURTLEBOT3_MODEL=dpoom

roslaunch dpoom_gazebo dpoom_turtle.launch

#run keypad

export TURTLEBOT3_MODEL=waffle_pi

roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

#run pointcloud_to_laserscan

roslaunch pointcloud_to_laserscan point_to_scan.launch

#show on rviz

rosrun rviz rviz -d dpoom_rviz.rviz

#run hector_slam

roslaunch my_hector_launch.launch 


# multi robot

#run gazebo simulation

export TURTLEBOT3_MODEL=dpoom

roslaunch multi_dpoom_house.launch

#run pointcloud_to_laserscan

roslaunch all_laserscan.launch

#run hector_slam

roslaunch all_my_hector_launch.launch 

#show on rviz

rviz

#run keypad

export TURTLEBOT3_MODEL=waffle_pi

ROS_NAMESPACE=dp3_0 roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
ROS_NAMESPACE=dp3_1 roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
ROS_NAMESPACE=dp3_2 roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
