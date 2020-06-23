// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let insertion_submaps = require('../msg/insertion_submaps.js');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class OptimizationInsertResultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_id = null;
      this.time = null;
      this.file_time_name = null;
      this.num_submap = null;
      this.range_data_pose = null;
      this.insertion_result = null;
      this.current_range_data_index = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('file_time_name')) {
        this.file_time_name = initObj.file_time_name
      }
      else {
        this.file_time_name = '';
      }
      if (initObj.hasOwnProperty('num_submap')) {
        this.num_submap = initObj.num_submap
      }
      else {
        this.num_submap = 0;
      }
      if (initObj.hasOwnProperty('range_data_pose')) {
        this.range_data_pose = initObj.range_data_pose
      }
      else {
        this.range_data_pose = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('insertion_result')) {
        this.insertion_result = initObj.insertion_result
      }
      else {
        this.insertion_result = new insertion_submaps();
      }
      if (initObj.hasOwnProperty('current_range_data_index')) {
        this.current_range_data_index = initObj.current_range_data_index
      }
      else {
        this.current_range_data_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationInsertResultRequest
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [file_time_name]
    bufferOffset = _serializer.string(obj.file_time_name, buffer, bufferOffset);
    // Serialize message field [num_submap]
    bufferOffset = _serializer.int32(obj.num_submap, buffer, bufferOffset);
    // Serialize message field [range_data_pose]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.range_data_pose, buffer, bufferOffset);
    // Serialize message field [insertion_result]
    bufferOffset = insertion_submaps.serialize(obj.insertion_result, buffer, bufferOffset);
    // Serialize message field [current_range_data_index]
    bufferOffset = _serializer.int32(obj.current_range_data_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationInsertResultRequest
    let len;
    let data = new OptimizationInsertResultRequest(null);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [file_time_name]
    data.file_time_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num_submap]
    data.num_submap = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [range_data_pose]
    data.range_data_pose = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [insertion_result]
    data.insertion_result = insertion_submaps.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_range_data_index]
    data.current_range_data_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_time_name.length;
    length += nav_msgs.msg.Odometry.getMessageSize(object.range_data_pose);
    length += insertion_submaps.getMessageSize(object.insertion_result);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/OptimizationInsertResultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2318c3eba77c1405411d17648da8e4ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 trajectory_id
    float64 time
    string file_time_name
    int32 num_submap
    nav_msgs/Odometry range_data_pose
    insertion_submaps insertion_result
    int32 current_range_data_index
    
    ================================================================================
    MSG: nav_msgs/Odometry
    # This represents an estimate of a position and velocity in free space.  
    # The pose in this message should be specified in the coordinate frame given by header.frame_id.
    # The twist in this message should be specified in the coordinate frame given by the child_frame_id
    Header header
    string child_frame_id
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: iv_slam_ros_msgs/insertion_submaps
    int32 num_submap
    SubmapIndex[] submap
    
    ================================================================================
    MSG: iv_slam_ros_msgs/SubmapIndex
    int32 trajectory_id
    int32 submap_index
    bool finishflag
    geometry_msgs/Pose pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizationInsertResultRequest(null);
    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.file_time_name !== undefined) {
      resolved.file_time_name = msg.file_time_name;
    }
    else {
      resolved.file_time_name = ''
    }

    if (msg.num_submap !== undefined) {
      resolved.num_submap = msg.num_submap;
    }
    else {
      resolved.num_submap = 0
    }

    if (msg.range_data_pose !== undefined) {
      resolved.range_data_pose = nav_msgs.msg.Odometry.Resolve(msg.range_data_pose)
    }
    else {
      resolved.range_data_pose = new nav_msgs.msg.Odometry()
    }

    if (msg.insertion_result !== undefined) {
      resolved.insertion_result = insertion_submaps.Resolve(msg.insertion_result)
    }
    else {
      resolved.insertion_result = new insertion_submaps()
    }

    if (msg.current_range_data_index !== undefined) {
      resolved.current_range_data_index = msg.current_range_data_index;
    }
    else {
      resolved.current_range_data_index = 0
    }

    return resolved;
    }
};

class OptimizationInsertResultResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationInsertResultResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationInsertResultResponse
    let len;
    let data = new OptimizationInsertResultResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/OptimizationInsertResultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizationInsertResultResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OptimizationInsertResultRequest,
  Response: OptimizationInsertResultResponse,
  md5sum() { return '2318c3eba77c1405411d17648da8e4ec'; },
  datatype() { return 'iv_slam_ros_msgs/OptimizationInsertResult'; }
};
