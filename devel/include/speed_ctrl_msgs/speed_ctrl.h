// Generated by gencpp from file speed_ctrl_msgs/speed_ctrl.msg
// DO NOT EDIT!


#ifndef SPEED_CTRL_MSGS_MESSAGE_SPEED_CTRL_H
#define SPEED_CTRL_MSGS_MESSAGE_SPEED_CTRL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace speed_ctrl_msgs
{
template <class ContainerAllocator>
struct speed_ctrl_
{
  typedef speed_ctrl_<ContainerAllocator> Type;

  speed_ctrl_()
    : direction(0)
    , count(0)
    , issue_acc(0.0)
    , issue_v(0.0)
    , cur_acc(0.0)
    , cur_speed(0.0)
    , rc_path_time(0.0)
    , pub_acc_time(0.0)
    , rc_acc_time(0.0)
    , pub_cmd_time(0.0)
    , total_s(0.0)
    , curv_max(0.0)
    , v_max(0.0)
    , running_mode(0)  {
    }
  speed_ctrl_(const ContainerAllocator& _alloc)
    : direction(0)
    , count(0)
    , issue_acc(0.0)
    , issue_v(0.0)
    , cur_acc(0.0)
    , cur_speed(0.0)
    , rc_path_time(0.0)
    , pub_acc_time(0.0)
    , rc_acc_time(0.0)
    , pub_cmd_time(0.0)
    , total_s(0.0)
    , curv_max(0.0)
    , v_max(0.0)
    , running_mode(0)  {
  (void)_alloc;
    }



   typedef uint8_t _direction_type;
  _direction_type direction;

   typedef uint32_t _count_type;
  _count_type count;

   typedef double _issue_acc_type;
  _issue_acc_type issue_acc;

   typedef double _issue_v_type;
  _issue_v_type issue_v;

   typedef double _cur_acc_type;
  _cur_acc_type cur_acc;

   typedef double _cur_speed_type;
  _cur_speed_type cur_speed;

   typedef double _rc_path_time_type;
  _rc_path_time_type rc_path_time;

   typedef double _pub_acc_time_type;
  _pub_acc_time_type pub_acc_time;

   typedef double _rc_acc_time_type;
  _rc_acc_time_type rc_acc_time;

   typedef double _pub_cmd_time_type;
  _pub_cmd_time_type pub_cmd_time;

   typedef double _total_s_type;
  _total_s_type total_s;

   typedef double _curv_max_type;
  _curv_max_type curv_max;

   typedef double _v_max_type;
  _v_max_type v_max;

   typedef uint8_t _running_mode_type;
  _running_mode_type running_mode;





  typedef boost::shared_ptr< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> const> ConstPtr;

}; // struct speed_ctrl_

typedef ::speed_ctrl_msgs::speed_ctrl_<std::allocator<void> > speed_ctrl;

typedef boost::shared_ptr< ::speed_ctrl_msgs::speed_ctrl > speed_ctrlPtr;
typedef boost::shared_ptr< ::speed_ctrl_msgs::speed_ctrl const> speed_ctrlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace speed_ctrl_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'speed_ctrl_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eca0c122130abed6f501d6e0ed63b576";
  }

  static const char* value(const ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeca0c122130abed6ULL;
  static const uint64_t static_value2 = 0xf501d6e0ed63b576ULL;
};

template<class ContainerAllocator>
struct DataType< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "speed_ctrl_msgs/speed_ctrl";
  }

  static const char* value(const ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 direction\n\
uint32 count\n\
float64 issue_acc\n\
float64 issue_v\n\
float64 cur_acc\n\
float64 cur_speed\n\
float64 rc_path_time\n\
float64 pub_acc_time\n\
float64 rc_acc_time\n\
float64 pub_cmd_time\n\
\n\
## for debug\n\
float64 total_s\n\
float64 curv_max\n\
float64 v_max\n\
uint8 running_mode\n\
";
  }

  static const char* value(const ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.count);
      stream.next(m.issue_acc);
      stream.next(m.issue_v);
      stream.next(m.cur_acc);
      stream.next(m.cur_speed);
      stream.next(m.rc_path_time);
      stream.next(m.pub_acc_time);
      stream.next(m.rc_acc_time);
      stream.next(m.pub_cmd_time);
      stream.next(m.total_s);
      stream.next(m.curv_max);
      stream.next(m.v_max);
      stream.next(m.running_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speed_ctrl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::speed_ctrl_msgs::speed_ctrl_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direction);
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
    s << indent << "issue_acc: ";
    Printer<double>::stream(s, indent + "  ", v.issue_acc);
    s << indent << "issue_v: ";
    Printer<double>::stream(s, indent + "  ", v.issue_v);
    s << indent << "cur_acc: ";
    Printer<double>::stream(s, indent + "  ", v.cur_acc);
    s << indent << "cur_speed: ";
    Printer<double>::stream(s, indent + "  ", v.cur_speed);
    s << indent << "rc_path_time: ";
    Printer<double>::stream(s, indent + "  ", v.rc_path_time);
    s << indent << "pub_acc_time: ";
    Printer<double>::stream(s, indent + "  ", v.pub_acc_time);
    s << indent << "rc_acc_time: ";
    Printer<double>::stream(s, indent + "  ", v.rc_acc_time);
    s << indent << "pub_cmd_time: ";
    Printer<double>::stream(s, indent + "  ", v.pub_cmd_time);
    s << indent << "total_s: ";
    Printer<double>::stream(s, indent + "  ", v.total_s);
    s << indent << "curv_max: ";
    Printer<double>::stream(s, indent + "  ", v.curv_max);
    s << indent << "v_max: ";
    Printer<double>::stream(s, indent + "  ", v.v_max);
    s << indent << "running_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.running_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPEED_CTRL_MSGS_MESSAGE_SPEED_CTRL_H
