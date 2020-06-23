// Generated by gencpp from file speed_debug_msgs/cur_steer.msg
// DO NOT EDIT!


#ifndef SPEED_DEBUG_MSGS_MESSAGE_CUR_STEER_H
#define SPEED_DEBUG_MSGS_MESSAGE_CUR_STEER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace speed_debug_msgs
{
template <class ContainerAllocator>
struct cur_steer_
{
  typedef cur_steer_<ContainerAllocator> Type;

  cur_steer_()
    : steer(0.0)  {
    }
  cur_steer_(const ContainerAllocator& _alloc)
    : steer(0.0)  {
  (void)_alloc;
    }



   typedef double _steer_type;
  _steer_type steer;





  typedef boost::shared_ptr< ::speed_debug_msgs::cur_steer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::speed_debug_msgs::cur_steer_<ContainerAllocator> const> ConstPtr;

}; // struct cur_steer_

typedef ::speed_debug_msgs::cur_steer_<std::allocator<void> > cur_steer;

typedef boost::shared_ptr< ::speed_debug_msgs::cur_steer > cur_steerPtr;
typedef boost::shared_ptr< ::speed_debug_msgs::cur_steer const> cur_steerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::speed_debug_msgs::cur_steer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace speed_debug_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'speed_debug_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::speed_debug_msgs::cur_steer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_debug_msgs::cur_steer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_debug_msgs::cur_steer_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d559fc901d9e414fce2d38e5b85af3e0";
  }

  static const char* value(const ::speed_debug_msgs::cur_steer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd559fc901d9e414fULL;
  static const uint64_t static_value2 = 0xce2d38e5b85af3e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "speed_debug_msgs/cur_steer";
  }

  static const char* value(const ::speed_debug_msgs::cur_steer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 steer\n\
";
  }

  static const char* value(const ::speed_debug_msgs::cur_steer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.steer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cur_steer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::speed_debug_msgs::cur_steer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::speed_debug_msgs::cur_steer_<ContainerAllocator>& v)
  {
    s << indent << "steer: ";
    Printer<double>::stream(s, indent + "  ", v.steer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPEED_DEBUG_MSGS_MESSAGE_CUR_STEER_H