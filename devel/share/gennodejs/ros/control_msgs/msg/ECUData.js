// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ECUData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.f_shift = null;
      this.f_shift1 = null;
      this.fDeForwardVel = null;
      this.fFLRWheelAverAngle = null;
      this.fForwardVel = null;
      this.petral_pressure = null;
      this.pressure_back = null;
      this.FrontLeftWheelSpeed = null;
      this.FrontRightWheelSpeed = null;
      this.BackLeftWheelSpeed = null;
      this.BackRightWheelSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('f_shift')) {
        this.f_shift = initObj.f_shift
      }
      else {
        this.f_shift = 0;
      }
      if (initObj.hasOwnProperty('f_shift1')) {
        this.f_shift1 = initObj.f_shift1
      }
      else {
        this.f_shift1 = 0;
      }
      if (initObj.hasOwnProperty('fDeForwardVel')) {
        this.fDeForwardVel = initObj.fDeForwardVel
      }
      else {
        this.fDeForwardVel = 0.0;
      }
      if (initObj.hasOwnProperty('fFLRWheelAverAngle')) {
        this.fFLRWheelAverAngle = initObj.fFLRWheelAverAngle
      }
      else {
        this.fFLRWheelAverAngle = 0.0;
      }
      if (initObj.hasOwnProperty('fForwardVel')) {
        this.fForwardVel = initObj.fForwardVel
      }
      else {
        this.fForwardVel = 0.0;
      }
      if (initObj.hasOwnProperty('petral_pressure')) {
        this.petral_pressure = initObj.petral_pressure
      }
      else {
        this.petral_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('pressure_back')) {
        this.pressure_back = initObj.pressure_back
      }
      else {
        this.pressure_back = 0.0;
      }
      if (initObj.hasOwnProperty('FrontLeftWheelSpeed')) {
        this.FrontLeftWheelSpeed = initObj.FrontLeftWheelSpeed
      }
      else {
        this.FrontLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('FrontRightWheelSpeed')) {
        this.FrontRightWheelSpeed = initObj.FrontRightWheelSpeed
      }
      else {
        this.FrontRightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('BackLeftWheelSpeed')) {
        this.BackLeftWheelSpeed = initObj.BackLeftWheelSpeed
      }
      else {
        this.BackLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('BackRightWheelSpeed')) {
        this.BackRightWheelSpeed = initObj.BackRightWheelSpeed
      }
      else {
        this.BackRightWheelSpeed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ECUData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [f_shift]
    bufferOffset = _serializer.uint8(obj.f_shift, buffer, bufferOffset);
    // Serialize message field [f_shift1]
    bufferOffset = _serializer.uint8(obj.f_shift1, buffer, bufferOffset);
    // Serialize message field [fDeForwardVel]
    bufferOffset = _serializer.float64(obj.fDeForwardVel, buffer, bufferOffset);
    // Serialize message field [fFLRWheelAverAngle]
    bufferOffset = _serializer.float64(obj.fFLRWheelAverAngle, buffer, bufferOffset);
    // Serialize message field [fForwardVel]
    bufferOffset = _serializer.float64(obj.fForwardVel, buffer, bufferOffset);
    // Serialize message field [petral_pressure]
    bufferOffset = _serializer.float64(obj.petral_pressure, buffer, bufferOffset);
    // Serialize message field [pressure_back]
    bufferOffset = _serializer.float64(obj.pressure_back, buffer, bufferOffset);
    // Serialize message field [FrontLeftWheelSpeed]
    bufferOffset = _serializer.float64(obj.FrontLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [FrontRightWheelSpeed]
    bufferOffset = _serializer.float64(obj.FrontRightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [BackLeftWheelSpeed]
    bufferOffset = _serializer.float64(obj.BackLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [BackRightWheelSpeed]
    bufferOffset = _serializer.float64(obj.BackRightWheelSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ECUData
    let len;
    let data = new ECUData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [f_shift]
    data.f_shift = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_shift1]
    data.f_shift1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fDeForwardVel]
    data.fDeForwardVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fFLRWheelAverAngle]
    data.fFLRWheelAverAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fForwardVel]
    data.fForwardVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [petral_pressure]
    data.petral_pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure_back]
    data.pressure_back = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [FrontLeftWheelSpeed]
    data.FrontLeftWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [FrontRightWheelSpeed]
    data.FrontRightWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [BackLeftWheelSpeed]
    data.BackLeftWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [BackRightWheelSpeed]
    data.BackRightWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/ECUData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65cb6096a99240fdc1ce5847021075f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint8 f_shift
    uint8 f_shift1
    float64 fDeForwardVel
    float64 fFLRWheelAverAngle
    
    #vehicle speed
    float64 fForwardVel
    
    float64 petral_pressure
    float64 pressure_back
    float64 FrontLeftWheelSpeed
    float64 FrontRightWheelSpeed
    float64 BackLeftWheelSpeed
    float64 BackRightWheelSpeed
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ECUData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.f_shift !== undefined) {
      resolved.f_shift = msg.f_shift;
    }
    else {
      resolved.f_shift = 0
    }

    if (msg.f_shift1 !== undefined) {
      resolved.f_shift1 = msg.f_shift1;
    }
    else {
      resolved.f_shift1 = 0
    }

    if (msg.fDeForwardVel !== undefined) {
      resolved.fDeForwardVel = msg.fDeForwardVel;
    }
    else {
      resolved.fDeForwardVel = 0.0
    }

    if (msg.fFLRWheelAverAngle !== undefined) {
      resolved.fFLRWheelAverAngle = msg.fFLRWheelAverAngle;
    }
    else {
      resolved.fFLRWheelAverAngle = 0.0
    }

    if (msg.fForwardVel !== undefined) {
      resolved.fForwardVel = msg.fForwardVel;
    }
    else {
      resolved.fForwardVel = 0.0
    }

    if (msg.petral_pressure !== undefined) {
      resolved.petral_pressure = msg.petral_pressure;
    }
    else {
      resolved.petral_pressure = 0.0
    }

    if (msg.pressure_back !== undefined) {
      resolved.pressure_back = msg.pressure_back;
    }
    else {
      resolved.pressure_back = 0.0
    }

    if (msg.FrontLeftWheelSpeed !== undefined) {
      resolved.FrontLeftWheelSpeed = msg.FrontLeftWheelSpeed;
    }
    else {
      resolved.FrontLeftWheelSpeed = 0.0
    }

    if (msg.FrontRightWheelSpeed !== undefined) {
      resolved.FrontRightWheelSpeed = msg.FrontRightWheelSpeed;
    }
    else {
      resolved.FrontRightWheelSpeed = 0.0
    }

    if (msg.BackLeftWheelSpeed !== undefined) {
      resolved.BackLeftWheelSpeed = msg.BackLeftWheelSpeed;
    }
    else {
      resolved.BackLeftWheelSpeed = 0.0
    }

    if (msg.BackRightWheelSpeed !== undefined) {
      resolved.BackRightWheelSpeed = msg.BackRightWheelSpeed;
    }
    else {
      resolved.BackRightWheelSpeed = 0.0
    }

    return resolved;
    }
};

module.exports = ECUData;
