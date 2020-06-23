// Auto-generated. Do not edit!

// (in-package lanelet_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lanelet = require('./Lanelet.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaneletMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_lane = null;
      this.left_beside = null;
      this.right_beside = null;
      this.forward_following = null;
      this.forward_right = null;
      this.forward_left = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_lane')) {
        this.current_lane = initObj.current_lane
      }
      else {
        this.current_lane = [];
      }
      if (initObj.hasOwnProperty('left_beside')) {
        this.left_beside = initObj.left_beside
      }
      else {
        this.left_beside = new Lanelet();
      }
      if (initObj.hasOwnProperty('right_beside')) {
        this.right_beside = initObj.right_beside
      }
      else {
        this.right_beside = new Lanelet();
      }
      if (initObj.hasOwnProperty('forward_following')) {
        this.forward_following = initObj.forward_following
      }
      else {
        this.forward_following = [];
      }
      if (initObj.hasOwnProperty('forward_right')) {
        this.forward_right = initObj.forward_right
      }
      else {
        this.forward_right = [];
      }
      if (initObj.hasOwnProperty('forward_left')) {
        this.forward_left = initObj.forward_left
      }
      else {
        this.forward_left = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneletMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_lane]
    // Serialize the length for message field [current_lane]
    bufferOffset = _serializer.uint32(obj.current_lane.length, buffer, bufferOffset);
    obj.current_lane.forEach((val) => {
      bufferOffset = Lanelet.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_beside]
    bufferOffset = Lanelet.serialize(obj.left_beside, buffer, bufferOffset);
    // Serialize message field [right_beside]
    bufferOffset = Lanelet.serialize(obj.right_beside, buffer, bufferOffset);
    // Serialize message field [forward_following]
    // Serialize the length for message field [forward_following]
    bufferOffset = _serializer.uint32(obj.forward_following.length, buffer, bufferOffset);
    obj.forward_following.forEach((val) => {
      bufferOffset = Lanelet.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [forward_right]
    // Serialize the length for message field [forward_right]
    bufferOffset = _serializer.uint32(obj.forward_right.length, buffer, bufferOffset);
    obj.forward_right.forEach((val) => {
      bufferOffset = Lanelet.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [forward_left]
    // Serialize the length for message field [forward_left]
    bufferOffset = _serializer.uint32(obj.forward_left.length, buffer, bufferOffset);
    obj.forward_left.forEach((val) => {
      bufferOffset = Lanelet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneletMap
    let len;
    let data = new LaneletMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_lane]
    // Deserialize array length for message field [current_lane]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_lane = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_lane[i] = Lanelet.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_beside]
    data.left_beside = Lanelet.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_beside]
    data.right_beside = Lanelet.deserialize(buffer, bufferOffset);
    // Deserialize message field [forward_following]
    // Deserialize array length for message field [forward_following]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.forward_following = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.forward_following[i] = Lanelet.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [forward_right]
    // Deserialize array length for message field [forward_right]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.forward_right = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.forward_right[i] = Lanelet.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [forward_left]
    // Deserialize array length for message field [forward_left]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.forward_left = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.forward_left[i] = Lanelet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.current_lane.forEach((val) => {
      length += Lanelet.getMessageSize(val);
    });
    length += Lanelet.getMessageSize(object.left_beside);
    length += Lanelet.getMessageSize(object.right_beside);
    object.forward_following.forEach((val) => {
      length += Lanelet.getMessageSize(val);
    });
    object.forward_right.forEach((val) => {
      length += Lanelet.getMessageSize(val);
    });
    object.forward_left.forEach((val) => {
      length += Lanelet.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lanelet_map_msgs/LaneletMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3579fead11f7e76167ff825b6fd746c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Lanelet[] current_lane
    Lanelet left_beside
    Lanelet right_beside
    Lanelet[] forward_following
    Lanelet[] forward_right
    Lanelet[] forward_left
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: lanelet_map_msgs/Lanelet
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
    const resolved = new LaneletMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_lane !== undefined) {
      resolved.current_lane = new Array(msg.current_lane.length);
      for (let i = 0; i < resolved.current_lane.length; ++i) {
        resolved.current_lane[i] = Lanelet.Resolve(msg.current_lane[i]);
      }
    }
    else {
      resolved.current_lane = []
    }

    if (msg.left_beside !== undefined) {
      resolved.left_beside = Lanelet.Resolve(msg.left_beside)
    }
    else {
      resolved.left_beside = new Lanelet()
    }

    if (msg.right_beside !== undefined) {
      resolved.right_beside = Lanelet.Resolve(msg.right_beside)
    }
    else {
      resolved.right_beside = new Lanelet()
    }

    if (msg.forward_following !== undefined) {
      resolved.forward_following = new Array(msg.forward_following.length);
      for (let i = 0; i < resolved.forward_following.length; ++i) {
        resolved.forward_following[i] = Lanelet.Resolve(msg.forward_following[i]);
      }
    }
    else {
      resolved.forward_following = []
    }

    if (msg.forward_right !== undefined) {
      resolved.forward_right = new Array(msg.forward_right.length);
      for (let i = 0; i < resolved.forward_right.length; ++i) {
        resolved.forward_right[i] = Lanelet.Resolve(msg.forward_right[i]);
      }
    }
    else {
      resolved.forward_right = []
    }

    if (msg.forward_left !== undefined) {
      resolved.forward_left = new Array(msg.forward_left.length);
      for (let i = 0; i < resolved.forward_left.length; ++i) {
        resolved.forward_left[i] = Lanelet.Resolve(msg.forward_left[i]);
      }
    }
    else {
      resolved.forward_left = []
    }

    return resolved;
    }
};

module.exports = LaneletMap;
