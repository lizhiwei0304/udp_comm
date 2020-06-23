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

class EngineReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.engine_rpm = null;
      this.engine_load = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('engine_rpm')) {
        this.engine_rpm = initObj.engine_rpm
      }
      else {
        this.engine_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('engine_load')) {
        this.engine_load = initObj.engine_load
      }
      else {
        this.engine_load = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EngineReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [engine_rpm]
    bufferOffset = _serializer.float32(obj.engine_rpm, buffer, bufferOffset);
    // Serialize message field [engine_load]
    bufferOffset = _serializer.float32(obj.engine_load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EngineReport
    let len;
    let data = new EngineReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [engine_rpm]
    data.engine_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engine_load]
    data.engine_load = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/EngineReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af4e629629447104d3249e23f4f8884b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 engine_rpm
    float32 engine_load
    
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
    const resolved = new EngineReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.engine_rpm !== undefined) {
      resolved.engine_rpm = msg.engine_rpm;
    }
    else {
      resolved.engine_rpm = 0.0
    }

    if (msg.engine_load !== undefined) {
      resolved.engine_load = msg.engine_load;
    }
    else {
      resolved.engine_load = 0.0
    }

    return resolved;
    }
};

module.exports = EngineReport;
