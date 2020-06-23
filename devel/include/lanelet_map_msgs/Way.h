// Generated by gencpp from file lanelet_map_msgs/Way.msg
// DO NOT EDIT!


#ifndef LANELET_MAP_MSGS_MESSAGE_WAY_H
#define LANELET_MAP_MSGS_MESSAGE_WAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lanelet_map_msgs/Node.h>

namespace lanelet_map_msgs
{
template <class ContainerAllocator>
struct Way_
{
  typedef Way_<ContainerAllocator> Type;

  Way_()
    : task_area()
    , is_forward(0)
    , open_concave_obs_det(0)
    , open_dynamic_obs_det(0)
    , open_foggy_det(0)
    , open_water_det(0)
    , foggy_area(0)
    , lawn_area(0)
    , water_area(0)
    , vel_limit(0.0)
    , points()  {
    }
  Way_(const ContainerAllocator& _alloc)
    : task_area(_alloc)
    , is_forward(0)
    , open_concave_obs_det(0)
    , open_dynamic_obs_det(0)
    , open_foggy_det(0)
    , open_water_det(0)
    , foggy_area(0)
    , lawn_area(0)
    , water_area(0)
    , vel_limit(0.0)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _task_area_type;
  _task_area_type task_area;

   typedef int8_t _is_forward_type;
  _is_forward_type is_forward;

   typedef int8_t _open_concave_obs_det_type;
  _open_concave_obs_det_type open_concave_obs_det;

   typedef int8_t _open_dynamic_obs_det_type;
  _open_dynamic_obs_det_type open_dynamic_obs_det;

   typedef int8_t _open_foggy_det_type;
  _open_foggy_det_type open_foggy_det;

   typedef int8_t _open_water_det_type;
  _open_water_det_type open_water_det;

   typedef int8_t _foggy_area_type;
  _foggy_area_type foggy_area;

   typedef int8_t _lawn_area_type;
  _lawn_area_type lawn_area;

   typedef int8_t _water_area_type;
  _water_area_type water_area;

   typedef double _vel_limit_type;
  _vel_limit_type vel_limit;

   typedef std::vector< ::lanelet_map_msgs::Node_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lanelet_map_msgs::Node_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::lanelet_map_msgs::Way_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lanelet_map_msgs::Way_<ContainerAllocator> const> ConstPtr;

}; // struct Way_

typedef ::lanelet_map_msgs::Way_<std::allocator<void> > Way;

typedef boost::shared_ptr< ::lanelet_map_msgs::Way > WayPtr;
typedef boost::shared_ptr< ::lanelet_map_msgs::Way const> WayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lanelet_map_msgs::Way_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lanelet_map_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'lanelet_map_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lanelet_map_msgs::Way_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lanelet_map_msgs::Way_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Way_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Way_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Way_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Way_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lanelet_map_msgs::Way_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3097cc04a1c9c7fa806bc8a9fb7f37c1";
  }

  static const char* value(const ::lanelet_map_msgs::Way_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3097cc04a1c9c7faULL;
  static const uint64_t static_value2 = 0x806bc8a9fb7f37c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::lanelet_map_msgs::Way_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lanelet_map_msgs/Way";
  }

  static const char* value(const ::lanelet_map_msgs::Way_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lanelet_map_msgs::Way_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string task_area\n\
int8 is_forward\n\
int8 open_concave_obs_det\n\
int8 open_dynamic_obs_det\n\
int8 open_foggy_det\n\
int8 open_water_det\n\
int8 foggy_area\n\
int8 lawn_area\n\
int8 water_area\n\
float64 vel_limit\n\
Node[] points\n\
\n\
================================================================================\n\
MSG: lanelet_map_msgs/Node\n\
int32 id\n\
string type\n\
float64 vlimit\n\
geometry_msgs/Point point\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::lanelet_map_msgs::Way_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lanelet_map_msgs::Way_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_area);
      stream.next(m.is_forward);
      stream.next(m.open_concave_obs_det);
      stream.next(m.open_dynamic_obs_det);
      stream.next(m.open_foggy_det);
      stream.next(m.open_water_det);
      stream.next(m.foggy_area);
      stream.next(m.lawn_area);
      stream.next(m.water_area);
      stream.next(m.vel_limit);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Way_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lanelet_map_msgs::Way_<ContainerAllocator>& v)
  {
    s << indent << "task_area: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.task_area);
    s << indent << "is_forward: ";
    Printer<int8_t>::stream(s, indent + "  ", v.is_forward);
    s << indent << "open_concave_obs_det: ";
    Printer<int8_t>::stream(s, indent + "  ", v.open_concave_obs_det);
    s << indent << "open_dynamic_obs_det: ";
    Printer<int8_t>::stream(s, indent + "  ", v.open_dynamic_obs_det);
    s << indent << "open_foggy_det: ";
    Printer<int8_t>::stream(s, indent + "  ", v.open_foggy_det);
    s << indent << "open_water_det: ";
    Printer<int8_t>::stream(s, indent + "  ", v.open_water_det);
    s << indent << "foggy_area: ";
    Printer<int8_t>::stream(s, indent + "  ", v.foggy_area);
    s << indent << "lawn_area: ";
    Printer<int8_t>::stream(s, indent + "  ", v.lawn_area);
    s << indent << "water_area: ";
    Printer<int8_t>::stream(s, indent + "  ", v.water_area);
    s << indent << "vel_limit: ";
    Printer<double>::stream(s, indent + "  ", v.vel_limit);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lanelet_map_msgs::Node_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LANELET_MAP_MSGS_MESSAGE_WAY_H
