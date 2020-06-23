// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModeCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.auto_mode = null;
      this.speed_mode = null;
      this.throttle_enable = null;
      this.brake_enable = null;
      this.steer_mode = null;
      this.gear_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
      }
      if (initObj.hasOwnProperty('speed_mode')) {
        this.speed_mode = initObj.speed_mode
      }
      else {
        this.speed_mode = 0;
      }
      if (initObj.hasOwnProperty('throttle_enable')) {
        this.throttle_enable = initObj.throttle_enable
      }
      else {
        this.throttle_enable = false;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = false;
      }
      if (initObj.hasOwnProperty('steer_mode')) {
        this.steer_mode = initObj.steer_mode
      }
      else {
        this.steer_mode = 0;
      }
      if (initObj.hasOwnProperty('gear_mode')) {
        this.gear_mode = initObj.gear_mode
      }
      else {
        this.gear_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModeCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.int32(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [speed_mode]
    bufferOffset = _serializer.int32(obj.speed_mode, buffer, bufferOffset);
    // Serialize message field [throttle_enable]
    bufferOffset = _serializer.bool(obj.throttle_enable, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.bool(obj.brake_enable, buffer, bufferOffset);
    // Serialize message field [steer_mode]
    bufferOffset = _serializer.int32(obj.steer_mode, buffer, bufferOffset);
    // Serialize message field [gear_mode]
    bufferOffset = _serializer.int32(obj.gear_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModeCmd
    let len;
    let data = new ModeCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_mode]
    data.speed_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [throttle_enable]
    data.throttle_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steer_mode]
    data.steer_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_mode]
    data.gear_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/ModeCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c77a6f2a30cb70e9beb64929e4a2227b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 auto_mode
    
    int32 speed_mode
    bool throttle_enable
    bool brake_enable
    
    int32 steer_mode
    int32 gear_mode
    
    
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
    const resolved = new ModeCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
    }

    if (msg.speed_mode !== undefined) {
      resolved.speed_mode = msg.speed_mode;
    }
    else {
      resolved.speed_mode = 0
    }

    if (msg.throttle_enable !== undefined) {
      resolved.throttle_enable = msg.throttle_enable;
    }
    else {
      resolved.throttle_enable = false
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = false
    }

    if (msg.steer_mode !== undefined) {
      resolved.steer_mode = msg.steer_mode;
    }
    else {
      resolved.steer_mode = 0
    }

    if (msg.gear_mode !== undefined) {
      resolved.gear_mode = msg.gear_mode;
    }
    else {
      resolved.gear_mode = 0
    }

    return resolved;
    }
};

module.exports = ModeCmd;
