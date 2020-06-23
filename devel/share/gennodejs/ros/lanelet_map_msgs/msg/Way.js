// Auto-generated. Do not edit!

// (in-package lanelet_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Node = require('./Node.js');

//-----------------------------------------------------------

class Way {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_area = null;
      this.is_forward = null;
      this.open_concave_obs_det = null;
      this.open_dynamic_obs_det = null;
      this.open_foggy_det = null;
      this.open_water_det = null;
      this.foggy_area = null;
      this.lawn_area = null;
      this.water_area = null;
      this.vel_limit = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('task_area')) {
        this.task_area = initObj.task_area
      }
      else {
        this.task_area = '';
      }
      if (initObj.hasOwnProperty('is_forward')) {
        this.is_forward = initObj.is_forward
      }
      else {
        this.is_forward = 0;
      }
      if (initObj.hasOwnProperty('open_concave_obs_det')) {
        this.open_concave_obs_det = initObj.open_concave_obs_det
      }
      else {
        this.open_concave_obs_det = 0;
      }
      if (initObj.hasOwnProperty('open_dynamic_obs_det')) {
        this.open_dynamic_obs_det = initObj.open_dynamic_obs_det
      }
      else {
        this.open_dynamic_obs_det = 0;
      }
      if (initObj.hasOwnProperty('open_foggy_det')) {
        this.open_foggy_det = initObj.open_foggy_det
      }
      else {
        this.open_foggy_det = 0;
      }
      if (initObj.hasOwnProperty('open_water_det')) {
        this.open_water_det = initObj.open_water_det
      }
      else {
        this.open_water_det = 0;
      }
      if (initObj.hasOwnProperty('foggy_area')) {
        this.foggy_area = initObj.foggy_area
      }
      else {
        this.foggy_area = 0;
      }
      if (initObj.hasOwnProperty('lawn_area')) {
        this.lawn_area = initObj.lawn_area
      }
      else {
        this.lawn_area = 0;
      }
      if (initObj.hasOwnProperty('water_area')) {
        this.water_area = initObj.water_area
      }
      else {
        this.water_area = 0;
      }
      if (initObj.hasOwnProperty('vel_limit')) {
        this.vel_limit = initObj.vel_limit
      }
      else {
        this.vel_limit = 0.0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Way
    // Serialize message field [task_area]
    bufferOffset = _serializer.string(obj.task_area, buffer, bufferOffset);
    // Serialize message field [is_forward]
    bufferOffset = _serializer.int8(obj.is_forward, buffer, bufferOffset);
    // Serialize message field [open_concave_obs_det]
    bufferOffset = _serializer.int8(obj.open_concave_obs_det, buffer, bufferOffset);
    // Serialize message field [open_dynamic_obs_det]
    bufferOffset = _serializer.int8(obj.open_dynamic_obs_det, buffer, bufferOffset);
    // Serialize message field [open_foggy_det]
    bufferOffset = _serializer.int8(obj.open_foggy_det, buffer, bufferOffset);
    // Serialize message field [open_water_det]
    bufferOffset = _serializer.int8(obj.open_water_det, buffer, bufferOffset);
    // Serialize message field [foggy_area]
    bufferOffset = _serializer.int8(obj.foggy_area, buffer, bufferOffset);
    // Serialize message field [lawn_area]
    bufferOffset = _serializer.int8(obj.lawn_area, buffer, bufferOffset);
    // Serialize message field [water_area]
    bufferOffset = _serializer.int8(obj.water_area, buffer, bufferOffset);
    // Serialize message field [vel_limit]
    bufferOffset = _serializer.float64(obj.vel_limit, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Node.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Way
    let len;
    let data = new Way(null);
    // Deserialize message field [task_area]
    data.task_area = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_forward]
    data.is_forward = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [open_concave_obs_det]
    data.open_concave_obs_det = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [open_dynamic_obs_det]
    data.open_dynamic_obs_det = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [open_foggy_det]
    data.open_foggy_det = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [open_water_det]
    data.open_water_det = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [foggy_area]
    data.foggy_area = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lawn_area]
    data.lawn_area = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [water_area]
    data.water_area = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [vel_limit]
    data.vel_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Node.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.task_area.length;
    object.points.forEach((val) => {
      length += Node.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lanelet_map_msgs/Way';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3097cc04a1c9c7fa806bc8a9fb7f37c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string task_area
    int8 is_forward
    int8 open_concave_obs_det
    int8 open_dynamic_obs_det
    int8 open_foggy_det
    int8 open_water_det
    int8 foggy_area
    int8 lawn_area
    int8 water_area
    float64 vel_limit
    Node[] points
    
    ================================================================================
    MSG: lanelet_map_msgs/Node
    int32 id
    string type
    float64 vlimit
    geometry_msgs/Point point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new Way(null);
    if (msg.task_area !== undefined) {
      resolved.task_area = msg.task_area;
    }
    else {
      resolved.task_area = ''
    }

    if (msg.is_forward !== undefined) {
      resolved.is_forward = msg.is_forward;
    }
    else {
      resolved.is_forward = 0
    }

    if (msg.open_concave_obs_det !== undefined) {
      resolved.open_concave_obs_det = msg.open_concave_obs_det;
    }
    else {
      resolved.open_concave_obs_det = 0
    }

    if (msg.open_dynamic_obs_det !== undefined) {
      resolved.open_dynamic_obs_det = msg.open_dynamic_obs_det;
    }
    else {
      resolved.open_dynamic_obs_det = 0
    }

    if (msg.open_foggy_det !== undefined) {
      resolved.open_foggy_det = msg.open_foggy_det;
    }
    else {
      resolved.open_foggy_det = 0
    }

    if (msg.open_water_det !== undefined) {
      resolved.open_water_det = msg.open_water_det;
    }
    else {
      resolved.open_water_det = 0
    }

    if (msg.foggy_area !== undefined) {
      resolved.foggy_area = msg.foggy_area;
    }
    else {
      resolved.foggy_area = 0
    }

    if (msg.lawn_area !== undefined) {
      resolved.lawn_area = msg.lawn_area;
    }
    else {
      resolved.lawn_area = 0
    }

    if (msg.water_area !== undefined) {
      resolved.water_area = msg.water_area;
    }
    else {
      resolved.water_area = 0
    }

    if (msg.vel_limit !== undefined) {
      resolved.vel_limit = msg.vel_limit;
    }
    else {
      resolved.vel_limit = 0.0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Node.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = Way;
