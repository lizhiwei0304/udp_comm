// Generated by gencpp from file iv_slam_ros_msgs/TrajectoryOptions.msg
// DO NOT EDIT!


#ifndef IV_SLAM_ROS_MSGS_MESSAGE_TRAJECTORYOPTIONS_H
#define IV_SLAM_ROS_MSGS_MESSAGE_TRAJECTORYOPTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iv_slam_ros_msgs
{
template <class ContainerAllocator>
struct TrajectoryOptions_
{
  typedef TrajectoryOptions_<ContainerAllocator> Type;

  TrajectoryOptions_()
    : tracking_frame()
    , published_frame()
    , odom_frame()
    , provide_odom_frame(false)
    , use_odometry(false)
    , use_lidar_odometry_withgps(false)
    , num_laser_scans(0)
    , num_multi_echo_laser_scans(0)
    , num_subdivisions_per_laser_scan(0)
    , num_point_clouds(0)
    , wiping_movingtaget(false)
    , trajectory_builder_options_proto()  {
    }
  TrajectoryOptions_(const ContainerAllocator& _alloc)
    : tracking_frame(_alloc)
    , published_frame(_alloc)
    , odom_frame(_alloc)
    , provide_odom_frame(false)
    , use_odometry(false)
    , use_lidar_odometry_withgps(false)
    , num_laser_scans(0)
    , num_multi_echo_laser_scans(0)
    , num_subdivisions_per_laser_scan(0)
    , num_point_clouds(0)
    , wiping_movingtaget(false)
    , trajectory_builder_options_proto(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _tracking_frame_type;
  _tracking_frame_type tracking_frame;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _published_frame_type;
  _published_frame_type published_frame;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _odom_frame_type;
  _odom_frame_type odom_frame;

   typedef uint8_t _provide_odom_frame_type;
  _provide_odom_frame_type provide_odom_frame;

   typedef uint8_t _use_odometry_type;
  _use_odometry_type use_odometry;

   typedef uint8_t _use_lidar_odometry_withgps_type;
  _use_lidar_odometry_withgps_type use_lidar_odometry_withgps;

   typedef int32_t _num_laser_scans_type;
  _num_laser_scans_type num_laser_scans;

   typedef int32_t _num_multi_echo_laser_scans_type;
  _num_multi_echo_laser_scans_type num_multi_echo_laser_scans;

   typedef int32_t _num_subdivisions_per_laser_scan_type;
  _num_subdivisions_per_laser_scan_type num_subdivisions_per_laser_scan;

   typedef int32_t _num_point_clouds_type;
  _num_point_clouds_type num_point_clouds;

   typedef uint8_t _wiping_movingtaget_type;
  _wiping_movingtaget_type wiping_movingtaget;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _trajectory_builder_options_proto_type;
  _trajectory_builder_options_proto_type trajectory_builder_options_proto;





  typedef boost::shared_ptr< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryOptions_

typedef ::iv_slam_ros_msgs::TrajectoryOptions_<std::allocator<void> > TrajectoryOptions;

typedef boost::shared_ptr< ::iv_slam_ros_msgs::TrajectoryOptions > TrajectoryOptionsPtr;
typedef boost::shared_ptr< ::iv_slam_ros_msgs::TrajectoryOptions const> TrajectoryOptionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace iv_slam_ros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'iv_slam_ros_msgs': ['/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff6a016b854fdd87b31800cde39bbf6a";
  }

  static const char* value(const ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff6a016b854fdd87ULL;
  static const uint64_t static_value2 = 0xb31800cde39bbf6aULL;
};

template<class ContainerAllocator>
struct DataType< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iv_slam_ros_msgs/TrajectoryOptions";
  }

  static const char* value(const ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string tracking_frame\n\
string published_frame\n\
string odom_frame\n\
bool provide_odom_frame\n\
bool use_odometry\n\
bool use_lidar_odometry_withgps\n\
int32 num_laser_scans\n\
int32 num_multi_echo_laser_scans\n\
int32 num_subdivisions_per_laser_scan\n\
int32 num_point_clouds\n\
bool wiping_movingtaget\n\
\n\
# This is a binary-encoded\n\
# 'iv_slam.mapping.proto.TrajectoryBuilderOptions' proto.\n\
string trajectory_builder_options_proto\n\
";
  }

  static const char* value(const ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tracking_frame);
      stream.next(m.published_frame);
      stream.next(m.odom_frame);
      stream.next(m.provide_odom_frame);
      stream.next(m.use_odometry);
      stream.next(m.use_lidar_odometry_withgps);
      stream.next(m.num_laser_scans);
      stream.next(m.num_multi_echo_laser_scans);
      stream.next(m.num_subdivisions_per_laser_scan);
      stream.next(m.num_point_clouds);
      stream.next(m.wiping_movingtaget);
      stream.next(m.trajectory_builder_options_proto);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryOptions_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iv_slam_ros_msgs::TrajectoryOptions_<ContainerAllocator>& v)
  {
    s << indent << "tracking_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tracking_frame);
    s << indent << "published_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.published_frame);
    s << indent << "odom_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.odom_frame);
    s << indent << "provide_odom_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.provide_odom_frame);
    s << indent << "use_odometry: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_odometry);
    s << indent << "use_lidar_odometry_withgps: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_lidar_odometry_withgps);
    s << indent << "num_laser_scans: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_laser_scans);
    s << indent << "num_multi_echo_laser_scans: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_multi_echo_laser_scans);
    s << indent << "num_subdivisions_per_laser_scan: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_subdivisions_per_laser_scan);
    s << indent << "num_point_clouds: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_point_clouds);
    s << indent << "wiping_movingtaget: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wiping_movingtaget);
    s << indent << "trajectory_builder_options_proto: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.trajectory_builder_options_proto);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IV_SLAM_ROS_MSGS_MESSAGE_TRAJECTORYOPTIONS_H
