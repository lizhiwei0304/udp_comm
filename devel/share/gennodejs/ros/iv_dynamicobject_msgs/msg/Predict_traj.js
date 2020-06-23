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

class Predict_traj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.point = null;
      this.v_x = null;
      this.v_y = null;
      this.acc_x = null;
      this.acc_y = null;
      this.pos_head = null;
      this.v_w = null;
      this.confidence_level = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0.0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new Points();
      }
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_y')) {
        this.v_y = initObj.v_y
      }
      else {
        this.v_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('pos_head')) {
        this.pos_head = initObj.pos_head
      }
      else {
        this.pos_head = 0.0;
      }
      if (initObj.hasOwnProperty('v_w')) {
        this.v_w = initObj.v_w
      }
      else {
        this.v_w = 0.0;
      }
      if (initObj.hasOwnProperty('confidence_level')) {
        this.confidence_level = initObj.confidence_level
      }
      else {
        this.confidence_level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Predict_traj
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.float64(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = Points.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.float32(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.float32(obj.v_y, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float32(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float32(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [pos_head]
    bufferOffset = _serializer.float32(obj.pos_head, buffer, bufferOffset);
    // Serialize message field [v_w]
    bufferOffset = _serializer.float32(obj.v_w, buffer, bufferOffset);
    // Serialize message field [confidence_level]
    bufferOffset = _serializer.int16(obj.confidence_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Predict_traj
    let len;
    let data = new Predict_traj(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_head]
    data.pos_head = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_w]
    data.v_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence_level]
    data.confidence_level = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/Predict_traj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e493c0baa9e7f0756323a00cb2bfc97a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
        float64 time_stamp
        Points point
        float32 v_x
        float32 v_y
        float32 acc_x
        float32 acc_y
        float32 pos_head
        float32 v_w
        int16 confidence_level
    
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
    const resolved = new Predict_traj(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0.0
    }

    if (msg.point !== undefined) {
      resolved.point = Points.Resolve(msg.point)
    }
    else {
      resolved.point = new Points()
    }

    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0.0
    }

    if (msg.v_y !== undefined) {
      resolved.v_y = msg.v_y;
    }
    else {
      resolved.v_y = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.pos_head !== undefined) {
      resolved.pos_head = msg.pos_head;
    }
    else {
      resolved.pos_head = 0.0
    }

    if (msg.v_w !== undefined) {
      resolved.v_w = msg.v_w;
    }
    else {
      resolved.v_w = 0.0
    }

    if (msg.confidence_level !== undefined) {
      resolved.confidence_level = msg.confidence_level;
    }
    else {
      resolved.confidence_level = 0
    }

    return resolved;
    }
};

module.exports = Predict_traj;
