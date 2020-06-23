// Generated by gencpp from file lanelet_map_msgs/Lanelet.msg
// DO NOT EDIT!


#ifndef LANELET_MAP_MSGS_MESSAGE_LANELET_H
#define LANELET_MAP_MSGS_MESSAGE_LANELET_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lanelet_map_msgs/Way.h>
#include <lanelet_map_msgs/Way.h>
#include <lanelet_map_msgs/Way.h>
#include <lanelet_map_msgs/Regulatory.h>

namespace lanelet_map_msgs
{
template <class ContainerAllocator>
struct Lanelet_
{
  typedef Lanelet_<ContainerAllocator> Type;

  Lanelet_()
    : id(0)
    , left_bound()
    , right_bound()
    , centerline()
    , regulatory_elements()  {
    }
  Lanelet_(const ContainerAllocator& _alloc)
    : id(0)
    , left_bound(_alloc)
    , right_bound(_alloc)
    , centerline(_alloc)
    , regulatory_elements(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef  ::lanelet_map_msgs::Way_<ContainerAllocator>  _left_bound_type;
  _left_bound_type left_bound;

   typedef  ::lanelet_map_msgs::Way_<ContainerAllocator>  _right_bound_type;
  _right_bound_type right_bound;

   typedef  ::lanelet_map_msgs::Way_<ContainerAllocator>  _centerline_type;
  _centerline_type centerline;

   typedef  ::lanelet_map_msgs::Regulatory_<ContainerAllocator>  _regulatory_elements_type;
  _regulatory_elements_type regulatory_elements;





  typedef boost::shared_ptr< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> const> ConstPtr;

}; // struct Lanelet_

typedef ::lanelet_map_msgs::Lanelet_<std::allocator<void> > Lanelet;

typedef boost::shared_ptr< ::lanelet_map_msgs::Lanelet > LaneletPtr;
typedef boost::shared_ptr< ::lanelet_map_msgs::Lanelet const> LaneletConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lanelet_map_msgs::Lanelet_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "79efb21963470ed788ab90e3dd311d0e";
  }

  static const char* value(const ::lanelet_map_msgs::Lanelet_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x79efb21963470ed7ULL;
  static const uint64_t static_value2 = 0x88ab90e3dd311d0eULL;
};

template<class ContainerAllocator>
struct DataType< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lanelet_map_msgs/Lanelet";
  }

  static const char* value(const ::lanelet_map_msgs::Lanelet_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
Way left_bound\n\
Way right_bound\n\
Way centerline\n\
Regulatory regulatory_elements\n\
\n\
================================================================================\n\
MSG: lanelet_map_msgs/Way\n\
string task_area\n\
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
\n\
================================================================================\n\
MSG: lanelet_map_msgs/Regulatory\n\
Node[] special_nodes\n\
Way[] special_ways\n\
";
  }

  static const char* value(const ::lanelet_map_msgs::Lanelet_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.left_bound);
      stream.next(m.right_bound);
      stream.next(m.centerline);
      stream.next(m.regulatory_elements);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Lanelet_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lanelet_map_msgs::Lanelet_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lanelet_map_msgs::Lanelet_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "left_bound: ";
    s << std::endl;
    Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >::stream(s, indent + "  ", v.left_bound);
    s << indent << "right_bound: ";
    s << std::endl;
    Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >::stream(s, indent + "  ", v.right_bound);
    s << indent << "centerline: ";
    s << std::endl;
    Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >::stream(s, indent + "  ", v.centerline);
    s << indent << "regulatory_elements: ";
    s << std::endl;
    Printer< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >::stream(s, indent + "  ", v.regulatory_elements);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LANELET_MAP_MSGS_MESSAGE_LANELET_H
