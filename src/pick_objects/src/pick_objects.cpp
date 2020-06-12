#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

// Define a client for to send goal requests to the move_base server through a SimpleActionClient
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){
  // Initialize the simple_navigation_goals node
  ros::init(argc, argv, "pick_objects");

  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  // Wait 5 sec for move_base action server to come up
  while(!ac.waitForServer(ros::Duration(5.0))){
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  move_base_msgs::MoveBaseGoal goal;

  // set up the frame parameters
  goal.target_pose.header.frame_id = "map";
  goal.target_pose.header.stamp = ros::Time::now();

  // Define a position and orientation for the robot to reach
  goal.target_pose.pose.position.x = -2.055;
  goal.target_pose.pose.position.y = 4.427;
  goal.target_pose.pose.orientation.w = 0.357;

   // Send the goal position and orientation for the robot to reach
  ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  // Wait an infinite time for the results
  ac.waitForResult();

  // Check if the robot reached its goal
  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    ROS_INFO("Finally, the bot reached the pickup loaction");
  else
    ROS_INFO("The robot failed to reach for some reason");
  ros::Duration(5.0).sleep(); //bot waits for 5 secs after reaching the pickup location

  goal.target_pose.pose.position.x = -1.6233;
  goal.target_pose.pose.position.y = -5.4201;
  goal.target_pose.pose.orientation.w = 0.422;
  

  ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  ac.waitForResult();


  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    ROS_INFO("Finally, the bot reached the drop loaction");
  else
    ROS_INFO("The robot failed to reach for some reason");

  ros::Duration(5.0).sleep();
  return 0;
}
