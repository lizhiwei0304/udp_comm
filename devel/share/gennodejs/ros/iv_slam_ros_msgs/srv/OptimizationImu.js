// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OptimizationImuRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_id = null;
      this.time = null;
      this.linear_acceleration_x = null;
      this.linear_acceleration_y = null;
      this.linear_acceleration_z = null;
      this.angular_velocity_x = null;
      this.angular_velocity_y = null;
      this.angular_velocity_z = null;
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
      if (initObj.hasOwnProperty('linear_acceleration_x')) {
        this.linear_acceleration_x = initObj.linear_acceleration_x
      }
      else {
        this.linear_acceleration_x = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_y')) {
        this.linear_acceleration_y = initObj.linear_acceleration_y
      }
      else {
        this.linear_acceleration_y = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_z')) {
        this.linear_acceleration_z = initObj.linear_acceleration_z
      }
      else {
        this.linear_acceleration_z = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_x')) {
        this.angular_velocity_x = initObj.angular_velocity_x
      }
      else {
        this.angular_velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_y')) {
        this.angular_velocity_y = initObj.angular_velocity_y
      }
      else {
        this.angular_velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_z')) {
        this.angular_velocity_z = initObj.angular_velocity_z
      }
      else {
        this.angular_velocity_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationImuRequest
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_x]
    bufferOffset = _serializer.float64(obj.linear_acceleration_x, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_y]
    bufferOffset = _serializer.float64(obj.linear_acceleration_y, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_z]
    bufferOffset = _serializer.float64(obj.linear_acceleration_z, buffer, bufferOffset);
    // Serialize message field [angular_velocity_x]
    bufferOffset = _serializer.float64(obj.angular_velocity_x, buffer, bufferOffset);
    // Serialize message field [angular_velocity_y]
    bufferOffset = _serializer.float64(obj.angular_velocity_y, buffer, bufferOffset);
    // Serialize message field [angular_velocity_z]
    bufferOffset = _serializer.float64(obj.angular_velocity_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationImuRequest
    let len;
    let data = new OptimizationImuRequest(null);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_x]
    data.linear_acceleration_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_y]
    data.linear_acceleration_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_z]
    data.linear_acceleration_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_x]
    data.angular_velocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_y]
    data.angular_velocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_z]
    data.angular_velocity_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/OptimizationImuRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9d47262566a779b3929228069472871';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 trajectory_id
    float64 time
    float64 linear_acceleration_x
    float64 linear_acceleration_y
    float64 linear_acceleration_z
    float64 angular_velocity_x
    float64 angular_velocity_y
    float64 angular_velocity_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizationImuRequest(null);
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

    if (msg.linear_acceleration_x !== undefined) {
      resolved.linear_acceleration_x = msg.linear_acceleration_x;
    }
    else {
      resolved.linear_acceleration_x = 0.0
    }

    if (msg.linear_acceleration_y !== undefined) {
      resolved.linear_acceleration_y = msg.linear_acceleration_y;
    }
    else {
      resolved.linear_acceleration_y = 0.0
    }

    if (msg.linear_acceleration_z !== undefined) {
      resolved.linear_acceleration_z = msg.linear_acceleration_z;
    }
    else {
      resolved.linear_acceleration_z = 0.0
    }

    if (msg.angular_velocity_x !== undefined) {
      resolved.angular_velocity_x = msg.angular_velocity_x;
    }
    else {
      resolved.angular_velocity_x = 0.0
    }

    if (msg.angular_velocity_y !== undefined) {
      resolved.angular_velocity_y = msg.angular_velocity_y;
    }
    else {
      resolved.angular_velocity_y = 0.0
    }

    if (msg.angular_velocity_z !== undefined) {
      resolved.angular_velocity_z = msg.angular_velocity_z;
    }
    else {
      resolved.angular_velocity_z = 0.0
    }

    return resolved;
    }
};

class OptimizationImuResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationImuResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationImuResponse
    let len;
    let data = new OptimizationImuResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iv_slam_ros_msgs/OptimizationImuResponse';
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
    const resolved = new OptimizationImuResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OptimizationImuRequest,
  Response: OptimizationImuResponse,
  md5sum() { return 'a9d47262566a779b3929228069472871'; },
  datatype() { return 'iv_slam_ros_msgs/OptimizationImu'; }
};
