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

class HMIReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.manual_estop = null;
      this.is_human_brake = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('manual_estop')) {
        this.manual_estop = initObj.manual_estop
      }
      else {
        this.manual_estop = false;
      }
      if (initObj.hasOwnProperty('is_human_brake')) {
        this.is_human_brake = initObj.is_human_brake
      }
      else {
        this.is_human_brake = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [manual_estop]
    bufferOffset = _serializer.bool(obj.manual_estop, buffer, bufferOffset);
    // Serialize message field [is_human_brake]
    bufferOffset = _serializer.bool(obj.is_human_brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIReport
    let len;
    let data = new HMIReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [manual_estop]
    data.manual_estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_human_brake]
    data.is_human_brake = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/HMIReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee8fa796b8ba44bce25e3586e968c27d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool manual_estop
    bool is_human_brake 
    
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
    const resolved = new HMIReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.manual_estop !== undefined) {
      resolved.manual_estop = msg.manual_estop;
    }
    else {
      resolved.manual_estop = false
    }

    if (msg.is_human_brake !== undefined) {
      resolved.is_human_brake = msg.is_human_brake;
    }
    else {
      resolved.is_human_brake = false
    }

    return resolved;
    }
};

module.exports = HMIReport;
