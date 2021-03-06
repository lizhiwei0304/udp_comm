// Generated by gencpp from file speed_debug_msgs/speed_issue.msg
// DO NOT EDIT!


#ifndef SPEED_DEBUG_MSGS_MESSAGE_SPEED_ISSUE_H
#define SPEED_DEBUG_MSGS_MESSAGE_SPEED_ISSUE_H


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
struct speed_issue_
{
  typedef speed_issue_<ContainerAllocator> Type;

  speed_issue_()
    : v(0.0)
    , acc(0.0)  {
    }
  speed_issue_(const ContainerAllocator& _alloc)
    : v(0.0)
    , acc(0.0)  {
  (void)_alloc;
    }



   typedef double _v_type;
  _v_type v;

   typedef double _acc_type;
  _acc_type acc;





  typedef boost::shared_ptr< ::speed_debug_msgs::speed_issue_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::speed_debug_msgs::speed_issue_<ContainerAllocator> const> ConstPtr;

}; // struct speed_issue_

typedef ::speed_debug_msgs::speed_issue_<std::allocator<void> > speed_issue;

typedef boost::shared_ptr< ::speed_debug_msgs::speed_issue > speed_issuePtr;
typedef boost::shared_ptr< ::speed_debug_msgs::speed_issue const> speed_issueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::speed_debug_msgs::speed_issue_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::speed_debug_msgs::speed_issue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_debug_msgs::speed_issue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_debug_msgs::speed_issue_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce1fb38e727855ee90e2d74b8df8c7ee";
  }

  static const char* value(const ::speed_debug_msgs::speed_issue_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce1fb38e727855eeULL;
  static const uint64_t static_value2 = 0x90e2d74b8df8c7eeULL;
};

template<class ContainerAllocator>
struct DataType< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "speed_debug_msgs/speed_issue";
  }

  static const char* value(const ::speed_debug_msgs::speed_issue_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 v\n\
float64 acc\n\
";
  }

  static const char* value(const ::speed_debug_msgs::speed_issue_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.v);
      stream.next(m.acc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speed_issue_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::speed_debug_msgs::speed_issue_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::speed_debug_msgs::speed_issue_<ContainerAllocator>& v)
  {
    s << indent << "v: ";
    Printer<double>::stream(s, indent + "  ", v.v);
    s << indent << "acc: ";
    Printer<double>::stream(s, indent + "  ", v.acc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPEED_DEBUG_MSGS_MESSAGE_SPEED_ISSUE_H
