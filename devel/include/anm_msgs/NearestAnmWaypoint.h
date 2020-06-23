// Generated by gencpp from file anm_msgs/NearestAnmWaypoint.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_NEARESTANMWAYPOINT_H
#define ANM_MSGS_MESSAGE_NEARESTANMWAYPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace anm_msgs
{
template <class ContainerAllocator>
struct NearestAnmWaypoint_
{
  typedef NearestAnmWaypoint_<ContainerAllocator> Type;

  NearestAnmWaypoint_()
    : name()
    , distance(0.0)
    , now_reached(false)
    , last_reached(false)  {
    }
  NearestAnmWaypoint_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , distance(0.0)
    , now_reached(false)
    , last_reached(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _distance_type;
  _distance_type distance;

   typedef uint8_t _now_reached_type;
  _now_reached_type now_reached;

   typedef uint8_t _last_reached_type;
  _last_reached_type last_reached;





  typedef boost::shared_ptr< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> const> ConstPtr;

}; // struct NearestAnmWaypoint_

typedef ::anm_msgs::NearestAnmWaypoint_<std::allocator<void> > NearestAnmWaypoint;

typedef boost::shared_ptr< ::anm_msgs::NearestAnmWaypoint > NearestAnmWaypointPtr;
typedef boost::shared_ptr< ::anm_msgs::NearestAnmWaypoint const> NearestAnmWaypointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/dbw_mkz_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "804fca42cf51ff9c5042032107f82370";
  }

  static const char* value(const ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x804fca42cf51ff9cULL;
  static const uint64_t static_value2 = 0x5042032107f82370ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/NearestAnmWaypoint";
  }

  static const char* value(const ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The nearest anm_waypoint and its current distance\n\
# Note, the nearest anm_waypoint may be one that hasn't been reached yet\n\
\n\
string name        # special waypoint tag\n\
float64 distance   # distance in m\n\
bool now_reached   # true if distance is smaller than waypoint_radius\n\
bool last_reached  # true if this waypoint is the last to be in range\n\
";
  }

  static const char* value(const ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.distance);
      stream.next(m.now_reached);
      stream.next(m.last_reached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NearestAnmWaypoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::NearestAnmWaypoint_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
    s << indent << "now_reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.now_reached);
    s << indent << "last_reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.last_reached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_NEARESTANMWAYPOINT_H
