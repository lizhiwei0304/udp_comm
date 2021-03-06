// Generated by gencpp from file iv_slam_ros_msgs/insertion_submaps.msg
// DO NOT EDIT!


#ifndef IV_SLAM_ROS_MSGS_MESSAGE_INSERTION_SUBMAPS_H
#define IV_SLAM_ROS_MSGS_MESSAGE_INSERTION_SUBMAPS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <iv_slam_ros_msgs/SubmapIndex.h>

namespace iv_slam_ros_msgs
{
template <class ContainerAllocator>
struct insertion_submaps_
{
  typedef insertion_submaps_<ContainerAllocator> Type;

  insertion_submaps_()
    : num_submap(0)
    , submap()  {
    }
  insertion_submaps_(const ContainerAllocator& _alloc)
    : num_submap(0)
    , submap(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _num_submap_type;
  _num_submap_type num_submap;

   typedef std::vector< ::iv_slam_ros_msgs::SubmapIndex_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::iv_slam_ros_msgs::SubmapIndex_<ContainerAllocator> >::other >  _submap_type;
  _submap_type submap;





  typedef boost::shared_ptr< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> const> ConstPtr;

}; // struct insertion_submaps_

typedef ::iv_slam_ros_msgs::insertion_submaps_<std::allocator<void> > insertion_submaps;

typedef boost::shared_ptr< ::iv_slam_ros_msgs::insertion_submaps > insertion_submapsPtr;
typedef boost::shared_ptr< ::iv_slam_ros_msgs::insertion_submaps const> insertion_submapsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace iv_slam_ros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'iv_slam_ros_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4554e58a1354197bd7aaa4c53aabdba";
  }

  static const char* value(const ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4554e58a1354197ULL;
  static const uint64_t static_value2 = 0xbd7aaa4c53aabdbaULL;
};

template<class ContainerAllocator>
struct DataType< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iv_slam_ros_msgs/insertion_submaps";
  }

  static const char* value(const ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 num_submap\n\
SubmapIndex[] submap\n\
\n\
================================================================================\n\
MSG: iv_slam_ros_msgs/SubmapIndex\n\
int32 trajectory_id\n\
int32 submap_index\n\
bool finishflag\n\
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

  static const char* value(const ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num_submap);
      stream.next(m.submap);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct insertion_submaps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iv_slam_ros_msgs::insertion_submaps_<ContainerAllocator>& v)
  {
    s << indent << "num_submap: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_submap);
    s << indent << "submap[]" << std::endl;
    for (size_t i = 0; i < v.submap.size(); ++i)
    {
      s << indent << "  submap[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::iv_slam_ros_msgs::SubmapIndex_<ContainerAllocator> >::stream(s, indent + "    ", v.submap[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IV_SLAM_ROS_MSGS_MESSAGE_INSERTION_SUBMAPS_H
