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

class LampReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lamp_1 = null;
      this.lamp_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lamp_1')) {
        this.lamp_1 = initObj.lamp_1
      }
      else {
        this.lamp_1 = false;
      }
      if (initObj.hasOwnProperty('lamp_2')) {
        this.lamp_2 = initObj.lamp_2
      }
      else {
        this.lamp_2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LampReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lamp_1]
    bufferOffset = _serializer.bool(obj.lamp_1, buffer, bufferOffset);
    // Serialize message field [lamp_2]
    bufferOffset = _serializer.bool(obj.lamp_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LampReport
    let len;
    let data = new LampReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lamp_1]
    data.lamp_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lamp_2]
    data.lamp_2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/LampReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5d7ffb50b153f2bd203104ec5d6fe13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool lamp_1
    bool lamp_2
    
    
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
    const resolved = new LampReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lamp_1 !== undefined) {
      resolved.lamp_1 = msg.lamp_1;
    }
    else {
      resolved.lamp_1 = false
    }

    if (msg.lamp_2 !== undefined) {
      resolved.lamp_2 = msg.lamp_2;
    }
    else {
      resolved.lamp_2 = false
    }

    return resolved;
    }
};

module.exports = LampReport;
