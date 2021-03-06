// Generated by gencpp from file dymidetect2speed_msgs/dymicol_point.msg
// DO NOT EDIT!


#ifndef DYMIDETECT2SPEED_MSGS_MESSAGE_DYMICOL_POINT_H
#define DYMIDETECT2SPEED_MSGS_MESSAGE_DYMICOL_POINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace dymidetect2speed_msgs
{
template <class ContainerAllocator>
struct dymicol_point_
{
  typedef dymicol_point_<ContainerAllocator> Type;

  dymicol_point_()
    : header()
    , point_x(0.0)
    , point_y(0.0)
    , vel_to_dymicol(0.0)
    , exp_vel(0.0)
    , path_point_index(0)
    , collision(0)  {
    }
  dymicol_point_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , point_x(0.0)
    , point_y(0.0)
    , vel_to_dymicol(0.0)
    , exp_vel(0.0)
    , path_point_index(0)
    , collision(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _point_x_type;
  _point_x_type point_x;

   typedef double _point_y_type;
  _point_y_type point_y;

   typedef double _vel_to_dymicol_type;
  _vel_to_dymicol_type vel_to_dymicol;

   typedef double _exp_vel_type;
  _exp_vel_type exp_vel;

   typedef int32_t _path_point_index_type;
  _path_point_index_type path_point_index;

   typedef uint8_t _collision_type;
  _collision_type collision;





  typedef boost::shared_ptr< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> const> ConstPtr;

}; // struct dymicol_point_

typedef ::dymidetect2speed_msgs::dymicol_point_<std::allocator<void> > dymicol_point;

typedef boost::shared_ptr< ::dymidetect2speed_msgs::dymicol_point > dymicol_pointPtr;
typedef boost::shared_ptr< ::dymidetect2speed_msgs::dymicol_point const> dymicol_pointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dymidetect2speed_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'dymidetect2speed_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/dymidetect2speed_msgs/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17116bc59d56961fa03b07a3caf2fd5e";
  }

  static const char* value(const ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17116bc59d56961fULL;
  static const uint64_t static_value2 = 0xa03b07a3caf2fd5eULL;
};

template<class ContainerAllocator>
struct DataType< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dymidetect2speed_msgs/dymicol_point";
  }

  static const char* value(const ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
\n\
float64 point_x\n\
float64 point_y\n\
float64 vel_to_dymicol\n\
float64 exp_vel\n\
int32 path_point_index\n\
uint8 collision\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.point_x);
      stream.next(m.point_y);
      stream.next(m.vel_to_dymicol);
      stream.next(m.exp_vel);
      stream.next(m.path_point_index);
      stream.next(m.collision);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct dymicol_point_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dymidetect2speed_msgs::dymicol_point_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "point_x: ";
    Printer<double>::stream(s, indent + "  ", v.point_x);
    s << indent << "point_y: ";
    Printer<double>::stream(s, indent + "  ", v.point_y);
    s << indent << "vel_to_dymicol: ";
    Printer<double>::stream(s, indent + "  ", v.vel_to_dymicol);
    s << indent << "exp_vel: ";
    Printer<double>::stream(s, indent + "  ", v.exp_vel);
    s << indent << "path_point_index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.path_point_index);
    s << indent << "collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYMIDETECT2SPEED_MSGS_MESSAGE_DYMICOL_POINT_H
