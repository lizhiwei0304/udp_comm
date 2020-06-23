// Generated by gencpp from file anm_msgs/V2XVehicleList.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_V2XVEHICLELIST_H
#define ANM_MSGS_MESSAGE_V2XVEHICLELIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <anm_msgs/V2XVehicle.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct V2XVehicleList_
{
  typedef V2XVehicleList_<ContainerAllocator> Type;

  V2XVehicleList_()
    : header()
    , vehicles()  {
    }
  V2XVehicleList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , vehicles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::anm_msgs::V2XVehicle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::anm_msgs::V2XVehicle_<ContainerAllocator> >::other >  _vehicles_type;
  _vehicles_type vehicles;





  typedef boost::shared_ptr< ::anm_msgs::V2XVehicleList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::V2XVehicleList_<ContainerAllocator> const> ConstPtr;

}; // struct V2XVehicleList_

typedef ::anm_msgs::V2XVehicleList_<std::allocator<void> > V2XVehicleList;

typedef boost::shared_ptr< ::anm_msgs::V2XVehicleList > V2XVehicleListPtr;
typedef boost::shared_ptr< ::anm_msgs::V2XVehicleList const> V2XVehicleListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::V2XVehicleList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/dbw_mkz_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XVehicleList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XVehicleList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XVehicleList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f758b76380074c54472a3cc1598b5be7";
  }

  static const char* value(const ::anm_msgs::V2XVehicleList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf758b76380074c54ULL;
  static const uint64_t static_value2 = 0x472a3cc1598b5be7ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/V2XVehicleList";
  }

  static const char* value(const ::anm_msgs::V2XVehicleList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# List of v2x vehicles\n\
\n\
Header header\n\
V2XVehicle[] vehicles\n\
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
\n\
================================================================================\n\
MSG: anm_msgs/V2XVehicle\n\
# Vehicle v2x custom header\n\
#\n\
# id       = ID of vehicle\n\
# position = x y position in odom frame (meters)\n\
# speed    = speed of the vehicle (meters/second)\n\
# yaw      = heading in radians north of east\n\
# self     = if this is the local vehicle, true, otherwise, false\n\
\n\
uint32 id\n\
geometry_msgs/Point position\n\
float64 speed\n\
float64 yaw\n\
bool is_self\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::anm_msgs::V2XVehicleList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.vehicles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V2XVehicleList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::V2XVehicleList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::V2XVehicleList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "vehicles[]" << std::endl;
    for (size_t i = 0; i < v.vehicles.size(); ++i)
    {
      s << indent << "  vehicles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::anm_msgs::V2XVehicle_<ContainerAllocator> >::stream(s, indent + "    ", v.vehicles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_V2XVEHICLELIST_H
