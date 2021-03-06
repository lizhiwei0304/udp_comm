// Generated by gencpp from file iv_slam_ros_msgs/WriteState.msg
// DO NOT EDIT!


#ifndef IV_SLAM_ROS_MSGS_MESSAGE_WRITESTATE_H
#define IV_SLAM_ROS_MSGS_MESSAGE_WRITESTATE_H

#include <ros/service_traits.h>


#include <iv_slam_ros_msgs/WriteStateRequest.h>
#include <iv_slam_ros_msgs/WriteStateResponse.h>


namespace iv_slam_ros_msgs
{

struct WriteState
{

typedef WriteStateRequest Request;
typedef WriteStateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WriteState
} // namespace iv_slam_ros_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iv_slam_ros_msgs::WriteState > {
  static const char* value()
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const ::iv_slam_ros_msgs::WriteState&) { return value(); }
};

template<>
struct DataType< ::iv_slam_ros_msgs::WriteState > {
  static const char* value()
  {
    return "iv_slam_ros_msgs/WriteState";
  }

  static const char* value(const ::iv_slam_ros_msgs::WriteState&) { return value(); }
};


// service_traits::MD5Sum< ::iv_slam_ros_msgs::WriteStateRequest> should match 
// service_traits::MD5Sum< ::iv_slam_ros_msgs::WriteState > 
template<>
struct MD5Sum< ::iv_slam_ros_msgs::WriteStateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iv_slam_ros_msgs::WriteState >::value();
  }
  static const char* value(const ::iv_slam_ros_msgs::WriteStateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iv_slam_ros_msgs::WriteStateRequest> should match 
// service_traits::DataType< ::iv_slam_ros_msgs::WriteState > 
template<>
struct DataType< ::iv_slam_ros_msgs::WriteStateRequest>
{
  static const char* value()
  {
    return DataType< ::iv_slam_ros_msgs::WriteState >::value();
  }
  static const char* value(const ::iv_slam_ros_msgs::WriteStateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iv_slam_ros_msgs::WriteStateResponse> should match 
// service_traits::MD5Sum< ::iv_slam_ros_msgs::WriteState > 
template<>
struct MD5Sum< ::iv_slam_ros_msgs::WriteStateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iv_slam_ros_msgs::WriteState >::value();
  }
  static const char* value(const ::iv_slam_ros_msgs::WriteStateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iv_slam_ros_msgs::WriteStateResponse> should match 
// service_traits::DataType< ::iv_slam_ros_msgs::WriteState > 
template<>
struct DataType< ::iv_slam_ros_msgs::WriteStateResponse>
{
  static const char* value()
  {
    return DataType< ::iv_slam_ros_msgs::WriteState >::value();
  }
  static const char* value(const ::iv_slam_ros_msgs::WriteStateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IV_SLAM_ROS_MSGS_MESSAGE_WRITESTATE_H
