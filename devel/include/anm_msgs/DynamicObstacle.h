// Generated by gencpp from file anm_msgs/DynamicObstacle.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_DYNAMICOBSTACLE_H
#define ANM_MSGS_MESSAGE_DYNAMICOBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct DynamicObstacle_
{
  typedef DynamicObstacle_<ContainerAllocator> Type;

  DynamicObstacle_()
    : position()
    , dimensions()
    , speed(0.0)
    , yaw(0.0)  {
    }
  DynamicObstacle_(const ContainerAllocator& _alloc)
    : position(_alloc)
    , dimensions(_alloc)
    , speed(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _dimensions_type;
  _dimensions_type dimensions;

   typedef float _speed_type;
  _speed_type speed;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::anm_msgs::DynamicObstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::DynamicObstacle_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicObstacle_

typedef ::anm_msgs::DynamicObstacle_<std::allocator<void> > DynamicObstacle;

typedef boost::shared_ptr< ::anm_msgs::DynamicObstacle > DynamicObstaclePtr;
typedef boost::shared_ptr< ::anm_msgs::DynamicObstacle const> DynamicObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::DynamicObstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/dbw_mkz_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::DynamicObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::DynamicObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::DynamicObstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3276b97597f7ee28ba720e128f1fb772";
  }

  static const char* value(const ::anm_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3276b97597f7ee28ULL;
  static const uint64_t static_value2 = 0xba720e128f1fb772ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/DynamicObstacle";
  }

  static const char* value(const ::anm_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message decribes the information of dynamic obstacles in odom frame \n\
# position       =  The recent position of the dynamic obstacle(centroid of the object)\n\
# dimensions     =  The bounding box size:  length(along heading direction), width and height \n\
# speed          =  The speed of the car along the heading direction.\n\
# yaw            =  The recent heading of the car.  \n\
\n\
geometry_msgs/Point position\n\
geometry_msgs/Vector3 dimensions   # length width and height\n\
float32 speed\n\
float32 yaw \n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::anm_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.dimensions);
      stream.next(m.speed);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicObstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::DynamicObstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::DynamicObstacle_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "dimensions: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.dimensions);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_DYNAMICOBSTACLE_H