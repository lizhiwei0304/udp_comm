// Auto-generated. Do not edit!

// (in-package speed_debug_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let v = require('./v.js');
let curv = require('./curv.js');
let speed_time = require('./speed_time.js');

//-----------------------------------------------------------

class super_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v = null;
      this.curv = null;
      this.time = null;
      this.x = null;
      this.y = null;
      this.s = null;
      this.acc = null;
    }
    else {
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = new v();
      }
      if (initObj.hasOwnProperty('curv')) {
        this.curv = initObj.curv
      }
      else {
        this.curv = new curv();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new speed_time();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type super_point
    // Serialize message field [v]
    bufferOffset = v.serialize(obj.v, buffer, bufferOffset);
    // Serialize message field [curv]
    bufferOffset = curv.serialize(obj.curv, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = speed_time.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type super_point
    let len;
    let data = new super_point(null);
    // Deserialize message field [v]
    data.v = v.deserialize(buffer, bufferOffset);
    // Deserialize message field [curv]
    data.curv = curv.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = speed_time.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'speed_debug_msgs/super_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdc128084915a3dc47e2491ff229fb45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    v v
    curv curv
    speed_time time
    float64 x
    float64 y
    float64 s
    float64 acc
    ================================================================================
    MSG: speed_debug_msgs/v
    float64 v_max_dynamic
    float64 v_lat_acc
    float64 v_lon_acc
    float64 v_slide_dec
    float64 v_lon_dec
    float64 v_jerk
    float64 v_blind
    float64 v_constrained
    ================================================================================
    MSG: speed_debug_msgs/curv
    float64 curv_final
    ================================================================================
    MSG: speed_debug_msgs/speed_time
    float64 time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new super_point(null);
    if (msg.v !== undefined) {
      resolved.v = v.Resolve(msg.v)
    }
    else {
      resolved.v = new v()
    }

    if (msg.curv !== undefined) {
      resolved.curv = curv.Resolve(msg.curv)
    }
    else {
      resolved.curv = new curv()
    }

    if (msg.time !== undefined) {
      resolved.time = speed_time.Resolve(msg.time)
    }
    else {
      resolved.time = new speed_time()
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    return resolved;
    }
};

module.exports = super_point;
