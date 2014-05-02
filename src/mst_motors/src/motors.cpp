/*******************************************************************************
* @file: motors.cpp
* @author: Matt Anderson <mia2n4>
* @version: 1.0
* @brief: Subscribes to twist message which publishes an angular velocity 
          (angular.z) and a linear velocity (linear.x) and translates it to four
          signals which are used by the arduinos.  Velocity is a value between 0
          and 255 and direction is 1 for back and 0 for forward.
*******************************************************************************/


#include <ros/ros.h>

#include "geometry_msgs/Twist.h"
#include "std_msgs/Int16.h"
#include <cmath>

using namespace std;

float linearVel;
float angularVel;

/*******************************************************************************
* Constants
*******************************************************************************/
const float ROBOT_RAD  = 0.28; //meters
const float WHEEL_RAD  = 0.20; //meters
const float GEAR_RATIO = 0;    //don't know
const int   MAX_PUB    = 255;  //This is the max value that can be published

//Callback from twist which gets a linear and angular velocity
void twistCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
  //taking subscribed messages from Twist  
  linearVel = msg->linear.x;
  angularVel = msg->angular.z;
  return;
} 

int main(int argc, char **argv)
{
  //constants for scaling velocity
  const int TURNS_PER_SEC = GEAR_RATIO / (2 * WHEEL_RAD * M_PI);
  const int TURN_OFFSET = TURNS_PER_SEC * ROBOT_RAD;
  
  std_msgs::Int16 leftVel, rightVel;

  //create ros node for publishing motor messages to arduino
  ros::init(argc, argv, "");
  
  ros::NodeHandle n;
  
  ros::Subscriber sub = n.subscribe("/cmd_vel", 1, twistCallback);
  
  //Publishers PWM is speed with a max of 255 and min of 0 and DIR is a the
  //direction of the motor where 1 is back and 0 is forward
  ros::Publisher leftMotorSpeed  = n.advertise<std_msgs::Int16>("/PWM_A", 1);
  ros::Publisher leftMotorDir    = n.advertise<std_msgs::Int16>("/DIR_A", 1);
  ros::Publisher rightMotorSpeed = n.advertise<std_msgs::Int16>("/PWM_B", 1);
  ros::Publisher rightMotorDir   = n.advertise<std_msgs::Int16>("/DIR_B", 1);
  
  //set how often it publishes and looks for messages
  ros::Rate loop_rate(30);  
  
  //constantly publishes linear velocity to each motor
  while(ros::ok())
  {
    //velocity 0 -> 255
    //direction 1 -> back, 0 -> forward
    
    //Left and right velocities
    leftVel.data  = (linearVel * TURNS_PER_SEC) + (TURN_OFFSET * angularVel);
    rightVel.data = (linearVel * TURNS_PER_SEC) + (TURN_OFFSET * angularVel);
    
    //TODO: Find direction to spin motor
    
    //Scale the values to a max of 255
    leftVel.data  = abs(leftVel.data) / MAX_PUB;
    rightVel.data = abs(rightVel.data) / MAX_PUB;
    
    if(leftVel.data > MAX_PUB)
      leftVel.data = MAX_PUB;
    if(rightVel.data > MAX_PUB)
      rightVel.data = MAX_PUB;
    
    //publish the   
    leftMotorSpeed.publish(leftVel);
    rightMotorSpeed.publish(rightVel);  
  }


  return 0; 
}

