// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EngineReport = require('./EngineReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThrottleReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle = null;
      this.engine_status = null;
      this.throttle_pedal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('engine_status')) {
        this.engine_status = initObj.engine_status
      }
      else {
        this.engine_status = new EngineReport();
      }
      if (initObj.hasOwnProperty('throttle_pedal')) {
        this.throttle_pedal = initObj.throttle_pedal
      }
      else {
        this.throttle_pedal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [engine_status]
    bufferOffset = EngineReport.serialize(obj.engine_status, buffer, bufferOffset);
    // Serialize message field [throttle_pedal]
    bufferOffset = _serializer.float32(obj.throttle_pedal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleReport
    let len;
    let data = new ThrottleReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engine_status]
    data.engine_status = EngineReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal]
    data.throttle_pedal = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += EngineReport.getMessageSize(object.engine_status);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/ThrottleReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'daef74a19d1d312c3656ecf3c3a9c5ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 throttle
    control_msgs/EngineReport engine_status
    float32 throttle_pedal
    
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
    MSG: control_msgs/EngineReport
    Header header
    float32 engine_rpm
    float32 engine_load
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.engine_status !== undefined) {
      resolved.engine_status = EngineReport.Resolve(msg.engine_status)
    }
    else {
      resolved.engine_status = new EngineReport()
    }

    if (msg.throttle_pedal !== undefined) {
      resolved.throttle_pedal = msg.throttle_pedal;
    }
    else {
      resolved.throttle_pedal = 0.0
    }

    return resolved;
    }
};

module.exports = ThrottleReport;
