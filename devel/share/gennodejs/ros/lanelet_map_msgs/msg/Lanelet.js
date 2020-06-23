// Auto-generated. Do not edit!

// (in-package lanelet_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Way = require('./Way.js');
let Regulatory = require('./Regulatory.js');

//-----------------------------------------------------------

class Lanelet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.left_bound = null;
      this.right_bound = null;
      this.centerline = null;
      this.regulatory_elements = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('left_bound')) {
        this.left_bound = initObj.left_bound
      }
      else {
        this.left_bound = new Way();
      }
      if (initObj.hasOwnProperty('right_bound')) {
        this.right_bound = initObj.right_bound
      }
      else {
        this.right_bound = new Way();
      }
      if (initObj.hasOwnProperty('centerline')) {
        this.centerline = initObj.centerline
      }
      else {
        this.centerline = new Way();
      }
      if (initObj.hasOwnProperty('regulatory_elements')) {
        this.regulatory_elements = initObj.regulatory_elements
      }
      else {
        this.regulatory_elements = new Regulatory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lanelet
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [left_bound]
    bufferOffset = Way.serialize(obj.left_bound, buffer, bufferOffset);
    // Serialize message field [right_bound]
    bufferOffset = Way.serialize(obj.right_bound, buffer, bufferOffset);
    // Serialize message field [centerline]
    bufferOffset = Way.serialize(obj.centerline, buffer, bufferOffset);
    // Serialize message field [regulatory_elements]
    bufferOffset = Regulatory.serialize(obj.regulatory_elements, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lanelet
    let len;
    let data = new Lanelet(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_bound]
    data.left_bound = Way.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_bound]
    data.right_bound = Way.deserialize(buffer, bufferOffset);
    // Deserialize message field [centerline]
    data.centerline = Way.deserialize(buffer, bufferOffset);
    // Deserialize message field [regulatory_elements]
    data.regulatory_elements = Regulatory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Way.getMessageSize(object.left_bound);
    length += Way.getMessageSize(object.right_bound);
    length += Way.getMessageSize(object.centerline);
    length += Regulatory.getMessageSize(object.regulatory_elements);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lanelet_map_msgs/Lanelet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79efb21963470ed788ab90e3dd311d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    Way left_bound
    Way right_bound
    Way centerline
    Regulatory regulatory_elements
    
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
    MSG: lanelet_map_msgs/Regulatory
    Node[] special_nodes
    Way[] special_ways
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lanelet(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.left_bound !== undefined) {
      resolved.left_bound = Way.Resolve(msg.left_bound)
    }
    else {
      resolved.left_bound = new Way()
    }

    if (msg.right_bound !== undefined) {
      resolved.right_bound = Way.Resolve(msg.right_bound)
    }
    else {
      resolved.right_bound = new Way()
    }

    if (msg.centerline !== undefined) {
      resolved.centerline = Way.Resolve(msg.centerline)
    }
    else {
      resolved.centerline = new Way()
    }

    if (msg.regulatory_elements !== undefined) {
      resolved.regulatory_elements = Regulatory.Resolve(msg.regulatory_elements)
    }
    else {
      resolved.regulatory_elements = new Regulatory()
    }

    return resolved;
    }
};

module.exports = Lanelet;
