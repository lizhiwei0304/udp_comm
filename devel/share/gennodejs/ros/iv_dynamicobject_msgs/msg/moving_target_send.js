// Auto-generated. Do not edit!

// (in-package iv_dynamicobject_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let moving_target = require('./moving_target.js');

//-----------------------------------------------------------

class moving_target_send {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.target_num = null;
      this.target = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0.0;
      }
      if (initObj.hasOwnProperty('target_num')) {
        this.target_num = initObj.target_num
      }
      else {
        this.target_num = 0;
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moving_target_send
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.float64(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [target_num]
    bufferOffset = _serializer.int32(obj.target_num, buffer, bufferOffset);
    // Serialize message field [target]
    // Serialize the length for message field [target]
    bufferOffset = _serializer.uint32(obj.target.length, buffer, bufferOffset);
    obj.target.forEach((val) => {
      bufferOffset = moving_target.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moving_target_send
    let len;
    let data = new moving_target_send(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_num]
    data.target_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target]
    // Deserialize array length for message field [target]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target[i] = moving_target.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.target.forEach((val) => {
      length += moving_target.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/moving_target_send';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52c14969bef6f78128016409bcbd38ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time_stamp        
    int32 target_num
    moving_target[] target          
    
    ================================================================================
    MSG: iv_dynamicobject_msgs/moving_target
        int32 ID_number
        Points center_point
        int32 line_num
        Points[] line_point   
        float32 object_high
        int32 object_type    
        bool is_updated
        int32  tracked_times
        int32  dangerous_level
        int32  history_num
        History_traj[] history_traj
        int32  predict_num
        Predict_traj[] predict_traj       
    
    ================================================================================
    MSG: iv_dynamicobject_msgs/Points
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: iv_dynamicobject_msgs/History_traj
        float64 time_stamp
        Points center_point
        int32 line_num
        Points[] line_point
        
    
    ================================================================================
    MSG: iv_dynamicobject_msgs/Predict_traj
        float64 time_stamp
        Points point
        float32 v_x
        float32 v_y
        float32 acc_x
        float32 acc_y
        float32 pos_head
        float32 v_w
        int16 confidence_level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moving_target_send(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0.0
    }

    if (msg.target_num !== undefined) {
      resolved.target_num = msg.target_num;
    }
    else {
      resolved.target_num = 0
    }

    if (msg.target !== undefined) {
      resolved.target = new Array(msg.target.length);
      for (let i = 0; i < resolved.target.length; ++i) {
        resolved.target[i] = moving_target.Resolve(msg.target[i]);
      }
    }
    else {
      resolved.target = []
    }

    return resolved;
    }
};

module.exports = moving_target_send;
