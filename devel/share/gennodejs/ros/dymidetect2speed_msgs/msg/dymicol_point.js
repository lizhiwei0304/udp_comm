// Auto-generated. Do not edit!

// (in-package dymidetect2speed_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class dymicol_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.point_x = null;
      this.point_y = null;
      this.vel_to_dymicol = null;
      this.exp_vel = null;
      this.path_point_index = null;
      this.collision = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('point_x')) {
        this.point_x = initObj.point_x
      }
      else {
        this.point_x = 0.0;
      }
      if (initObj.hasOwnProperty('point_y')) {
        this.point_y = initObj.point_y
      }
      else {
        this.point_y = 0.0;
      }
      if (initObj.hasOwnProperty('vel_to_dymicol')) {
        this.vel_to_dymicol = initObj.vel_to_dymicol
      }
      else {
        this.vel_to_dymicol = 0.0;
      }
      if (initObj.hasOwnProperty('exp_vel')) {
        this.exp_vel = initObj.exp_vel
      }
      else {
        this.exp_vel = 0.0;
      }
      if (initObj.hasOwnProperty('path_point_index')) {
        this.path_point_index = initObj.path_point_index
      }
      else {
        this.path_point_index = 0;
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dymicol_point
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [point_x]
    bufferOffset = _serializer.float64(obj.point_x, buffer, bufferOffset);
    // Serialize message field [point_y]
    bufferOffset = _serializer.float64(obj.point_y, buffer, bufferOffset);
    // Serialize message field [vel_to_dymicol]
    bufferOffset = _serializer.float64(obj.vel_to_dymicol, buffer, bufferOffset);
    // Serialize message field [exp_vel]
    bufferOffset = _serializer.float64(obj.exp_vel, buffer, bufferOffset);
    // Serialize message field [path_point_index]
    bufferOffset = _serializer.int32(obj.path_point_index, buffer, bufferOffset);
    // Serialize message field [collision]
    bufferOffset = _serializer.uint8(obj.collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dymicol_point
    let len;
    let data = new dymicol_point(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_x]
    data.point_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [point_y]
    data.point_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_to_dymicol]
    data.vel_to_dymicol = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exp_vel]
    data.exp_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_point_index]
    data.path_point_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [collision]
    data.collision = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dymidetect2speed_msgs/dymicol_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17116bc59d56961fa03b07a3caf2fd5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 point_x
    float64 point_y
    float64 vel_to_dymicol
    float64 exp_vel
    int32 path_point_index
    uint8 collision
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dymicol_point(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.point_x !== undefined) {
      resolved.point_x = msg.point_x;
    }
    else {
      resolved.point_x = 0.0
    }

    if (msg.point_y !== undefined) {
      resolved.point_y = msg.point_y;
    }
    else {
      resolved.point_y = 0.0
    }

    if (msg.vel_to_dymicol !== undefined) {
      resolved.vel_to_dymicol = msg.vel_to_dymicol;
    }
    else {
      resolved.vel_to_dymicol = 0.0
    }

    if (msg.exp_vel !== undefined) {
      resolved.exp_vel = msg.exp_vel;
    }
    else {
      resolved.exp_vel = 0.0
    }

    if (msg.path_point_index !== undefined) {
      resolved.path_point_index = msg.path_point_index;
    }
    else {
      resolved.path_point_index = 0
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = 0
    }

    return resolved;
    }
};

module.exports = dymicol_point;
