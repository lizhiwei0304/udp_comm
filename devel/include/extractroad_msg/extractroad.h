// Generated by gencpp from file extractroad_msg/extractroad.msg
// DO NOT EDIT!


#ifndef EXTRACTROAD_MSG_MESSAGE_EXTRACTROAD_H
#define EXTRACTROAD_MSG_MESSAGE_EXTRACTROAD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace extractroad_msg
{
template <class ContainerAllocator>
struct extractroad_
{
  typedef extractroad_<ContainerAllocator> Type;

  extractroad_()
    : header()
    , roadcount(0)
    , vehicle_point()
    , leadpoints()  {
      vehicle_point.assign(0.0);
  }
  extractroad_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , roadcount(0)
    , vehicle_point()
    , leadpoints(_alloc)  {
  (void)_alloc;
      vehicle_point.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _roadcount_type;
  _roadcount_type roadcount;

   typedef boost::array<double, 2>  _vehicle_point_type;
  _vehicle_point_type vehicle_point;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _leadpoints_type;
  _leadpoints_type leadpoints;





  typedef boost::shared_ptr< ::extractroad_msg::extractroad_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::extractroad_msg::extractroad_<ContainerAllocator> const> ConstPtr;

}; // struct extractroad_

typedef ::extractroad_msg::extractroad_<std::allocator<void> > extractroad;

typedef boost::shared_ptr< ::extractroad_msg::extractroad > extractroadPtr;
typedef boost::shared_ptr< ::extractroad_msg::extractroad const> extractroadConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::extractroad_msg::extractroad_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::extractroad_msg::extractroad_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace extractroad_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'extractroad_msg': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/extractroad_msg/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::extractroad_msg::extractroad_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::extractroad_msg::extractroad_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::extractroad_msg::extractroad_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::extractroad_msg::extractroad_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::extractroad_msg::extractroad_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::extractroad_msg::extractroad_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::extractroad_msg::extractroad_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc64a4728149eec5d7e18874d8617290";
  }

  static const char* value(const ::extractroad_msg::extractroad_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc64a4728149eec5ULL;
  static const uint64_t static_value2 = 0xd7e18874d8617290ULL;
};

template<class ContainerAllocator>
struct DataType< ::extractroad_msg::extractroad_<ContainerAllocator> >
{
  static const char* value()
  {
    return "extractroad_msg/extractroad";
  }

  static const char* value(const ::extractroad_msg::extractroad_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::extractroad_msg::extractroad_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
std_msgs/Header header\n\
int16 roadcount\n\
float64[2] vehicle_point\n\
float64[] leadpoints\n\
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

  static const char* value(const ::extractroad_msg::extractroad_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::extractroad_msg::extractroad_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.roadcount);
      stream.next(m.vehicle_point);
      stream.next(m.leadpoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct extractroad_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::extractroad_msg::extractroad_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::extractroad_msg::extractroad_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "roadcount: ";
    Printer<int16_t>::stream(s, indent + "  ", v.roadcount);
    s << indent << "vehicle_point[]" << std::endl;
    for (size_t i = 0; i < v.vehicle_point.size(); ++i)
    {
      s << indent << "  vehicle_point[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.vehicle_point[i]);
    }
    s << indent << "leadpoints[]" << std::endl;
    for (size_t i = 0; i < v.leadpoints.size(); ++i)
    {
      s << indent << "  leadpoints[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.leadpoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXTRACTROAD_MSG_MESSAGE_EXTRACTROAD_H