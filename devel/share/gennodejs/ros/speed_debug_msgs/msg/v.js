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

class v {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_max_dynamic = null;
      this.v_lat_acc = null;
      this.v_lon_acc = null;
      this.v_slide_dec = null;
      this.v_lon_dec = null;
      this.v_jerk = null;
      this.v_blind = null;
      this.v_constrained = null;
    }
    else {
      if (initObj.hasOwnProperty('v_max_dynamic')) {
        this.v_max_dynamic = initObj.v_max_dynamic
      }
      else {
        this.v_max_dynamic = 0.0;
      }
      if (initObj.hasOwnProperty('v_lat_acc')) {
        this.v_lat_acc = initObj.v_lat_acc
      }
      else {
        this.v_lat_acc = 0.0;
      }
      if (initObj.hasOwnProperty('v_lon_acc')) {
        this.v_lon_acc = initObj.v_lon_acc
      }
      else {
        this.v_lon_acc = 0.0;
      }
      if (initObj.hasOwnProperty('v_slide_dec')) {
        this.v_slide_dec = initObj.v_slide_dec
      }
      else {
        this.v_slide_dec = 0.0;
      }
      if (initObj.hasOwnProperty('v_lon_dec')) {
        this.v_lon_dec = initObj.v_lon_dec
      }
      else {
        this.v_lon_dec = 0.0;
      }
      if (initObj.hasOwnProperty('v_jerk')) {
        this.v_jerk = initObj.v_jerk
      }
      else {
        this.v_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('v_blind')) {
        this.v_blind = initObj.v_blind
      }
      else {
        this.v_blind = 0.0;
      }
      if (initObj.hasOwnProperty('v_constrained')) {
        this.v_constrained = initObj.v_constrained
      }
      else {
        this.v_constrained = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type v
    // Serialize message field [v_max_dynamic]
    bufferOffset = _serializer.float64(obj.v_max_dynamic, buffer, bufferOffset);
    // Serialize message field [v_lat_acc]
    bufferOffset = _serializer.float64(obj.v_lat_acc, buffer, bufferOffset);
    // Serialize message field [v_lon_acc]
    bufferOffset = _serializer.float64(obj.v_lon_acc, buffer, bufferOffset);
    // Serialize message field [v_slide_dec]
    bufferOffset = _serializer.float64(obj.v_slide_dec, buffer, bufferOffset);
    // Serialize message field [v_lon_dec]
    bufferOffset = _serializer.float64(obj.v_lon_dec, buffer, bufferOffset);
    // Serialize message field [v_jerk]
    bufferOffset = _serializer.float64(obj.v_jerk, buffer, bufferOffset);
    // Serialize message field [v_blind]
    bufferOffset = _serializer.float64(obj.v_blind, buffer, bufferOffset);
    // Serialize message field [v_constrained]
    bufferOffset = _serializer.float64(obj.v_constrained, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type v
    let len;
    let data = new v(null);
    // Deserialize message field [v_max_dynamic]
    data.v_max_dynamic = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_lat_acc]
    data.v_lat_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_lon_acc]
    data.v_lon_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_slide_dec]
    data.v_slide_dec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_lon_dec]
    data.v_lon_dec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_jerk]
    data.v_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_blind]
    data.v_blind = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_constrained]
    data.v_constrained = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'speed_debug_msgs/v';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bb18dd6157ad5bbbd8073687e75001e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 v_max_dynamic
    float64 v_lat_acc
    float64 v_lon_acc
    float64 v_slide_dec
    float64 v_lon_dec
    float64 v_jerk
    float64 v_blind
    float64 v_constrained
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new v(null);
    if (msg.v_max_dynamic !== undefined) {
      resolved.v_max_dynamic = msg.v_max_dynamic;
    }
    else {
      resolved.v_max_dynamic = 0.0
    }

    if (msg.v_lat_acc !== undefined) {
      resolved.v_lat_acc = msg.v_lat_acc;
    }
    else {
      resolved.v_lat_acc = 0.0
    }

    if (msg.v_lon_acc !== undefined) {
      resolved.v_lon_acc = msg.v_lon_acc;
    }
    else {
      resolved.v_lon_acc = 0.0
    }

    if (msg.v_slide_dec !== undefined) {
      resolved.v_slide_dec = msg.v_slide_dec;
    }
    else {
      resolved.v_slide_dec = 0.0
    }

    if (msg.v_lon_dec !== undefined) {
      resolved.v_lon_dec = msg.v_lon_dec;
    }
    else {
      resolved.v_lon_dec = 0.0
    }

    if (msg.v_jerk !== undefined) {
      resolved.v_jerk = msg.v_jerk;
    }
    else {
      resolved.v_jerk = 0.0
    }

    if (msg.v_blind !== undefined) {
      resolved.v_blind = msg.v_blind;
    }
    else {
      resolved.v_blind = 0.0
    }

    if (msg.v_constrained !== undefined) {
      resolved.v_constrained = msg.v_constrained;
    }
    else {
      resolved.v_constrained = 0.0
    }

    return resolved;
    }
};

module.exports = v;
