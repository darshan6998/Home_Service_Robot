#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <math.h>
#include <nav_msgs/Odometry.h> 
#include <geometry_msgs/PoseWithCovarianceStamped.h>

double x_point = -2.055;
double y_point = 4.4277;
double x_drop = -1.623;
double y_drop = -5.4201;
bool pickup_valid = false;
bool dropoff_valid = false;

void amclCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg) {
	//checking if robot near its goals using amcl pose 
  double bot_pose_x = msg->pose.pose.position.x;
  double bot_pose_y = msg->pose.pose.position.y;
  ROS_INFO("Received NAV_msgs");

    //checking if bot is within threshold range of 1 m of pickup point and and declare that it is 
  double current_pickup_distance = sqrt(pow(bot_pose_x - x_point, 2) + pow(bot_pose_y - y_point, 2));  
  if (current_pickup_distance < 0.22) // 0.22 is threshold
  {
    pickup_valid = true;
    ROS_INFO("Finally, I am at the pick up point");
  }
  double current_droppoint_distance = sqrt(pow(bot_pose_x - x_drop, 2) + pow(bot_pose_y - y_drop, 2));
  if (current_droppoint_distance < 0.22) // 0.22 is threshold
  {
    dropoff_valid = true;
    ROS_INFO("Finally, I am at the drop off point");
  }
}
int main( int argc, char** argv )
{
  ros::init(argc, argv, "home_service");
  ros::NodeHandle n;
  ros::Rate r(1);
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  ros::Subscriber amcl_sub = n.subscribe("amcl_pose", 10, amclCallback);

  visualization_msgs::Marker marker;

  // Set our initial shape type to be a cube
  uint32_t shape = visualization_msgs::Marker::CUBE;

  // Set the frame ID and timestamp.  See the TF tutorials for information on these.
  marker.header.frame_id = "map";
  marker.header.stamp = ros::Time::now();

  marker.ns = "cube";
  marker.id = 0;

  marker.type = shape;
  marker.pose.position.x = x_point;
  marker.pose.position.y = y_point;
  marker.pose.position.z = 0;
  marker.pose.orientation.x = 0.0;
  marker.pose.orientation.y = 0.0;
  marker.pose.orientation.z = 0.0;
  marker.pose.orientation.w = 0.357;

  // Set the scale of the marker -- 1x1x1 here means 1m on a side
  marker.scale.x = 0.4;
  marker.scale.y = 0.4;
  marker.scale.z = 0.4;

  // Set the color -- be sure to set alpha to something non-zero!
  marker.color.r = 1.0f;
  marker.color.g = 1.0f;
  marker.color.b = 0.0f;
  marker.color.a = 1.0;

  marker.lifetime = ros::Duration();
  while (ros::ok())
  {
		// Publish the marker
		while (marker_pub.getNumSubscribers() < 1)
		{
				if (!ros::ok())
				{
				return 0;
				}
				ROS_WARN_ONCE("Please create a subscriber to the marker");
				sleep(1);
		}

		if (pickup_valid == false)
		{		

			marker.action = visualization_msgs::Marker::ADD;
			marker_pub.publish(marker);
			ROS_INFO("Waiting for the bot to arrive");
		}

		else if (dropoff_valid == false)
		{	
			marker.action = visualization_msgs::Marker::DELETE;
			marker_pub.publish(marker);
			ROS_INFO("Wait here bot will arrive");
			ros::Duration(5.0).sleep();
		}
		else
		{		
			//show marker at drop point 
			marker.pose.position.x = x_drop;
			marker.pose.position.y = y_drop;
			marker.action = visualization_msgs::Marker::ADD;
			marker_pub.publish(marker);
		}

		ros::spinOnce();
  }
}
