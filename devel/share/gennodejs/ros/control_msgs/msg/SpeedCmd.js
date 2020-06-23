// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThrottleCmd = require('./ThrottleCmd.js');
let BrakeCmd = require('./BrakeCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SpeedCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle_cmd = null;
      this.brake_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle_cmd')) {
        this.throttle_cmd = initObj.throttle_cmd
      }
      else {
        this.throttle_cmd = new ThrottleCmd();
      }
      if (initObj.hasOwnProperty('brake_cmd')) {
        this.brake_cmd = initObj.brake_cmd
      }
      else {
        this.brake_cmd = new BrakeCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle_cmd]
    bufferOffset = ThrottleCmd.serialize(obj.throttle_cmd, buffer, bufferOffset);
    // Serialize message field [brake_cmd]
    bufferOffset = BrakeCmd.serialize(obj.brake_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedCmd
    let len;
    let data = new SpeedCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_cmd]
    data.throttle_cmd = ThrottleCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_cmd]
    data.brake_cmd = BrakeCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ThrottleCmd.getMessageSize(object.throttle_cmd);
    length += BrakeCmd.getMessageSize(object.brake_cmd);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/SpeedCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '351e584fbda2b6662ef82b45d8c46b5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    control_msgs/ThrottleCmd throttle_cmd
    control_msgs/BrakeCmd brake_cmd
    
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
    MSG: control_msgs/ThrottleCmd
    Header header
    float32 throttle
    
    
    
    ================================================================================
    MSG: control_msgs/BrakeCmd
    Header header
    float32 brake
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle_cmd !== undefined) {
      resolved.throttle_cmd = ThrottleCmd.Resolve(msg.throttle_cmd)
    }
    else {
      resolved.throttle_cmd = new ThrottleCmd()
    }

    if (msg.brake_cmd !== undefined) {
      resolved.brake_cmd = BrakeCmd.Resolve(msg.brake_cmd)
    }
    else {
      resolved.brake_cmd = new BrakeCmd()
    }

    return resolved;
    }
};

module.exports = SpeedCmd;
