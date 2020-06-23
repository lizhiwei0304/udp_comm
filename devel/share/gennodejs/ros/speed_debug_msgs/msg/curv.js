// Auto-generated. Do not edit!

// (in-package speed_debug_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class curv {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curv_final = null;
    }
    else {
      if (initObj.hasOwnProperty('curv_final')) {
        this.curv_final = initObj.curv_final
      }
      else {
        this.curv_final = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type curv
    // Serialize message field [curv_final]
    bufferOffset = _serializer.float64(obj.curv_final, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type curv
    let len;
    let data = new curv(null);
    // Deserialize message field [curv_final]
    data.curv_final = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'speed_debug_msgs/curv';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '097b555501edfa9e055b8ced874a3825';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 curv_final
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new curv(null);
    if (msg.curv_final !== undefined) {
      resolved.curv_final = msg.curv_final;
    }
    else {
      resolved.curv_final = 0.0
    }

    return resolved;
    }
};

module.exports = curv;
