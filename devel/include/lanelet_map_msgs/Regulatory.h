// Generated by gencpp from file lanelet_map_msgs/Regulatory.msg
// DO NOT EDIT!


#ifndef LANELET_MAP_MSGS_MESSAGE_REGULATORY_H
#define LANELET_MAP_MSGS_MESSAGE_REGULATORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lanelet_map_msgs/Node.h>
#include <lanelet_map_msgs/Way.h>

namespace lanelet_map_msgs
{
template <class ContainerAllocator>
struct Regulatory_
{
  typedef Regulatory_<ContainerAllocator> Type;

  Regulatory_()
    : special_nodes()
    , special_ways()  {
    }
  Regulatory_(const ContainerAllocator& _alloc)
    : special_nodes(_alloc)
    , special_ways(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::lanelet_map_msgs::Node_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lanelet_map_msgs::Node_<ContainerAllocator> >::other >  _special_nodes_type;
  _special_nodes_type special_nodes;

   typedef std::vector< ::lanelet_map_msgs::Way_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lanelet_map_msgs::Way_<ContainerAllocator> >::other >  _special_ways_type;
  _special_ways_type special_ways;





  typedef boost::shared_ptr< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> const> ConstPtr;

}; // struct Regulatory_

typedef ::lanelet_map_msgs::Regulatory_<std::allocator<void> > Regulatory;

typedef boost::shared_ptr< ::lanelet_map_msgs::Regulatory > RegulatoryPtr;
typedef boost::shared_ptr< ::lanelet_map_msgs::Regulatory const> RegulatoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lanelet_map_msgs::Regulatory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6181abd984439c0ed4c1b41afc66d563";
  }

  static const char* value(const ::lanelet_map_msgs::Regulatory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6181abd984439c0eULL;
  static const uint64_t static_value2 = 0xd4c1b41afc66d563ULL;
};

template<class ContainerAllocator>
struct DataType< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lanelet_map_msgs/Regulatory";
  }

  static const char* value(const ::lanelet_map_msgs::Regulatory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Node[] special_nodes\n\
Way[] special_ways\n\
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
";
  }

  static const char* value(const ::lanelet_map_msgs::Regulatory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.special_nodes);
      stream.next(m.special_ways);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Regulatory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lanelet_map_msgs::Regulatory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lanelet_map_msgs::Regulatory_<ContainerAllocator>& v)
  {
    s << indent << "special_nodes[]" << std::endl;
    for (size_t i = 0; i < v.special_nodes.size(); ++i)
    {
      s << indent << "  special_nodes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lanelet_map_msgs::Node_<ContainerAllocator> >::stream(s, indent + "    ", v.special_nodes[i]);
    }
    s << indent << "special_ways[]" << std::endl;
    for (size_t i = 0; i < v.special_ways.size(); ++i)
    {
      s << indent << "  special_ways[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lanelet_map_msgs::Way_<ContainerAllocator> >::stream(s, indent + "    ", v.special_ways[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LANELET_MAP_MSGS_MESSAGE_REGULATORY_H
