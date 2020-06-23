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
let Way = require('./Way.js');

//-----------------------------------------------------------

class Regulatory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.special_nodes = null;
      this.special_ways = null;
    }
    else {
      if (initObj.hasOwnProperty('special_nodes')) {
        this.special_nodes = initObj.special_nodes
      }
      else {
        this.special_nodes = [];
      }
      if (initObj.hasOwnProperty('special_ways')) {
        this.special_ways = initObj.special_ways
      }
      else {
        this.special_ways = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Regulatory
    // Serialize message field [special_nodes]
    // Serialize the length for message field [special_nodes]
    bufferOffset = _serializer.uint32(obj.special_nodes.length, buffer, bufferOffset);
    obj.special_nodes.forEach((val) => {
      bufferOffset = Node.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [special_ways]
    // Serialize the length for message field [special_ways]
    bufferOffset = _serializer.uint32(obj.special_ways.length, buffer, bufferOffset);
    obj.special_ways.forEach((val) => {
      bufferOffset = Way.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Regulatory
    let len;
    let data = new Regulatory(null);
    // Deserialize message field [special_nodes]
    // Deserialize array length for message field [special_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.special_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.special_nodes[i] = Node.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [special_ways]
    // Deserialize array length for message field [special_ways]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.special_ways = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.special_ways[i] = Way.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.special_nodes.forEach((val) => {
      length += Node.getMessageSize(val);
    });
    object.special_ways.forEach((val) => {
      length += Way.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lanelet_map_msgs/Regulatory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6181abd984439c0ed4c1b41afc66d563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Node[] special_nodes
    Way[] special_ways
    
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
    
    ================================================================================
    MSG: lanelet_map_msgs/Way
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Regulatory(null);
    if (msg.special_nodes !== undefined) {
      resolved.special_nodes = new Array(msg.special_nodes.length);
      for (let i = 0; i < resolved.special_nodes.length; ++i) {
        resolved.special_nodes[i] = Node.Resolve(msg.special_nodes[i]);
      }
    }
    else {
      resolved.special_nodes = []
    }

    if (msg.special_ways !== undefined) {
      resolved.special_ways = new Array(msg.special_ways.length);
      for (let i = 0; i < resolved.special_ways.length; ++i) {
        resolved.special_ways[i] = Way.Resolve(msg.special_ways[i]);
      }
    }
    else {
      resolved.special_ways = []
    }

    return resolved;
    }
};

module.exports = Regulatory;
