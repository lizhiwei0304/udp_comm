// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubmapIndex = require('./SubmapIndex.js');

//-----------------------------------------------------------

class insertion_submaps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_submap = null;
      this.submap = null;
    }
    else {
      if (initObj.hasOwnProperty('num_submap')) {
        this.num_submap = initObj.num_submap
      }
      else {
        this.num_submap = 0;
      }
      if (initObj.hasOwnProperty('submap')) {
        this.submap = initObj.submap
      }
      else {
        this.submap = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type insertion_submaps
    // Serialize message field [num_submap]
    bufferOffset = _serializer.int32(obj.num_submap, buffer, bufferOffset);
    // Serialize message field [submap]
    // Serialize the length for message field [submap]
    bufferOffset = _serializer.uint32(obj.submap.length, buffer, bufferOffset);
    obj.submap.forEach((val) => {
      bufferOffset = SubmapIndex.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type insertion_submaps
    let len;
    let data = new insertion_submaps(null);
    // Deserialize message field [num_submap]
    data.num_submap = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [submap]
    // Deserialize array length for message field [submap]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.submap = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.submap[i] = SubmapIndex.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 65 * object.submap.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_slam_ros_msgs/insertion_submaps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4554e58a1354197bd7aaa4c53aabdba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num_submap
    SubmapIndex[] submap
    
    ================================================================================
    MSG: iv_slam_ros_msgs/SubmapIndex
    int32 trajectory_id
    int32 submap_index
    bool finishflag
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new insertion_submaps(null);
    if (msg.num_submap !== undefined) {
      resolved.num_submap = msg.num_submap;
    }
    else {
      resolved.num_submap = 0
    }

    if (msg.submap !== undefined) {
      resolved.submap = new Array(msg.submap.length);
      for (let i = 0; i < resolved.submap.length; ++i) {
        resolved.submap[i] = SubmapIndex.Resolve(msg.submap[i]);
      }
    }
    else {
      resolved.submap = []
    }

    return resolved;
    }
};

module.exports = insertion_submaps;
