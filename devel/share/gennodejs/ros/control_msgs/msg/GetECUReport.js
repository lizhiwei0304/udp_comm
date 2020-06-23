// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModeReport = require('./ModeReport.js');
let SteerReport = require('./SteerReport.js');
let GearReport = require('./GearReport.js');
let BrakeReport = require('./BrakeReport.js');
let ThrottleReport = require('./ThrottleReport.js');
let SpeedReport = require('./SpeedReport.js');
let HMIReport = require('./HMIReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetECUReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.steer_cur = null;
      this.shift_cur = null;
      this.shift1_cur = null;
      this.brake_cur = null;
      this.throttle_cur = null;
      this.speed = null;
      this.manual = null;
      this.APU_U = null;
      this.APU_I = null;
      this.Battery_I = null;
      this.Battery_U = null;
      this.Power_demand = null;
      this.motor_I_L = null;
      this.motor_I_R = null;
      this.motor_Torque_L = null;
      this.motor_Torque_R = null;
      this.motor_U_L = null;
      this.motor_U_R = null;
      this.motor_n_now_L = null;
      this.motor_n_now_R = null;
      this.Gear_state_now_L = null;
      this.Gear_state_now_R = null;
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
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new ModeReport();
      }
      if (initObj.hasOwnProperty('steer_cur')) {
        this.steer_cur = initObj.steer_cur
      }
      else {
        this.steer_cur = new SteerReport();
      }
      if (initObj.hasOwnProperty('shift_cur')) {
        this.shift_cur = initObj.shift_cur
      }
      else {
        this.shift_cur = new GearReport();
      }
      if (initObj.hasOwnProperty('shift1_cur')) {
        this.shift1_cur = initObj.shift1_cur
      }
      else {
        this.shift1_cur = new GearReport();
      }
      if (initObj.hasOwnProperty('brake_cur')) {
        this.brake_cur = initObj.brake_cur
      }
      else {
        this.brake_cur = new BrakeReport();
      }
      if (initObj.hasOwnProperty('throttle_cur')) {
        this.throttle_cur = initObj.throttle_cur
      }
      else {
        this.throttle_cur = new ThrottleReport();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new SpeedReport();
      }
      if (initObj.hasOwnProperty('manual')) {
        this.manual = initObj.manual
      }
      else {
        this.manual = new HMIReport();
      }
      if (initObj.hasOwnProperty('APU_U')) {
        this.APU_U = initObj.APU_U
      }
      else {
        this.APU_U = 0.0;
      }
      if (initObj.hasOwnProperty('APU_I')) {
        this.APU_I = initObj.APU_I
      }
      else {
        this.APU_I = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_I')) {
        this.Battery_I = initObj.Battery_I
      }
      else {
        this.Battery_I = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_U')) {
        this.Battery_U = initObj.Battery_U
      }
      else {
        this.Battery_U = 0.0;
      }
      if (initObj.hasOwnProperty('Power_demand')) {
        this.Power_demand = initObj.Power_demand
      }
      else {
        this.Power_demand = 0.0;
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
      if (initObj.hasOwnProperty('Gear_state_now_L')) {
        this.Gear_state_now_L = initObj.Gear_state_now_L
      }
      else {
        this.Gear_state_now_L = 0.0;
      }
      if (initObj.hasOwnProperty('Gear_state_now_R')) {
        this.Gear_state_now_R = initObj.Gear_state_now_R
      }
      else {
        this.Gear_state_now_R = 0.0;
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
    // Serializes a message object of type GetECUReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = ModeReport.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [steer_cur]
    bufferOffset = SteerReport.serialize(obj.steer_cur, buffer, bufferOffset);
    // Serialize message field [shift_cur]
    bufferOffset = GearReport.serialize(obj.shift_cur, buffer, bufferOffset);
    // Serialize message field [shift1_cur]
    bufferOffset = GearReport.serialize(obj.shift1_cur, buffer, bufferOffset);
    // Serialize message field [brake_cur]
    bufferOffset = BrakeReport.serialize(obj.brake_cur, buffer, bufferOffset);
    // Serialize message field [throttle_cur]
    bufferOffset = ThrottleReport.serialize(obj.throttle_cur, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = SpeedReport.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [manual]
    bufferOffset = HMIReport.serialize(obj.manual, buffer, bufferOffset);
    // Serialize message field [APU_U]
    bufferOffset = _serializer.float64(obj.APU_U, buffer, bufferOffset);
    // Serialize message field [APU_I]
    bufferOffset = _serializer.float64(obj.APU_I, buffer, bufferOffset);
    // Serialize message field [Battery_I]
    bufferOffset = _serializer.float64(obj.Battery_I, buffer, bufferOffset);
    // Serialize message field [Battery_U]
    bufferOffset = _serializer.float64(obj.Battery_U, buffer, bufferOffset);
    // Serialize message field [Power_demand]
    bufferOffset = _serializer.float64(obj.Power_demand, buffer, bufferOffset);
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
    // Serialize message field [Gear_state_now_L]
    bufferOffset = _serializer.float64(obj.Gear_state_now_L, buffer, bufferOffset);
    // Serialize message field [Gear_state_now_R]
    bufferOffset = _serializer.float64(obj.Gear_state_now_R, buffer, bufferOffset);
    // Serialize message field [steer_degree_now]
    bufferOffset = _serializer.float64(obj.steer_degree_now, buffer, bufferOffset);
    // Serialize message field [steer_direction_now]
    bufferOffset = _serializer.float64(obj.steer_direction_now, buffer, bufferOffset);
    // Serialize message field [soc_now]
    bufferOffset = _serializer.float64(obj.soc_now, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetECUReport
    let len;
    let data = new GetECUReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = ModeReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer_cur]
    data.steer_cur = SteerReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [shift_cur]
    data.shift_cur = GearReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [shift1_cur]
    data.shift1_cur = GearReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_cur]
    data.brake_cur = BrakeReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_cur]
    data.throttle_cur = ThrottleReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = SpeedReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [manual]
    data.manual = HMIReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [APU_U]
    data.APU_U = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [APU_I]
    data.APU_I = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Battery_I]
    data.Battery_I = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Battery_U]
    data.Battery_U = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Power_demand]
    data.Power_demand = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [Gear_state_now_L]
    data.Gear_state_now_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Gear_state_now_R]
    data.Gear_state_now_R = _deserializer.float64(buffer, bufferOffset);
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
    length += ModeReport.getMessageSize(object.mode);
    length += SteerReport.getMessageSize(object.steer_cur);
    length += GearReport.getMessageSize(object.shift_cur);
    length += GearReport.getMessageSize(object.shift1_cur);
    length += BrakeReport.getMessageSize(object.brake_cur);
    length += ThrottleReport.getMessageSize(object.throttle_cur);
    length += SpeedReport.getMessageSize(object.speed);
    length += HMIReport.getMessageSize(object.manual);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/GetECUReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '714d4d6695952cd3ce4d56d62f609f13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    control_msgs/ModeReport mode
    
    control_msgs/SteerReport steer_cur
    
    control_msgs/GearReport shift_cur
    control_msgs/GearReport shift1_cur
    
    control_msgs/BrakeReport brake_cur
    control_msgs/ThrottleReport throttle_cur # include engine_status
    
    control_msgs/SpeedReport speed
    
    control_msgs/HMIReport manual
    
    float64 APU_U
    float64 APU_I
    float64 Battery_I
    float64 Battery_U
    float64 Power_demand
    float64 motor_I_L
    float64 motor_I_R
    float64 motor_Torque_L
    float64 motor_Torque_R
    float64 motor_U_L
    float64 motor_U_R
    float64 motor_n_now_L
    float64 motor_n_now_R
    float64 Gear_state_now_L
    float64 Gear_state_now_R
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
    
    ================================================================================
    MSG: control_msgs/ModeReport
    Header header
    
    int32 auto_mode
    
    int32 speed_mode
    bool throttle_enable
    bool brake_enable
    
    int32 steer_mode
    int32 gear_mode
    
    
    ================================================================================
    MSG: control_msgs/SteerReport
    Header header
    float32 steer
    
    ================================================================================
    MSG: control_msgs/GearReport
    Header header
    uint8 gear
    
    ================================================================================
    MSG: control_msgs/BrakeReport
    Header header
    
    float32 brake_ESC_left
    float32 brake_ESC_right
    
    control_msgs/WheelStateReport brake_wheel
    
    float32 brake_pedal
    
    ================================================================================
    MSG: control_msgs/WheelStateReport
    Header header
    
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    
    ================================================================================
    MSG: control_msgs/ThrottleReport
    Header header
    float32 throttle
    control_msgs/EngineReport engine_status
    float32 throttle_pedal
    
    ================================================================================
    MSG: control_msgs/EngineReport
    Header header
    float32 engine_rpm
    float32 engine_load
    
    ================================================================================
    MSG: control_msgs/SpeedReport
    Header header
    
    control_msgs/WheelStateReport speed_wheel
    geometry_msgs/Twist velocity
    
    
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: control_msgs/HMIReport
    Header header
    
    bool manual_estop
    bool is_human_brake 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetECUReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = ModeReport.Resolve(msg.mode)
    }
    else {
      resolved.mode = new ModeReport()
    }

    if (msg.steer_cur !== undefined) {
      resolved.steer_cur = SteerReport.Resolve(msg.steer_cur)
    }
    else {
      resolved.steer_cur = new SteerReport()
    }

    if (msg.shift_cur !== undefined) {
      resolved.shift_cur = GearReport.Resolve(msg.shift_cur)
    }
    else {
      resolved.shift_cur = new GearReport()
    }

    if (msg.shift1_cur !== undefined) {
      resolved.shift1_cur = GearReport.Resolve(msg.shift1_cur)
    }
    else {
      resolved.shift1_cur = new GearReport()
    }

    if (msg.brake_cur !== undefined) {
      resolved.brake_cur = BrakeReport.Resolve(msg.brake_cur)
    }
    else {
      resolved.brake_cur = new BrakeReport()
    }

    if (msg.throttle_cur !== undefined) {
      resolved.throttle_cur = ThrottleReport.Resolve(msg.throttle_cur)
    }
    else {
      resolved.throttle_cur = new ThrottleReport()
    }

    if (msg.speed !== undefined) {
      resolved.speed = SpeedReport.Resolve(msg.speed)
    }
    else {
      resolved.speed = new SpeedReport()
    }

    if (msg.manual !== undefined) {
      resolved.manual = HMIReport.Resolve(msg.manual)
    }
    else {
      resolved.manual = new HMIReport()
    }

    if (msg.APU_U !== undefined) {
      resolved.APU_U = msg.APU_U;
    }
    else {
      resolved.APU_U = 0.0
    }

    if (msg.APU_I !== undefined) {
      resolved.APU_I = msg.APU_I;
    }
    else {
      resolved.APU_I = 0.0
    }

    if (msg.Battery_I !== undefined) {
      resolved.Battery_I = msg.Battery_I;
    }
    else {
      resolved.Battery_I = 0.0
    }

    if (msg.Battery_U !== undefined) {
      resolved.Battery_U = msg.Battery_U;
    }
    else {
      resolved.Battery_U = 0.0
    }

    if (msg.Power_demand !== undefined) {
      resolved.Power_demand = msg.Power_demand;
    }
    else {
      resolved.Power_demand = 0.0
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

    if (msg.Gear_state_now_L !== undefined) {
      resolved.Gear_state_now_L = msg.Gear_state_now_L;
    }
    else {
      resolved.Gear_state_now_L = 0.0
    }

    if (msg.Gear_state_now_R !== undefined) {
      resolved.Gear_state_now_R = msg.Gear_state_now_R;
    }
    else {
      resolved.Gear_state_now_R = 0.0
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

module.exports = GetECUReport;
