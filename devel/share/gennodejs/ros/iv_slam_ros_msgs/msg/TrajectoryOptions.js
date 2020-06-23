// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrajectoryOptions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracking_frame = null;
      this.published_frame = null;
      this.odom_frame = null;
      this.provide_odom_frame = null;
      this.use_odometry = null;
      this.use_lidar_odometry_withgps = null;
      this.num_laser_scans = null;
      this.num_multi_echo_laser_scans = null;
      this.num_subdivisions_per_laser_scan = null;
      this.num_point_clouds = null;
      this.wiping_movingtaget = null;
      this.trajectory_builder_options_proto = null;
    }
    else {
      if (initObj.hasOwnProperty('tracking_frame')) {
        this.tracking_frame = initObj.tracking_frame
      }
      else {
        this.tracking_frame = '';
      }
      if (initObj.hasOwnProperty('published_frame')) {
        this.published_frame = initObj.published_frame
      }
      else {
        this.published_frame = '';
      }
      if (initObj.hasOwnProperty('odom_frame')) {
        this.odom_frame = initObj.odom_frame
      }
      else {
        this.odom_frame = '';
      }
      if (initObj.hasOwnProperty('provide_odom_frame')) {
        this.provide_odom_frame = initObj.provide_odom_frame
      }
      else {
        this.provide_odom_frame = false;
      }
      if (initObj.hasOwnProperty('use_odometry')) {
        this.use_odometry = initObj.use_odometry
      }
      else {
        this.use_odometry = false;
      }
      if (initObj.hasOwnProperty('use_lidar_odometry_withgps')) {
        this.use_lidar_odometry_withgps = initObj.use_lidar_odometry_withgps
      }
      else {
        this.use_lidar_odometry_withgps = false;
      }
      if (initObj.hasOwnProperty('num_laser_scans')) {
        this.num_laser_scans = initObj.num_laser_scans
      }
      else {
        this.num_laser_scans = 0;
      }
      if (initObj.hasOwnProperty('num_multi_echo_laser_scans')) {
        this.num_multi_echo_laser_scans = initObj.num_multi_echo_laser_scans
      }
      else {
        this.num_multi_echo_laser_scans = 0;
      }
      if (initObj.hasOwnProperty('num_subdivisions_per_laser_scan')) {
        this.num_subdivisions_per_laser_scan = initObj.num_subdivisions_per_laser_scan
      }
      else {
        this.num_subdivisions_per_laser_scan = 0;
      }
      if (initObj.hasOwnProperty('num_point_clouds')) {
        this.num_point_clouds = initObj.num_point_clouds
      }
      else {
        this.num_point_clouds = 0;
      }
      if (initObj.hasOwnProperty('wiping_movingtaget')) {
        this.wiping_movingtaget = initObj.wiping_movingtaget
      }
      else {
        this.wiping_movingtaget = false;
      }
      if (initObj.hasOwnProperty('trajectory_builder_options_proto')) {
        this.trajectory_builder_options_proto = initObj.trajectory_builder_options_proto
      }
      else {
        this.trajectory_builder_options_proto = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryOptions
    // Serialize message field [tracking_frame]
    bufferOffset = _serializer.string(obj.tracking_frame, buffer, bufferOffset);
    // Serialize message field [published_frame]
    bufferOffset = _serializer.string(obj.published_frame, buffer, bufferOffset);
    // Serialize message field [odom_frame]
    bufferOffset = _serializer.string(obj.odom_frame, buffer, bufferOffset);
    // Serialize message field [provide_odom_frame]
    bufferOffset = _serializer.bool(obj.provide_odom_frame, buffer, bufferOffset);
    // Serialize message field [use_odometry]
    bufferOffset = _serializer.bool(obj.use_odometry, buffer, bufferOffset);
    // Serialize message field [use_lidar_odometry_withgps]
    bufferOffset = _serializer.bool(obj.use_lidar_odometry_withgps, buffer, bufferOffset);
    // Serialize message field [num_laser_scans]
    bufferOffset = _serializer.int32(obj.num_laser_scans, buffer, bufferOffset);
    // Serialize message field [num_multi_echo_laser_scans]
    bufferOffset = _serializer.int32(obj.num_multi_echo_laser_scans, buffer, bufferOffset);
    // Serialize message field [num_subdivisions_per_laser_scan]
    bufferOffset = _serializer.int32(obj.num_subdivisions_per_laser_scan, buffer, bufferOffset);
    // Serialize message field [num_point_clouds]
    bufferOffset = _serializer.int32(obj.num_point_clouds, buffer, bufferOffset);
    // Serialize message field [wiping_movingtaget]
    bufferOffset = _serializer.bool(obj.wiping_movingtaget, buffer, bufferOffset);
    // Serialize message field [trajectory_builder_options_proto]
    bufferOffset = _serializer.string(obj.trajectory_builder_options_proto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryOptions
    let len;
    let data = new TrajectoryOptions(null);
    // Deserialize message field [tracking_frame]
    data.tracking_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [published_frame]
    data.published_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [odom_frame]
    data.odom_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [provide_odom_frame]
    data.provide_odom_frame = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_odometry]
    data.use_odometry = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_lidar_odometry_withgps]
    data.use_lidar_odometry_withgps = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [num_laser_scans]
    data.num_laser_scans = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_multi_echo_laser_scans]
    data.num_multi_echo_laser_scans = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_subdivisions_per_laser_scan]
    data.num_subdivisions_per_laser_scan = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_point_clouds]
    data.num_point_clouds = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wiping_movingtaget]
    data.wiping_movingtaget = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trajectory_builder_options_proto]
    data.trajectory_builder_options_proto = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tracking_frame.length;
    length += object.published_frame.length;
    length += object.odom_frame.length;
    length += object.trajectory_builder_options_proto.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_slam_ros_msgs/TrajectoryOptions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff6a016b854fdd87b31800cde39bbf6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string tracking_frame
    string published_frame
    string odom_frame
    bool provide_odom_frame
    bool use_odometry
    bool use_lidar_odometry_withgps
    int32 num_laser_scans
    int32 num_multi_echo_laser_scans
    int32 num_subdivisions_per_laser_scan
    int32 num_point_clouds
    bool wiping_movingtaget
    
    # This is a binary-encoded
    # 'iv_slam.mapping.proto.TrajectoryBuilderOptions' proto.
    string trajectory_builder_options_proto
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryOptions(null);
    if (msg.tracking_frame !== undefined) {
      resolved.tracking_frame = msg.tracking_frame;
    }
    else {
      resolved.tracking_frame = ''
    }

    if (msg.published_frame !== undefined) {
      resolved.published_frame = msg.published_frame;
    }
    else {
      resolved.published_frame = ''
    }

    if (msg.odom_frame !== undefined) {
      resolved.odom_frame = msg.odom_frame;
    }
    else {
      resolved.odom_frame = ''
    }

    if (msg.provide_odom_frame !== undefined) {
      resolved.provide_odom_frame = msg.provide_odom_frame;
    }
    else {
      resolved.provide_odom_frame = false
    }

    if (msg.use_odometry !== undefined) {
      resolved.use_odometry = msg.use_odometry;
    }
    else {
      resolved.use_odometry = false
    }

    if (msg.use_lidar_odometry_withgps !== undefined) {
      resolved.use_lidar_odometry_withgps = msg.use_lidar_odometry_withgps;
    }
    else {
      resolved.use_lidar_odometry_withgps = false
    }

    if (msg.num_laser_scans !== undefined) {
      resolved.num_laser_scans = msg.num_laser_scans;
    }
    else {
      resolved.num_laser_scans = 0
    }

    if (msg.num_multi_echo_laser_scans !== undefined) {
      resolved.num_multi_echo_laser_scans = msg.num_multi_echo_laser_scans;
    }
    else {
      resolved.num_multi_echo_laser_scans = 0
    }

    if (msg.num_subdivisions_per_laser_scan !== undefined) {
      resolved.num_subdivisions_per_laser_scan = msg.num_subdivisions_per_laser_scan;
    }
    else {
      resolved.num_subdivisions_per_laser_scan = 0
    }

    if (msg.num_point_clouds !== undefined) {
      resolved.num_point_clouds = msg.num_point_clouds;
    }
    else {
      resolved.num_point_clouds = 0
    }

    if (msg.wiping_movingtaget !== undefined) {
      resolved.wiping_movingtaget = msg.wiping_movingtaget;
    }
    else {
      resolved.wiping_movingtaget = false
    }

    if (msg.trajectory_builder_options_proto !== undefined) {
      resolved.trajectory_builder_options_proto = msg.trajectory_builder_options_proto;
    }
    else {
      resolved.trajectory_builder_options_proto = ''
    }

    return resolved;
    }
};

module.exports = TrajectoryOptions;
