// Auto-generated. Do not edit!

// (in-package iv_dynamicobject_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Points = require('./Points.js');

//-----------------------------------------------------------

class History_traj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.center_point = null;
      this.line_num = null;
      this.line_point = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0.0;
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new Points();
      }
      if (initObj.hasOwnProperty('line_num')) {
        this.line_num = initObj.line_num
      }
      else {
        this.line_num = 0;
      }
      if (initObj.hasOwnProperty('line_point')) {
        this.line_point = initObj.line_point
      }
      else {
        this.line_point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type History_traj
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.float64(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [center_point]
    bufferOffset = Points.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [line_num]
    bufferOffset = _serializer.int32(obj.line_num, buffer, bufferOffset);
    // Serialize message field [line_point]
    // Serialize the length for message field [line_point]
    bufferOffset = _serializer.uint32(obj.line_point.length, buffer, bufferOffset);
    obj.line_point.forEach((val) => {
      bufferOffset = Points.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type History_traj
    let len;
    let data = new History_traj(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [center_point]
    data.center_point = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_num]
    data.line_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [line_point]
    // Deserialize array length for message field [line_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_point[i] = Points.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.line_point.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/History_traj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '306ab6d3bdb85c4207d78d719bd419dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
        float64 time_stamp
        Points center_point
        int32 line_num
        Points[] line_point
        
    
    ================================================================================
    MSG: iv_dynamicobject_msgs/Points
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new History_traj(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0.0
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = Points.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new Points()
    }

    if (msg.line_num !== undefined) {
      resolved.line_num = msg.line_num;
    }
    else {
      resolved.line_num = 0
    }

    if (msg.line_point !== undefined) {
      resolved.line_point = new Array(msg.line_point.length);
      for (let i = 0; i < resolved.line_point.length; ++i) {
        resolved.line_point[i] = Points.Resolve(msg.line_point[i]);
      }
    }
    else {
      resolved.line_point = []
    }

    return resolved;
    }
};

module.exports = History_traj;
