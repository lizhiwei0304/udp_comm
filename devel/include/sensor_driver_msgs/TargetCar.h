// Generated by gencpp from file sensor_driver_msgs/TargetCar.msg
// DO NOT EDIT!


#ifndef SENSOR_DRIVER_MSGS_MESSAGE_TARGETCAR_H
#define SENSOR_DRIVER_MSGS_MESSAGE_TARGETCAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_driver_msgs/Rectangle.h>

namespace sensor_driver_msgs
{
template <class ContainerAllocator>
struct TargetCar_
{
  typedef TargetCar_<ContainerAllocator> Type;

  TargetCar_()
    : CarPosition()
    , num(0)  {
    }
  TargetCar_(const ContainerAllocator& _alloc)
    : CarPosition(_alloc)
    , num(0)  {
  (void)_alloc;
    }



   typedef std::vector< ::sensor_driver_msgs::Rectangle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::sensor_driver_msgs::Rectangle_<ContainerAllocator> >::other >  _CarPosition_type;
  _CarPosition_type CarPosition;

   typedef int32_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> const> ConstPtr;

}; // struct TargetCar_

typedef ::sensor_driver_msgs::TargetCar_<std::allocator<void> > TargetCar;

typedef boost::shared_ptr< ::sensor_driver_msgs::TargetCar > TargetCarPtr;
typedef boost::shared_ptr< ::sensor_driver_msgs::TargetCar const> TargetCarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_driver_msgs::TargetCar_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sensor_driver_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'sensor_driver_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/sensor_driver_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ef49c01eb2a83dc00d31ab0905a1439";
  }

  static const char* value(const ::sensor_driver_msgs::TargetCar_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ef49c01eb2a83dcULL;
  static const uint64_t static_value2 = 0x00d31ab0905a1439ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_driver_msgs/TargetCar";
  }

  static const char* value(const ::sensor_driver_msgs::TargetCar_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Rectangle[] CarPosition\n\
int32 num\n\
\n\
================================================================================\n\
MSG: sensor_driver_msgs/Rectangle\n\
Points Point1\n\
Points Point2\n\
Points Point3\n\
Points Point4\n\
float64 Height\n\
int32 Heading\n\
int32 Id_number\n\
float64 v_x\n\
float64 v_y\n\
\n\
================================================================================\n\
MSG: sensor_driver_msgs/Points\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::sensor_driver_msgs::TargetCar_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.CarPosition);
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetCar_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_driver_msgs::TargetCar_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_driver_msgs::TargetCar_<ContainerAllocator>& v)
  {
    s << indent << "CarPosition[]" << std::endl;
    for (size_t i = 0; i < v.CarPosition.size(); ++i)
    {
      s << indent << "  CarPosition[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_driver_msgs::Rectangle_<ContainerAllocator> >::stream(s, indent + "    ", v.CarPosition[i]);
    }
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_DRIVER_MSGS_MESSAGE_TARGETCAR_H
