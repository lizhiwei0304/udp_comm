// Generated by gencpp from file iv_slam_ros_msgs/SubmapEntry.msg
// DO NOT EDIT!


#ifndef IV_SLAM_ROS_MSGS_MESSAGE_SUBMAPENTRY_H
#define IV_SLAM_ROS_MSGS_MESSAGE_SUBMAPENTRY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace iv_slam_ros_msgs
{
template <class ContainerAllocator>
struct SubmapEntry_
{
  typedef SubmapEntry_<ContainerAllocator> Type;

  SubmapEntry_()
    : trajectory_id(0)
    , submap_index(0)
    , submap_version(0)
    , pose()  {
    }
  SubmapEntry_(const ContainerAllocator& _alloc)
    : trajectory_id(0)
    , submap_index(0)
    , submap_version(0)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _trajectory_id_type;
  _trajectory_id_type trajectory_id;

   typedef int32_t _submap_index_type;
  _submap_index_type submap_index;

   typedef int32_t _submap_version_type;
  _submap_version_type submap_version;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> const> ConstPtr;

}; // struct SubmapEntry_

typedef ::iv_slam_ros_msgs::SubmapEntry_<std::allocator<void> > SubmapEntry;

typedef boost::shared_ptr< ::iv_slam_ros_msgs::SubmapEntry > SubmapEntryPtr;
typedef boost::shared_ptr< ::iv_slam_ros_msgs::SubmapEntry const> SubmapEntryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85508bfe057d19be9b747d647b124234";
  }

  static const char* value(const ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85508bfe057d19beULL;
  static const uint64_t static_value2 = 0x9b747d647b124234ULL;
};

template<class ContainerAllocator>
struct DataType< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iv_slam_ros_msgs/SubmapEntry";
  }

  static const char* value(const ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int32 trajectory_id\n\
int32 submap_index\n\
int32 submap_version\n\
geometry_msgs/Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory_id);
      stream.next(m.submap_index);
      stream.next(m.submap_version);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SubmapEntry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iv_slam_ros_msgs::SubmapEntry_<ContainerAllocator>& v)
  {
    s << indent << "trajectory_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trajectory_id);
    s << indent << "submap_index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.submap_index);
    s << indent << "submap_version: ";
    Printer<int32_t>::stream(s, indent + "  ", v.submap_version);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IV_SLAM_ROS_MSGS_MESSAGE_SUBMAPENTRY_H
