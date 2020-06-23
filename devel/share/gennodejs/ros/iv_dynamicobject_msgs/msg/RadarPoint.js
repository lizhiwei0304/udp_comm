// Auto-generated. Do not edit!

// (in-package iv_dynamicobject_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RadarPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_ID = null;
      this.range = null;
      this.v = null;
      this.angle = null;
      this.x = null;
      this.y = null;
      this.valid = null;
      this.status = null;
      this.moving = null;
      this.moving_fast = null;
      this.moving_slow = null;
    }
    else {
      if (initObj.hasOwnProperty('target_ID')) {
        this.target_ID = initObj.target_ID
      }
      else {
        this.target_ID = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
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
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = 0;
      }
      if (initObj.hasOwnProperty('moving_fast')) {
        this.moving_fast = initObj.moving_fast
      }
      else {
        this.moving_fast = false;
      }
      if (initObj.hasOwnProperty('moving_slow')) {
        this.moving_slow = initObj.moving_slow
      }
      else {
        this.moving_slow = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarPoint
    // Serialize message field [target_ID]
    bufferOffset = _serializer.uint8(obj.target_ID, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float32(obj.v, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.uint8(obj.moving, buffer, bufferOffset);
    // Serialize message field [moving_fast]
    bufferOffset = _serializer.bool(obj.moving_fast, buffer, bufferOffset);
    // Serialize message field [moving_slow]
    bufferOffset = _serializer.bool(obj.moving_slow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarPoint
    let len;
    let data = new RadarPoint(null);
    // Deserialize message field [target_ID]
    data.target_ID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [moving_fast]
    data.moving_fast = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [moving_slow]
    data.moving_slow = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/RadarPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba5c3ffed2f8ad0288b366e555ab33f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 target_ID
    float32 range
    float32 v
    float32 angle
    float32 x
    float32 y
    bool valid
    uint8 status
    uint8 moving
    bool moving_fast
    bool moving_slow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarPoint(null);
    if (msg.target_ID !== undefined) {
      resolved.target_ID = msg.target_ID;
    }
    else {
      resolved.target_ID = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
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

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = 0
    }

    if (msg.moving_fast !== undefined) {
      resolved.moving_fast = msg.moving_fast;
    }
    else {
      resolved.moving_fast = false
    }

    if (msg.moving_slow !== undefined) {
      resolved.moving_slow = msg.moving_slow;
    }
    else {
      resolved.moving_slow = false
    }

    return resolved;
    }
};

module.exports = RadarPoint;
