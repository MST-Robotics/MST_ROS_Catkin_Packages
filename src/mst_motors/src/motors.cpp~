#include <ros/rosh.h>
#include <geometry_msgs/Twist.h>

using namespace std;

float linearVel;
float angularVel;

//publishes an angular z and a linear x to the arduino node ranges are 1 to -1
void twistCallback(const geometry_msg::Twist::ConstPtr& msg)
{
  //taking subscribed messages from Twist  
  linearVel = msg->linear.x;
  angularVel = msg->angular.z;
  return;
} 

int main(int argc, char **argv)
{
  //creating ros node for publishing motor messages to arduino
  ros::init(argc, argv, "");
  
  ros::NodeHandle n;
  
  ros::Subscriber sub = n.subscribe("/cmd_vel", 1, twistCallback);
  
  ros::Publisher motorSpeed = ;
  
  //set how often it publishes and looks for messages
  ros::Rate loop_rate(30);  
  
  //constantly publishes linear velocity to each motor
  while(ros::ok())
  {
    //velocity 0 -> 255
    //direction 1 -> back, 0 -> forward
  
  
  }


  return 0; 
}

