// Generated by gencpp from file iv_dynamicobject_msgs/ECUData.msg
// DO NOT EDIT!


#ifndef IV_DYNAMICOBJECT_MSGS_MESSAGE_ECUDATA_H
#define IV_DYNAMICOBJECT_MSGS_MESSAGE_ECUDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace iv_dynamicobject_msgs
{
template <class ContainerAllocator>
struct ECUData_
{
  typedef ECUData_<ContainerAllocator> Type;

  ECUData_()
    : header()
    , fDeForwardVel(0.0)
    , fFLRWheelAverAngle(0.0)
    , fForwardVel(0.0)
    , petral_pressure(0.0)
    , pressure_back(0.0)
    , FrontLeftWheelSpeed(0.0)
    , FrontRightWheelSpeed(0.0)
    , BackLeftWheelSpeed(0.0)
    , BackRightWheelSpeed(0.0)  {
    }
  ECUData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , fDeForwardVel(0.0)
    , fFLRWheelAverAngle(0.0)
    , fForwardVel(0.0)
    , petral_pressure(0.0)
    , pressure_back(0.0)
    , FrontLeftWheelSpeed(0.0)
    , FrontRightWheelSpeed(0.0)
    , BackLeftWheelSpeed(0.0)
    , BackRightWheelSpeed(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _fDeForwardVel_type;
  _fDeForwardVel_type fDeForwardVel;

   typedef double _fFLRWheelAverAngle_type;
  _fFLRWheelAverAngle_type fFLRWheelAverAngle;

   typedef double _fForwardVel_type;
  _fForwardVel_type fForwardVel;

   typedef double _petral_pressure_type;
  _petral_pressure_type petral_pressure;

   typedef double _pressure_back_type;
  _pressure_back_type pressure_back;

   typedef double _FrontLeftWheelSpeed_type;
  _FrontLeftWheelSpeed_type FrontLeftWheelSpeed;

   typedef double _FrontRightWheelSpeed_type;
  _FrontRightWheelSpeed_type FrontRightWheelSpeed;

   typedef double _BackLeftWheelSpeed_type;
  _BackLeftWheelSpeed_type BackLeftWheelSpeed;

   typedef double _BackRightWheelSpeed_type;
  _BackRightWheelSpeed_type BackRightWheelSpeed;





  typedef boost::shared_ptr< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> const> ConstPtr;

}; // struct ECUData_

typedef ::iv_dynamicobject_msgs::ECUData_<std::allocator<void> > ECUData;

typedef boost::shared_ptr< ::iv_dynamicobject_msgs::ECUData > ECUDataPtr;
typedef boost::shared_ptr< ::iv_dynamicobject_msgs::ECUData const> ECUDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace iv_dynamicobject_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'iv_dynamicobject_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_dynamicobject_msgs/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0aea8dada7af9f1ea02824320b82f004";
  }

  static const char* value(const ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0aea8dada7af9f1eULL;
  static const uint64_t static_value2 = 0xa02824320b82f004ULL;
};

template<class ContainerAllocator>
struct DataType< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iv_dynamicobject_msgs/ECUData";
  }

  static const char* value(const ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
\n\
float64 fDeForwardVel\n\
float64 fFLRWheelAverAngle\n\
\n\
#vehicle speed\n\
float64 fForwardVel\n\
\n\
float64 petral_pressure\n\
float64 pressure_back\n\
float64 FrontLeftWheelSpeed\n\
float64 FrontRightWheelSpeed\n\
float64 BackLeftWheelSpeed\n\
float64 BackRightWheelSpeed\n\
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

  static const char* value(const ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.fDeForwardVel);
      stream.next(m.fFLRWheelAverAngle);
      stream.next(m.fForwardVel);
      stream.next(m.petral_pressure);
      stream.next(m.pressure_back);
      stream.next(m.FrontLeftWheelSpeed);
      stream.next(m.FrontRightWheelSpeed);
      stream.next(m.BackLeftWheelSpeed);
      stream.next(m.BackRightWheelSpeed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ECUData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iv_dynamicobject_msgs::ECUData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "fDeForwardVel: ";
    Printer<double>::stream(s, indent + "  ", v.fDeForwardVel);
    s << indent << "fFLRWheelAverAngle: ";
    Printer<double>::stream(s, indent + "  ", v.fFLRWheelAverAngle);
    s << indent << "fForwardVel: ";
    Printer<double>::stream(s, indent + "  ", v.fForwardVel);
    s << indent << "petral_pressure: ";
    Printer<double>::stream(s, indent + "  ", v.petral_pressure);
    s << indent << "pressure_back: ";
    Printer<double>::stream(s, indent + "  ", v.pressure_back);
    s << indent << "FrontLeftWheelSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.FrontLeftWheelSpeed);
    s << indent << "FrontRightWheelSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.FrontRightWheelSpeed);
    s << indent << "BackLeftWheelSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.BackLeftWheelSpeed);
    s << indent << "BackRightWheelSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.BackRightWheelSpeed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IV_DYNAMICOBJECT_MSGS_MESSAGE_ECUDATA_H
