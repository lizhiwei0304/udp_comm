// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModeCmd = require('./ModeCmd.js');
let ThrottleCmd = require('./ThrottleCmd.js');
let BrakeCmd = require('./BrakeCmd.js');
let SteerCmd = require('./SteerCmd.js');
let GearCmd = require('./GearCmd.js');
let LampCmd = require('./LampCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SendECUCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.throttle_cmd = null;
      this.brake_cmd = null;
      this.steer_cmd = null;
      this.gear_cmd = null;
      this.lamp_cmd = null;
      this.emergency = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new ModeCmd();
      }
      if (initObj.hasOwnProperty('throttle_cmd')) {
        this.throttle_cmd = initObj.throttle_cmd
      }
      else {
        this.throttle_cmd = new ThrottleCmd();
      }
      if (initObj.hasOwnProperty('brake_cmd')) {
        this.brake_cmd = initObj.brake_cmd
      }
      else {
        this.brake_cmd = new BrakeCmd();
      }
      if (initObj.hasOwnProperty('steer_cmd')) {
        this.steer_cmd = initObj.steer_cmd
      }
      else {
        this.steer_cmd = new SteerCmd();
      }
      if (initObj.hasOwnProperty('gear_cmd')) {
        this.gear_cmd = initObj.gear_cmd
      }
      else {
        this.gear_cmd = new GearCmd();
      }
      if (initObj.hasOwnProperty('lamp_cmd')) {
        this.lamp_cmd = initObj.lamp_cmd
      }
      else {
        this.lamp_cmd = new LampCmd();
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendECUCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = ModeCmd.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [throttle_cmd]
    bufferOffset = ThrottleCmd.serialize(obj.throttle_cmd, buffer, bufferOffset);
    // Serialize message field [brake_cmd]
    bufferOffset = BrakeCmd.serialize(obj.brake_cmd, buffer, bufferOffset);
    // Serialize message field [steer_cmd]
    bufferOffset = SteerCmd.serialize(obj.steer_cmd, buffer, bufferOffset);
    // Serialize message field [gear_cmd]
    bufferOffset = GearCmd.serialize(obj.gear_cmd, buffer, bufferOffset);
    // Serialize message field [lamp_cmd]
    bufferOffset = LampCmd.serialize(obj.lamp_cmd, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.bool(obj.emergency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendECUCmd
    let len;
    let data = new SendECUCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = ModeCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_cmd]
    data.throttle_cmd = ThrottleCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_cmd]
    data.brake_cmd = BrakeCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer_cmd]
    data.steer_cmd = SteerCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear_cmd]
    data.gear_cmd = GearCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [lamp_cmd]
    data.lamp_cmd = LampCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ModeCmd.getMessageSize(object.mode);
    length += ThrottleCmd.getMessageSize(object.throttle_cmd);
    length += BrakeCmd.getMessageSize(object.brake_cmd);
    length += SteerCmd.getMessageSize(object.steer_cmd);
    length += GearCmd.getMessageSize(object.gear_cmd);
    length += LampCmd.getMessageSize(object.lamp_cmd);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/SendECUCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1e81f44c70f667d2029e766d93f8169';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    control_msgs/ModeCmd mode
    
    control_msgs/ThrottleCmd throttle_cmd
    control_msgs/BrakeCmd brake_cmd
    control_msgs/SteerCmd steer_cmd
    control_msgs/GearCmd gear_cmd
    control_msgs/LampCmd lamp_cmd
    
    bool emergency
    
    
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
    MSG: control_msgs/ModeCmd
    Header header
    
    int32 auto_mode
    
    int32 speed_mode
    bool throttle_enable
    bool brake_enable
    
    int32 steer_mode
    int32 gear_mode
    
    
    ================================================================================
    MSG: control_msgs/ThrottleCmd
    Header header
    float32 throttle
    
    
    
    ================================================================================
    MSG: control_msgs/BrakeCmd
    Header header
    float32 brake
    
    
    ================================================================================
    MSG: control_msgs/SteerCmd
    Header header
    float32 steer
    float32 direction
    float32 vel_six
    
    ================================================================================
    MSG: control_msgs/GearCmd
    Header header
    uint8 gear
    
    ================================================================================
    MSG: control_msgs/LampCmd
    Header header
    bool lamp_1
    bool lamp_2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendECUCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = ModeCmd.Resolve(msg.mode)
    }
    else {
      resolved.mode = new ModeCmd()
    }

    if (msg.throttle_cmd !== undefined) {
      resolved.throttle_cmd = ThrottleCmd.Resolve(msg.throttle_cmd)
    }
    else {
      resolved.throttle_cmd = new ThrottleCmd()
    }

    if (msg.brake_cmd !== undefined) {
      resolved.brake_cmd = BrakeCmd.Resolve(msg.brake_cmd)
    }
    else {
      resolved.brake_cmd = new BrakeCmd()
    }

    if (msg.steer_cmd !== undefined) {
      resolved.steer_cmd = SteerCmd.Resolve(msg.steer_cmd)
    }
    else {
      resolved.steer_cmd = new SteerCmd()
    }

    if (msg.gear_cmd !== undefined) {
      resolved.gear_cmd = GearCmd.Resolve(msg.gear_cmd)
    }
    else {
      resolved.gear_cmd = new GearCmd()
    }

    if (msg.lamp_cmd !== undefined) {
      resolved.lamp_cmd = LampCmd.Resolve(msg.lamp_cmd)
    }
    else {
      resolved.lamp_cmd = new LampCmd()
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = false
    }

    return resolved;
    }
};

module.exports = SendECUCmd;
