// Auto-generated. Do not edit!

// (in-package xsh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class speed_plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.point_num = null;
      this.plan_time = null;
      this.plan_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('point_num')) {
        this.point_num = initObj.point_num
      }
      else {
        this.point_num = 0;
      }
      if (initObj.hasOwnProperty('plan_time')) {
        this.plan_time = initObj.plan_time
      }
      else {
        this.plan_time = [];
      }
      if (initObj.hasOwnProperty('plan_speed')) {
        this.plan_speed = initObj.plan_speed
      }
      else {
        this.plan_speed = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speed_plan
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [point_num]
    bufferOffset = _serializer.int16(obj.point_num, buffer, bufferOffset);
    // Serialize message field [plan_time]
    bufferOffset = _arraySerializer.float64(obj.plan_time, buffer, bufferOffset, null);
    // Serialize message field [plan_speed]
    bufferOffset = _arraySerializer.float64(obj.plan_speed, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speed_plan
    let len;
    let data = new speed_plan(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [point_num]
    data.point_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [plan_time]
    data.plan_time = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [plan_speed]
    data.plan_speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.plan_time.length;
    length += 8 * object.plan_speed.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xsh_msgs/speed_plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3e98dffdc5b35d04daac2e24f81e4f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    int16 point_num
    float64[] plan_time
    float64[] plan_speed
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speed_plan(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.point_num !== undefined) {
      resolved.point_num = msg.point_num;
    }
    else {
      resolved.point_num = 0
    }

    if (msg.plan_time !== undefined) {
      resolved.plan_time = msg.plan_time;
    }
    else {
      resolved.plan_time = []
    }

    if (msg.plan_speed !== undefined) {
      resolved.plan_speed = msg.plan_speed;
    }
    else {
      resolved.plan_speed = []
    }

    return resolved;
    }
};

module.exports = speed_plan;
