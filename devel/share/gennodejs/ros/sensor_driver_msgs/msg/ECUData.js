// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


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
      this.motor_I_L = null;
      this.motor_I_R = null;
      this.motor_Torque_L = null;
      this.motor_Torque_R = null;
      this.motor_U_L = null;
      this.motor_U_R = null;
      this.motor_n_now_L = null;
      this.motor_n_now_R = null;
      this.Gear_state_now = null;
      this.steer_degree_now = null;
      this.steer_direction_now = null;
      this.soc_now = null;
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
      if (initObj.hasOwnProperty('motor_I_L')) {
        this.motor_I_L = initObj.motor_I_L
      }
      else {
        this.motor_I_L = 0.0;
      }
      if (initObj.hasOwnProperty('motor_I_R')) {
        this.motor_I_R = initObj.motor_I_R
      }
      else {
        this.motor_I_R = 0.0;
      }
      if (initObj.hasOwnProperty('motor_Torque_L')) {
        this.motor_Torque_L = initObj.motor_Torque_L
      }
      else {
        this.motor_Torque_L = 0.0;
      }
      if (initObj.hasOwnProperty('motor_Torque_R')) {
        this.motor_Torque_R = initObj.motor_Torque_R
      }
      else {
        this.motor_Torque_R = 0.0;
      }
      if (initObj.hasOwnProperty('motor_U_L')) {
        this.motor_U_L = initObj.motor_U_L
      }
      else {
        this.motor_U_L = 0.0;
      }
      if (initObj.hasOwnProperty('motor_U_R')) {
        this.motor_U_R = initObj.motor_U_R
      }
      else {
        this.motor_U_R = 0.0;
      }
      if (initObj.hasOwnProperty('motor_n_now_L')) {
        this.motor_n_now_L = initObj.motor_n_now_L
      }
      else {
        this.motor_n_now_L = 0.0;
      }
      if (initObj.hasOwnProperty('motor_n_now_R')) {
        this.motor_n_now_R = initObj.motor_n_now_R
      }
      else {
        this.motor_n_now_R = 0.0;
      }
      if (initObj.hasOwnProperty('Gear_state_now')) {
        this.Gear_state_now = initObj.Gear_state_now
      }
      else {
        this.Gear_state_now = 0.0;
      }
      if (initObj.hasOwnProperty('steer_degree_now')) {
        this.steer_degree_now = initObj.steer_degree_now
      }
      else {
        this.steer_degree_now = 0.0;
      }
      if (initObj.hasOwnProperty('steer_direction_now')) {
        this.steer_direction_now = initObj.steer_direction_now
      }
      else {
        this.steer_direction_now = 0.0;
      }
      if (initObj.hasOwnProperty('soc_now')) {
        this.soc_now = initObj.soc_now
      }
      else {
        this.soc_now = 0.0;
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
    // Serialize message field [motor_I_L]
    bufferOffset = _serializer.float64(obj.motor_I_L, buffer, bufferOffset);
    // Serialize message field [motor_I_R]
    bufferOffset = _serializer.float64(obj.motor_I_R, buffer, bufferOffset);
    // Serialize message field [motor_Torque_L]
    bufferOffset = _serializer.float64(obj.motor_Torque_L, buffer, bufferOffset);
    // Serialize message field [motor_Torque_R]
    bufferOffset = _serializer.float64(obj.motor_Torque_R, buffer, bufferOffset);
    // Serialize message field [motor_U_L]
    bufferOffset = _serializer.float64(obj.motor_U_L, buffer, bufferOffset);
    // Serialize message field [motor_U_R]
    bufferOffset = _serializer.float64(obj.motor_U_R, buffer, bufferOffset);
    // Serialize message field [motor_n_now_L]
    bufferOffset = _serializer.float64(obj.motor_n_now_L, buffer, bufferOffset);
    // Serialize message field [motor_n_now_R]
    bufferOffset = _serializer.float64(obj.motor_n_now_R, buffer, bufferOffset);
    // Serialize message field [Gear_state_now]
    bufferOffset = _serializer.float64(obj.Gear_state_now, buffer, bufferOffset);
    // Serialize message field [steer_degree_now]
    bufferOffset = _serializer.float64(obj.steer_degree_now, buffer, bufferOffset);
    // Serialize message field [steer_direction_now]
    bufferOffset = _serializer.float64(obj.steer_direction_now, buffer, bufferOffset);
    // Serialize message field [soc_now]
    bufferOffset = _serializer.float64(obj.soc_now, buffer, bufferOffset);
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
    // Deserialize message field [motor_I_L]
    data.motor_I_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_I_R]
    data.motor_I_R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_Torque_L]
    data.motor_Torque_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_Torque_R]
    data.motor_Torque_R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_U_L]
    data.motor_U_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_U_R]
    data.motor_U_R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_n_now_L]
    data.motor_n_now_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_n_now_R]
    data.motor_n_now_R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Gear_state_now]
    data.Gear_state_now = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_degree_now]
    data.steer_degree_now = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_direction_now]
    data.steer_direction_now = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [soc_now]
    data.soc_now = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 170;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/ECUData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc010ec4274516d39106b6b0985bf82d';
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
    
    float64 motor_I_L
    float64 motor_I_R
    float64 motor_Torque_L
    float64 motor_Torque_R
    float64 motor_U_L
    float64 motor_U_R
    float64 motor_n_now_L
    float64 motor_n_now_R
    float64 Gear_state_now
    float64 steer_degree_now
    float64 steer_direction_now
    float64 soc_now
    
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

    if (msg.motor_I_L !== undefined) {
      resolved.motor_I_L = msg.motor_I_L;
    }
    else {
      resolved.motor_I_L = 0.0
    }

    if (msg.motor_I_R !== undefined) {
      resolved.motor_I_R = msg.motor_I_R;
    }
    else {
      resolved.motor_I_R = 0.0
    }

    if (msg.motor_Torque_L !== undefined) {
      resolved.motor_Torque_L = msg.motor_Torque_L;
    }
    else {
      resolved.motor_Torque_L = 0.0
    }

    if (msg.motor_Torque_R !== undefined) {
      resolved.motor_Torque_R = msg.motor_Torque_R;
    }
    else {
      resolved.motor_Torque_R = 0.0
    }

    if (msg.motor_U_L !== undefined) {
      resolved.motor_U_L = msg.motor_U_L;
    }
    else {
      resolved.motor_U_L = 0.0
    }

    if (msg.motor_U_R !== undefined) {
      resolved.motor_U_R = msg.motor_U_R;
    }
    else {
      resolved.motor_U_R = 0.0
    }

    if (msg.motor_n_now_L !== undefined) {
      resolved.motor_n_now_L = msg.motor_n_now_L;
    }
    else {
      resolved.motor_n_now_L = 0.0
    }

    if (msg.motor_n_now_R !== undefined) {
      resolved.motor_n_now_R = msg.motor_n_now_R;
    }
    else {
      resolved.motor_n_now_R = 0.0
    }

    if (msg.Gear_state_now !== undefined) {
      resolved.Gear_state_now = msg.Gear_state_now;
    }
    else {
      resolved.Gear_state_now = 0.0
    }

    if (msg.steer_degree_now !== undefined) {
      resolved.steer_degree_now = msg.steer_degree_now;
    }
    else {
      resolved.steer_degree_now = 0.0
    }

    if (msg.steer_direction_now !== undefined) {
      resolved.steer_direction_now = msg.steer_direction_now;
    }
    else {
      resolved.steer_direction_now = 0.0
    }

    if (msg.soc_now !== undefined) {
      resolved.soc_now = msg.soc_now;
    }
    else {
      resolved.soc_now = 0.0
    }

    return resolved;
    }
};

module.exports = ECUData;
