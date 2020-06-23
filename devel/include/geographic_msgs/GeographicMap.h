// Generated by gencpp from file geographic_msgs/GeographicMap.msg
// DO NOT EDIT!


#ifndef GEOGRAPHIC_MSGS_MESSAGE_GEOGRAPHICMAP_H
#define GEOGRAPHIC_MSGS_MESSAGE_GEOGRAPHICMAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <uuid_msgs/UniqueID.h>
#include <geographic_msgs/BoundingBox.h>
#include <geographic_msgs/WayPoint.h>
#include <geographic_msgs/MapFeature.h>
#include <geographic_msgs/KeyValue.h>

namespace geographic_msgs
{
template <class ContainerAllocator>
struct GeographicMap_
{
  typedef GeographicMap_<ContainerAllocator> Type;

  GeographicMap_()
    : header()
    , id()
    , bounds()
    , points()
    , features()
    , props()  {
    }
  GeographicMap_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(_alloc)
    , bounds(_alloc)
    , points(_alloc)
    , features(_alloc)
    , props(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::geographic_msgs::BoundingBox_<ContainerAllocator>  _bounds_type;
  _bounds_type bounds;

   typedef std::vector< ::geographic_msgs::WayPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geographic_msgs::WayPoint_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef std::vector< ::geographic_msgs::MapFeature_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geographic_msgs::MapFeature_<ContainerAllocator> >::other >  _features_type;
  _features_type features;

   typedef std::vector< ::geographic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geographic_msgs::KeyValue_<ContainerAllocator> >::other >  _props_type;
  _props_type props;





  typedef boost::shared_ptr< ::geographic_msgs::GeographicMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geographic_msgs::GeographicMap_<ContainerAllocator> const> ConstPtr;

}; // struct GeographicMap_

typedef ::geographic_msgs::GeographicMap_<std::allocator<void> > GeographicMap;

typedef boost::shared_ptr< ::geographic_msgs::GeographicMap > GeographicMapPtr;
typedef boost::shared_ptr< ::geographic_msgs::GeographicMap const> GeographicMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geographic_msgs::GeographicMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geographic_msgs::GeographicMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geographic_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geographic_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/geographic_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'uuid_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/uuid_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geographic_msgs::GeographicMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geographic_msgs::GeographicMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geographic_msgs::GeographicMap_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f4ce6d2ebf9ac9c7c4f3308f6ae0731";
  }

  static const char* value(const ::geographic_msgs::GeographicMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f4ce6d2ebf9ac9cULL;
  static const uint64_t static_value2 = 0x7c4f3308f6ae0731ULL;
};

template<class ContainerAllocator>
struct DataType< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geographic_msgs/GeographicMap";
  }

  static const char* value(const ::geographic_msgs::GeographicMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Geographic map for a specified region.\n\
\n\
Header header            # stamp specifies time\n\
                         # frame_id (normally /map)\n\
\n\
uuid_msgs/UniqueID id    # identifier for this map\n\
BoundingBox  bounds      # 2D bounding box containing map\n\
\n\
WayPoint[]   points      # way-points\n\
MapFeature[] features    # map features\n\
KeyValue[]   props       # map properties\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: uuid_msgs/UniqueID\n\
# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
\n\
================================================================================\n\
MSG: geographic_msgs/BoundingBox\n\
# Geographic map bounding box. \n\
#\n\
# The two GeoPoints denote diagonally opposite corners of the box.\n\
#\n\
# If min_pt.latitude is NaN, the bounding box is \"global\", matching\n\
# any valid latitude, longitude and altitude.\n\
#\n\
# If min_pt.altitude is NaN, the bounding box is two-dimensional and\n\
# matches any altitude within the specified latitude and longitude\n\
# range.\n\
\n\
GeoPoint min_pt         # lowest and most Southwestern corner\n\
GeoPoint max_pt         # highest and most Northeastern corner\n\
\n\
================================================================================\n\
MSG: geographic_msgs/GeoPoint\n\
# Geographic point, using the WGS 84 reference ellipsoid.\n\
\n\
# Latitude [degrees]. Positive is north of equator; negative is south\n\
# (-90 <= latitude <= +90).\n\
float64 latitude\n\
\n\
# Longitude [degrees]. Positive is east of prime meridian; negative is\n\
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or\n\
# +90, and longitude is irrelevant, but must be in range.\n\
float64 longitude\n\
\n\
# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).\n\
float64 altitude\n\
\n\
================================================================================\n\
MSG: geographic_msgs/WayPoint\n\
# Way-point element for a geographic map.\n\
\n\
uuid_msgs/UniqueID id   # Unique way-point identifier\n\
GeoPoint   position     # Position relative to WGS 84 ellipsoid\n\
KeyValue[] props        # Key/value properties for this point\n\
\n\
================================================================================\n\
MSG: geographic_msgs/KeyValue\n\
# Geographic map tag (key, value) pair\n\
#\n\
# This is equivalent to diagnostic_msgs/KeyValue, repeated here to\n\
# avoid introducing a trivial stack dependency.\n\
\n\
string key                     # tag label\n\
string value                   # corresponding value\n\
\n\
================================================================================\n\
MSG: geographic_msgs/MapFeature\n\
# Geographic map feature.\n\
#\n\
# A list of WayPoint IDs for features like streets, highways, hiking\n\
# trails, the outlines of buildings and parking lots in sequential\n\
# order.\n\
#\n\
# Feature lists may also contain other feature lists as members.\n\
\n\
uuid_msgs/UniqueID   id         # Unique feature identifier\n\
uuid_msgs/UniqueID[] components # Sequence of feature components\n\
KeyValue[] props                # Key/value properties for this feature\n\
";
  }

  static const char* value(const ::geographic_msgs::GeographicMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.bounds);
      stream.next(m.points);
      stream.next(m.features);
      stream.next(m.props);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GeographicMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geographic_msgs::GeographicMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geographic_msgs::GeographicMap_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "bounds: ";
    s << std::endl;
    Printer< ::geographic_msgs::BoundingBox_<ContainerAllocator> >::stream(s, indent + "  ", v.bounds);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geographic_msgs::WayPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "features[]" << std::endl;
    for (size_t i = 0; i < v.features.size(); ++i)
    {
      s << indent << "  features[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geographic_msgs::MapFeature_<ContainerAllocator> >::stream(s, indent + "    ", v.features[i]);
    }
    s << indent << "props[]" << std::endl;
    for (size_t i = 0; i < v.props.size(); ++i)
    {
      s << indent << "  props[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geographic_msgs::KeyValue_<ContainerAllocator> >::stream(s, indent + "    ", v.props[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOGRAPHIC_MSGS_MESSAGE_GEOGRAPHICMAP_H
