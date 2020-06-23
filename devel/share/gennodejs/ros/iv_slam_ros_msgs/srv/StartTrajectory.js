// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryOptions = require('../msg/TrajectoryOptions.js');
let SensorTopics = require('../msg/SensorTopics.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.options = null;
      this.topics = null;
    }
    else {
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = new TrajectoryOptions();
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = new SensorTopics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartTrajectoryRequest
    // Serialize message field [options]
    bufferOffset = TrajectoryOptions.serialize(obj.options, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = SensorTopics.serialize(obj.topics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrajectoryRequest
    let len;
    let data = new StartTrajectoryRequest(null);
    // Deserialize message field [options]
    data.options = TrajectoryOptions.deserialize(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = SensorTopics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrajectoryOptions.getMessageSize(object.options);
    length += SensorTopics.getMessageSize(object.topics);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/StartTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '041fa356c42e4a867c43211d5b29b038';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    iv_slam_ros_msgs/TrajectoryOptions options
    iv_slam_ros_msgs/SensorTopics topics
    
    ================================================================================
    MSG: iv_slam_ros_msgs/TrajectoryOptions
    
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
    
    ================================================================================
    MSG: iv_slam_ros_msgs/SensorTopics
    string laser_scan_topic
    string multi_echo_laser_scan_topic
    string point_cloud2_topic
    string imu_topic
    string odometry_topic
    string dynamicobject_topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartTrajectoryRequest(null);
    if (msg.options !== undefined) {
      resolved.options = TrajectoryOptions.Resolve(msg.options)
    }
    else {
      resolved.options = new TrajectoryOptions()
    }

    if (msg.topics !== undefined) {
      resolved.topics = SensorTopics.Resolve(msg.topics)
    }
    else {
      resolved.topics = new SensorTopics()
    }

    return resolved;
    }
};

class StartTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_id = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartTrajectoryResponse
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTrajectoryResponse
    let len;
    let data = new StartTrajectoryResponse(null);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/StartTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e190c4be941828bcd09ea05053f4bb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 trajectory_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartTrajectoryResponse(null);
    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StartTrajectoryRequest,
  Response: StartTrajectoryResponse,
  md5sum() { return 'b9252ad326a557addcb36e679f2c13e4'; },
  datatype() { return 'iv_slam_ros_msgs/StartTrajectory'; }
};
