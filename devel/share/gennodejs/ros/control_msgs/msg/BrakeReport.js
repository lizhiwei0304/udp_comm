// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelStateReport = require('./WheelStateReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BrakeReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brake_ESC_left = null;
      this.brake_ESC_right = null;
      this.brake_wheel = null;
      this.brake_pedal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('brake_ESC_left')) {
        this.brake_ESC_left = initObj.brake_ESC_left
      }
      else {
        this.brake_ESC_left = 0.0;
      }
      if (initObj.hasOwnProperty('brake_ESC_right')) {
        this.brake_ESC_right = initObj.brake_ESC_right
      }
      else {
        this.brake_ESC_right = 0.0;
      }
      if (initObj.hasOwnProperty('brake_wheel')) {
        this.brake_wheel = initObj.brake_wheel
      }
      else {
        this.brake_wheel = new WheelStateReport();
      }
      if (initObj.hasOwnProperty('brake_pedal')) {
        this.brake_pedal = initObj.brake_pedal
      }
      else {
        this.brake_pedal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brake_ESC_left]
    bufferOffset = _serializer.float32(obj.brake_ESC_left, buffer, bufferOffset);
    // Serialize message field [brake_ESC_right]
    bufferOffset = _serializer.float32(obj.brake_ESC_right, buffer, bufferOffset);
    // Serialize message field [brake_wheel]
    bufferOffset = WheelStateReport.serialize(obj.brake_wheel, buffer, bufferOffset);
    // Serialize message field [brake_pedal]
    bufferOffset = _serializer.float32(obj.brake_pedal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeReport
    let len;
    let data = new BrakeReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_ESC_left]
    data.brake_ESC_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_ESC_right]
    data.brake_ESC_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_wheel]
    data.brake_wheel = WheelStateReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_pedal]
    data.brake_pedal = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += WheelStateReport.getMessageSize(object.brake_wheel);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/BrakeReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b70ede16519a0d621c3ea9bdf833527';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 brake_ESC_left
    float32 brake_ESC_right
    
    control_msgs/WheelStateReport brake_wheel
    
    float32 brake_pedal
    
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
    MSG: control_msgs/WheelStateReport
    Header header
    
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brake_ESC_left !== undefined) {
      resolved.brake_ESC_left = msg.brake_ESC_left;
    }
    else {
      resolved.brake_ESC_left = 0.0
    }

    if (msg.brake_ESC_right !== undefined) {
      resolved.brake_ESC_right = msg.brake_ESC_right;
    }
    else {
      resolved.brake_ESC_right = 0.0
    }

    if (msg.brake_wheel !== undefined) {
      resolved.brake_wheel = WheelStateReport.Resolve(msg.brake_wheel)
    }
    else {
      resolved.brake_wheel = new WheelStateReport()
    }

    if (msg.brake_pedal !== undefined) {
      resolved.brake_pedal = msg.brake_pedal;
    }
    else {
      resolved.brake_pedal = 0.0
    }

    return resolved;
    }
};

module.exports = BrakeReport;
