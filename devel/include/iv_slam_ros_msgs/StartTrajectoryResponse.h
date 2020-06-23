// Generated by gencpp from file iv_slam_ros_msgs/StartTrajectoryResponse.msg
// DO NOT EDIT!


#ifndef IV_SLAM_ROS_MSGS_MESSAGE_STARTTRAJECTORYRESPONSE_H
#define IV_SLAM_ROS_MSGS_MESSAGE_STARTTRAJECTORYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iv_slam_ros_msgs
{
template <class ContainerAllocator>
struct StartTrajectoryResponse_
{
  typedef StartTrajectoryResponse_<ContainerAllocator> Type;

  StartTrajectoryResponse_()
    : trajectory_id(0)  {
    }
  StartTrajectoryResponse_(const ContainerAllocator& _alloc)
    : trajectory_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _trajectory_id_type;
  _trajectory_id_type trajectory_id;





  typedef boost::shared_ptr< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StartTrajectoryResponse_

typedef ::iv_slam_ros_msgs::StartTrajectoryResponse_<std::allocator<void> > StartTrajectoryResponse;

typedef boost::shared_ptr< ::iv_slam_ros_msgs::StartTrajectoryResponse > StartTrajectoryResponsePtr;
typedef boost::shared_ptr< ::iv_slam_ros_msgs::StartTrajectoryResponse const> StartTrajectoryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace iv_slam_ros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'iv_slam_ros_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e190c4be941828bcd09ea05053f4bb5";
  }

  static const char* value(const ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e190c4be941828bULL;
  static const uint64_t static_value2 = 0xcd09ea05053f4bb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iv_slam_ros_msgs/StartTrajectoryResponse";
  }

  static const char* value(const ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 trajectory_id\n\
\n\
";
  }

  static const char* value(const ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartTrajectoryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iv_slam_ros_msgs::StartTrajectoryResponse_<ContainerAllocator>& v)
  {
    s << indent << "trajectory_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trajectory_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IV_SLAM_ROS_MSGS_MESSAGE_STARTTRAJECTORYRESPONSE_H
