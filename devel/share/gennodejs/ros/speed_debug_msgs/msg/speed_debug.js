// Auto-generated. Do not edit!

// (in-package speed_debug_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let super_point = require('./super_point.js');
let cur_steer = require('./cur_steer.js');
let speed_issue = require('./speed_issue.js');

//-----------------------------------------------------------

class speed_debug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.cur_steer = null;
      this.issue = null;
      this.pub_ros_time = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('cur_steer')) {
        this.cur_steer = initObj.cur_steer
      }
      else {
        this.cur_steer = new cur_steer();
      }
      if (initObj.hasOwnProperty('issue')) {
        this.issue = initObj.issue
      }
      else {
        this.issue = new speed_issue();
      }
      if (initObj.hasOwnProperty('pub_ros_time')) {
        this.pub_ros_time = initObj.pub_ros_time
      }
      else {
        this.pub_ros_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speed_debug
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = super_point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cur_steer]
    bufferOffset = cur_steer.serialize(obj.cur_steer, buffer, bufferOffset);
    // Serialize message field [issue]
    bufferOffset = speed_issue.serialize(obj.issue, buffer, bufferOffset);
    // Serialize message field [pub_ros_time]
    bufferOffset = _serializer.float64(obj.pub_ros_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speed_debug
    let len;
    let data = new speed_debug(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = super_point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cur_steer]
    data.cur_steer = cur_steer.deserialize(buffer, bufferOffset);
    // Deserialize message field [issue]
    data.issue = speed_issue.deserialize(buffer, bufferOffset);
    // Deserialize message field [pub_ros_time]
    data.pub_ros_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 112 * object.points.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'speed_debug_msgs/speed_debug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd834a9927e9daa0494e9fa3070e36b02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    super_point[] points
    cur_steer cur_steer
    speed_issue issue
    float64 pub_ros_time
    ================================================================================
    MSG: speed_debug_msgs/super_point
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
    ================================================================================
    MSG: speed_debug_msgs/cur_steer
    float64 steer
    ================================================================================
    MSG: speed_debug_msgs/speed_issue
    float64 v
    float64 acc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speed_debug(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = super_point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.cur_steer !== undefined) {
      resolved.cur_steer = cur_steer.Resolve(msg.cur_steer)
    }
    else {
      resolved.cur_steer = new cur_steer()
    }

    if (msg.issue !== undefined) {
      resolved.issue = speed_issue.Resolve(msg.issue)
    }
    else {
      resolved.issue = new speed_issue()
    }

    if (msg.pub_ros_time !== undefined) {
      resolved.pub_ros_time = msg.pub_ros_time;
    }
    else {
      resolved.pub_ros_time = 0.0
    }

    return resolved;
    }
};

module.exports = speed_debug;
