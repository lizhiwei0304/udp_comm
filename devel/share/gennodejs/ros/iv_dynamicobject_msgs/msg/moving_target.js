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
let History_traj = require('./History_traj.js');
let Predict_traj = require('./Predict_traj.js');

//-----------------------------------------------------------

class moving_target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID_number = null;
      this.center_point = null;
      this.line_num = null;
      this.line_point = null;
      this.object_high = null;
      this.object_type = null;
      this.is_updated = null;
      this.tracked_times = null;
      this.dangerous_level = null;
      this.history_num = null;
      this.history_traj = null;
      this.predict_num = null;
      this.predict_traj = null;
    }
    else {
      if (initObj.hasOwnProperty('ID_number')) {
        this.ID_number = initObj.ID_number
      }
      else {
        this.ID_number = 0;
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new Points();
      }
      if (initObj.hasOwnProperty('line_num')) {
        this.line_num = initObj.line_num
      }
      else {
        this.line_num = 0;
      }
      if (initObj.hasOwnProperty('line_point')) {
        this.line_point = initObj.line_point
      }
      else {
        this.line_point = [];
      }
      if (initObj.hasOwnProperty('object_high')) {
        this.object_high = initObj.object_high
      }
      else {
        this.object_high = 0.0;
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = 0;
      }
      if (initObj.hasOwnProperty('is_updated')) {
        this.is_updated = initObj.is_updated
      }
      else {
        this.is_updated = false;
      }
      if (initObj.hasOwnProperty('tracked_times')) {
        this.tracked_times = initObj.tracked_times
      }
      else {
        this.tracked_times = 0;
      }
      if (initObj.hasOwnProperty('dangerous_level')) {
        this.dangerous_level = initObj.dangerous_level
      }
      else {
        this.dangerous_level = 0;
      }
      if (initObj.hasOwnProperty('history_num')) {
        this.history_num = initObj.history_num
      }
      else {
        this.history_num = 0;
      }
      if (initObj.hasOwnProperty('history_traj')) {
        this.history_traj = initObj.history_traj
      }
      else {
        this.history_traj = [];
      }
      if (initObj.hasOwnProperty('predict_num')) {
        this.predict_num = initObj.predict_num
      }
      else {
        this.predict_num = 0;
      }
      if (initObj.hasOwnProperty('predict_traj')) {
        this.predict_traj = initObj.predict_traj
      }
      else {
        this.predict_traj = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moving_target
    // Serialize message field [ID_number]
    bufferOffset = _serializer.int32(obj.ID_number, buffer, bufferOffset);
    // Serialize message field [center_point]
    bufferOffset = Points.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [line_num]
    bufferOffset = _serializer.int32(obj.line_num, buffer, bufferOffset);
    // Serialize message field [line_point]
    // Serialize the length for message field [line_point]
    bufferOffset = _serializer.uint32(obj.line_point.length, buffer, bufferOffset);
    obj.line_point.forEach((val) => {
      bufferOffset = Points.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [object_high]
    bufferOffset = _serializer.float32(obj.object_high, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = _serializer.int32(obj.object_type, buffer, bufferOffset);
    // Serialize message field [is_updated]
    bufferOffset = _serializer.bool(obj.is_updated, buffer, bufferOffset);
    // Serialize message field [tracked_times]
    bufferOffset = _serializer.int32(obj.tracked_times, buffer, bufferOffset);
    // Serialize message field [dangerous_level]
    bufferOffset = _serializer.int32(obj.dangerous_level, buffer, bufferOffset);
    // Serialize message field [history_num]
    bufferOffset = _serializer.int32(obj.history_num, buffer, bufferOffset);
    // Serialize message field [history_traj]
    // Serialize the length for message field [history_traj]
    bufferOffset = _serializer.uint32(obj.history_traj.length, buffer, bufferOffset);
    obj.history_traj.forEach((val) => {
      bufferOffset = History_traj.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predict_num]
    bufferOffset = _serializer.int32(obj.predict_num, buffer, bufferOffset);
    // Serialize message field [predict_traj]
    // Serialize the length for message field [predict_traj]
    bufferOffset = _serializer.uint32(obj.predict_traj.length, buffer, bufferOffset);
    obj.predict_traj.forEach((val) => {
      bufferOffset = Predict_traj.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moving_target
    let len;
    let data = new moving_target(null);
    // Deserialize message field [ID_number]
    data.ID_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [center_point]
    data.center_point = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_num]
    data.line_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [line_point]
    // Deserialize array length for message field [line_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_point[i] = Points.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [object_high]
    data.object_high = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_updated]
    data.is_updated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tracked_times]
    data.tracked_times = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dangerous_level]
    data.dangerous_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [history_num]
    data.history_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [history_traj]
    // Deserialize array length for message field [history_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.history_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.history_traj[i] = History_traj.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predict_num]
    data.predict_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [predict_traj]
    // Deserialize array length for message field [predict_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predict_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predict_traj[i] = Predict_traj.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.line_point.length;
    object.history_traj.forEach((val) => {
      length += History_traj.getMessageSize(val);
    });
    length += 58 * object.predict_traj.length;
    return length + 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/moving_target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54e1380b44fd25ff42cfc852f7e95898';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new moving_target(null);
    if (msg.ID_number !== undefined) {
      resolved.ID_number = msg.ID_number;
    }
    else {
      resolved.ID_number = 0
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = Points.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new Points()
    }

    if (msg.line_num !== undefined) {
      resolved.line_num = msg.line_num;
    }
    else {
      resolved.line_num = 0
    }

    if (msg.line_point !== undefined) {
      resolved.line_point = new Array(msg.line_point.length);
      for (let i = 0; i < resolved.line_point.length; ++i) {
        resolved.line_point[i] = Points.Resolve(msg.line_point[i]);
      }
    }
    else {
      resolved.line_point = []
    }

    if (msg.object_high !== undefined) {
      resolved.object_high = msg.object_high;
    }
    else {
      resolved.object_high = 0.0
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = msg.object_type;
    }
    else {
      resolved.object_type = 0
    }

    if (msg.is_updated !== undefined) {
      resolved.is_updated = msg.is_updated;
    }
    else {
      resolved.is_updated = false
    }

    if (msg.tracked_times !== undefined) {
      resolved.tracked_times = msg.tracked_times;
    }
    else {
      resolved.tracked_times = 0
    }

    if (msg.dangerous_level !== undefined) {
      resolved.dangerous_level = msg.dangerous_level;
    }
    else {
      resolved.dangerous_level = 0
    }

    if (msg.history_num !== undefined) {
      resolved.history_num = msg.history_num;
    }
    else {
      resolved.history_num = 0
    }

    if (msg.history_traj !== undefined) {
      resolved.history_traj = new Array(msg.history_traj.length);
      for (let i = 0; i < resolved.history_traj.length; ++i) {
        resolved.history_traj[i] = History_traj.Resolve(msg.history_traj[i]);
      }
    }
    else {
      resolved.history_traj = []
    }

    if (msg.predict_num !== undefined) {
      resolved.predict_num = msg.predict_num;
    }
    else {
      resolved.predict_num = 0
    }

    if (msg.predict_traj !== undefined) {
      resolved.predict_traj = new Array(msg.predict_traj.length);
      for (let i = 0; i < resolved.predict_traj.length; ++i) {
        resolved.predict_traj[i] = Predict_traj.Resolve(msg.predict_traj[i]);
      }
    }
    else {
      resolved.predict_traj = []
    }

    return resolved;
    }
};

module.exports = moving_target;
