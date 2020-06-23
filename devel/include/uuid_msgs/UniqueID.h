// Generated by gencpp from file uuid_msgs/UniqueID.msg
// DO NOT EDIT!


#ifndef UUID_MSGS_MESSAGE_UNIQUEID_H
#define UUID_MSGS_MESSAGE_UNIQUEID_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uuid_msgs
{
template <class ContainerAllocator>
struct UniqueID_
{
  typedef UniqueID_<ContainerAllocator> Type;

  UniqueID_()
    : uuid()  {
      uuid.assign(0);
  }
  UniqueID_(const ContainerAllocator& _alloc)
    : uuid()  {
  (void)_alloc;
      uuid.assign(0);
  }



   typedef boost::array<uint8_t, 16>  _uuid_type;
  _uuid_type uuid;





  typedef boost::shared_ptr< ::uuid_msgs::UniqueID_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuid_msgs::UniqueID_<ContainerAllocator> const> ConstPtr;

}; // struct UniqueID_

typedef ::uuid_msgs::UniqueID_<std::allocator<void> > UniqueID;

typedef boost::shared_ptr< ::uuid_msgs::UniqueID > UniqueIDPtr;
typedef boost::shared_ptr< ::uuid_msgs::UniqueID const> UniqueIDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuid_msgs::UniqueID_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace uuid_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'uuid_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/uuid_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::uuid_msgs::UniqueID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuid_msgs::UniqueID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuid_msgs::UniqueID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuid_msgs::UniqueID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuid_msgs::UniqueID_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuid_msgs::UniqueID_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuid_msgs::UniqueID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fec2a93b6f5367ee8112c9c0b41ff310";
  }

  static const char* value(const ::uuid_msgs::UniqueID_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfec2a93b6f5367eeULL;
  static const uint64_t static_value2 = 0x8112c9c0b41ff310ULL;
};

template<class ContainerAllocator>
struct DataType< ::uuid_msgs::UniqueID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuid_msgs/UniqueID";
  }

  static const char* value(const ::uuid_msgs::UniqueID_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuid_msgs::UniqueID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
";
  }

  static const char* value(const ::uuid_msgs::UniqueID_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuid_msgs::UniqueID_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.uuid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UniqueID_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuid_msgs::UniqueID_<ContainerAllocator>& v)
  {
    s << indent << "uuid[]" << std::endl;
    for (size_t i = 0; i < v.uuid.size(); ++i)
    {
      s << indent << "  uuid[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.uuid[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUID_MSGS_MESSAGE_UNIQUEID_H
