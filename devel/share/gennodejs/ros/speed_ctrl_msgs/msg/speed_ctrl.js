// Auto-generated. Do not edit!

// (in-package speed_ctrl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class speed_ctrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.count = null;
      this.issue_acc = null;
      this.issue_v = null;
      this.cur_acc = null;
      this.cur_speed = null;
      this.rc_path_time = null;
      this.pub_acc_time = null;
      this.rc_acc_time = null;
      this.pub_cmd_time = null;
      this.total_s = null;
      this.curv_max = null;
      this.v_max = null;
      this.running_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('issue_acc')) {
        this.issue_acc = initObj.issue_acc
      }
      else {
        this.issue_acc = 0.0;
      }
      if (initObj.hasOwnProperty('issue_v')) {
        this.issue_v = initObj.issue_v
      }
      else {
        this.issue_v = 0.0;
      }
      if (initObj.hasOwnProperty('cur_acc')) {
        this.cur_acc = initObj.cur_acc
      }
      else {
        this.cur_acc = 0.0;
      }
      if (initObj.hasOwnProperty('cur_speed')) {
        this.cur_speed = initObj.cur_speed
      }
      else {
        this.cur_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rc_path_time')) {
        this.rc_path_time = initObj.rc_path_time
      }
      else {
        this.rc_path_time = 0.0;
      }
      if (initObj.hasOwnProperty('pub_acc_time')) {
        this.pub_acc_time = initObj.pub_acc_time
      }
      else {
        this.pub_acc_time = 0.0;
      }
      if (initObj.hasOwnProperty('rc_acc_time')) {
        this.rc_acc_time = initObj.rc_acc_time
      }
      else {
        this.rc_acc_time = 0.0;
      }
      if (initObj.hasOwnProperty('pub_cmd_time')) {
        this.pub_cmd_time = initObj.pub_cmd_time
      }
      else {
        this.pub_cmd_time = 0.0;
      }
      if (initObj.hasOwnProperty('total_s')) {
        this.total_s = initObj.total_s
      }
      else {
        this.total_s = 0.0;
      }
      if (initObj.hasOwnProperty('curv_max')) {
        this.curv_max = initObj.curv_max
      }
      else {
        this.curv_max = 0.0;
      }
      if (initObj.hasOwnProperty('v_max')) {
        this.v_max = initObj.v_max
      }
      else {
        this.v_max = 0.0;
      }
      if (initObj.hasOwnProperty('running_mode')) {
        this.running_mode = initObj.running_mode
      }
      else {
        this.running_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speed_ctrl
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint32(obj.count, buffer, bufferOffset);
    // Serialize message field [issue_acc]
    bufferOffset = _serializer.float64(obj.issue_acc, buffer, bufferOffset);
    // Serialize message field [issue_v]
    bufferOffset = _serializer.float64(obj.issue_v, buffer, bufferOffset);
    // Serialize message field [cur_acc]
    bufferOffset = _serializer.float64(obj.cur_acc, buffer, bufferOffset);
    // Serialize message field [cur_speed]
    bufferOffset = _serializer.float64(obj.cur_speed, buffer, bufferOffset);
    // Serialize message field [rc_path_time]
    bufferOffset = _serializer.float64(obj.rc_path_time, buffer, bufferOffset);
    // Serialize message field [pub_acc_time]
    bufferOffset = _serializer.float64(obj.pub_acc_time, buffer, bufferOffset);
    // Serialize message field [rc_acc_time]
    bufferOffset = _serializer.float64(obj.rc_acc_time, buffer, bufferOffset);
    // Serialize message field [pub_cmd_time]
    bufferOffset = _serializer.float64(obj.pub_cmd_time, buffer, bufferOffset);
    // Serialize message field [total_s]
    bufferOffset = _serializer.float64(obj.total_s, buffer, bufferOffset);
    // Serialize message field [curv_max]
    bufferOffset = _serializer.float64(obj.curv_max, buffer, bufferOffset);
    // Serialize message field [v_max]
    bufferOffset = _serializer.float64(obj.v_max, buffer, bufferOffset);
    // Serialize message field [running_mode]
    bufferOffset = _serializer.uint8(obj.running_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speed_ctrl
    let len;
    let data = new speed_ctrl(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [issue_acc]
    data.issue_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [issue_v]
    data.issue_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_acc]
    data.cur_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_speed]
    data.cur_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rc_path_time]
    data.rc_path_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pub_acc_time]
    data.pub_acc_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rc_acc_time]
    data.rc_acc_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pub_cmd_time]
    data.pub_cmd_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_s]
    data.total_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curv_max]
    data.curv_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_max]
    data.v_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [running_mode]
    data.running_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 94;
  }

  static datatype() {
    // Returns string type for a message object
    return 'speed_ctrl_msgs/speed_ctrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eca0c122130abed6f501d6e0ed63b576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 direction
    uint32 count
    float64 issue_acc
    float64 issue_v
    float64 cur_acc
    float64 cur_speed
    float64 rc_path_time
    float64 pub_acc_time
    float64 rc_acc_time
    float64 pub_cmd_time
    
    ## for debug
    float64 total_s
    float64 curv_max
    float64 v_max
    uint8 running_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speed_ctrl(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.issue_acc !== undefined) {
      resolved.issue_acc = msg.issue_acc;
    }
    else {
      resolved.issue_acc = 0.0
    }

    if (msg.issue_v !== undefined) {
      resolved.issue_v = msg.issue_v;
    }
    else {
      resolved.issue_v = 0.0
    }

    if (msg.cur_acc !== undefined) {
      resolved.cur_acc = msg.cur_acc;
    }
    else {
      resolved.cur_acc = 0.0
    }

    if (msg.cur_speed !== undefined) {
      resolved.cur_speed = msg.cur_speed;
    }
    else {
      resolved.cur_speed = 0.0
    }

    if (msg.rc_path_time !== undefined) {
      resolved.rc_path_time = msg.rc_path_time;
    }
    else {
      resolved.rc_path_time = 0.0
    }

    if (msg.pub_acc_time !== undefined) {
      resolved.pub_acc_time = msg.pub_acc_time;
    }
    else {
      resolved.pub_acc_time = 0.0
    }

    if (msg.rc_acc_time !== undefined) {
      resolved.rc_acc_time = msg.rc_acc_time;
    }
    else {
      resolved.rc_acc_time = 0.0
    }

    if (msg.pub_cmd_time !== undefined) {
      resolved.pub_cmd_time = msg.pub_cmd_time;
    }
    else {
      resolved.pub_cmd_time = 0.0
    }

    if (msg.total_s !== undefined) {
      resolved.total_s = msg.total_s;
    }
    else {
      resolved.total_s = 0.0
    }

    if (msg.curv_max !== undefined) {
      resolved.curv_max = msg.curv_max;
    }
    else {
      resolved.curv_max = 0.0
    }

    if (msg.v_max !== undefined) {
      resolved.v_max = msg.v_max;
    }
    else {
      resolved.v_max = 0.0
    }

    if (msg.running_mode !== undefined) {
      resolved.running_mode = msg.running_mode;
    }
    else {
      resolved.running_mode = 0
    }

    return resolved;
    }
};

module.exports = speed_ctrl;
