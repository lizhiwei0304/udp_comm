// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class moving_target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center_x = null;
      this.center_y = null;
      this.object_width = null;
      this.object_length = null;
      this.object_high = null;
      this.object_rect_x = null;
      this.object_rect_y = null;
      this.object_rect_width = null;
      this.object_rect_height = null;
      this.x_src = null;
      this.y_src = null;
      this.v_x = null;
      this.v_y = null;
      this.v = null;
      this.v_theta = null;
      this.pos_heading = null;
      this.v_w = null;
      this.trackpoint32_index = null;
      this.filter_method = null;
      this.is_updated = null;
      this.time_stamp = null;
      this.ID_number = null;
      this.confidence_level = null;
      this.tracked_times = null;
      this.miss_tracked_times = null;
      this.dis_veh_xy = null;
      this.position_orientation = null;
      this.occluded_state = null;
      this.object_type = null;
      this.dangerous_level = null;
      this.trackpoint_index = null;
    }
    else {
      if (initObj.hasOwnProperty('center_x')) {
        this.center_x = initObj.center_x
      }
      else {
        this.center_x = 0.0;
      }
      if (initObj.hasOwnProperty('center_y')) {
        this.center_y = initObj.center_y
      }
      else {
        this.center_y = 0.0;
      }
      if (initObj.hasOwnProperty('object_width')) {
        this.object_width = initObj.object_width
      }
      else {
        this.object_width = 0.0;
      }
      if (initObj.hasOwnProperty('object_length')) {
        this.object_length = initObj.object_length
      }
      else {
        this.object_length = 0.0;
      }
      if (initObj.hasOwnProperty('object_high')) {
        this.object_high = initObj.object_high
      }
      else {
        this.object_high = 0.0;
      }
      if (initObj.hasOwnProperty('object_rect_x')) {
        this.object_rect_x = initObj.object_rect_x
      }
      else {
        this.object_rect_x = 0.0;
      }
      if (initObj.hasOwnProperty('object_rect_y')) {
        this.object_rect_y = initObj.object_rect_y
      }
      else {
        this.object_rect_y = 0.0;
      }
      if (initObj.hasOwnProperty('object_rect_width')) {
        this.object_rect_width = initObj.object_rect_width
      }
      else {
        this.object_rect_width = 0.0;
      }
      if (initObj.hasOwnProperty('object_rect_height')) {
        this.object_rect_height = initObj.object_rect_height
      }
      else {
        this.object_rect_height = 0.0;
      }
      if (initObj.hasOwnProperty('x_src')) {
        this.x_src = initObj.x_src
      }
      else {
        this.x_src = 0.0;
      }
      if (initObj.hasOwnProperty('y_src')) {
        this.y_src = initObj.y_src
      }
      else {
        this.y_src = 0.0;
      }
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_y')) {
        this.v_y = initObj.v_y
      }
      else {
        this.v_y = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('v_theta')) {
        this.v_theta = initObj.v_theta
      }
      else {
        this.v_theta = 0.0;
      }
      if (initObj.hasOwnProperty('pos_heading')) {
        this.pos_heading = initObj.pos_heading
      }
      else {
        this.pos_heading = 0.0;
      }
      if (initObj.hasOwnProperty('v_w')) {
        this.v_w = initObj.v_w
      }
      else {
        this.v_w = 0.0;
      }
      if (initObj.hasOwnProperty('trackpoint32_index')) {
        this.trackpoint32_index = initObj.trackpoint32_index
      }
      else {
        this.trackpoint32_index = 0;
      }
      if (initObj.hasOwnProperty('filter_method')) {
        this.filter_method = initObj.filter_method
      }
      else {
        this.filter_method = 0;
      }
      if (initObj.hasOwnProperty('is_updated')) {
        this.is_updated = initObj.is_updated
      }
      else {
        this.is_updated = false;
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0;
      }
      if (initObj.hasOwnProperty('ID_number')) {
        this.ID_number = initObj.ID_number
      }
      else {
        this.ID_number = 0;
      }
      if (initObj.hasOwnProperty('confidence_level')) {
        this.confidence_level = initObj.confidence_level
      }
      else {
        this.confidence_level = 0;
      }
      if (initObj.hasOwnProperty('tracked_times')) {
        this.tracked_times = initObj.tracked_times
      }
      else {
        this.tracked_times = 0;
      }
      if (initObj.hasOwnProperty('miss_tracked_times')) {
        this.miss_tracked_times = initObj.miss_tracked_times
      }
      else {
        this.miss_tracked_times = 0;
      }
      if (initObj.hasOwnProperty('dis_veh_xy')) {
        this.dis_veh_xy = initObj.dis_veh_xy
      }
      else {
        this.dis_veh_xy = 0;
      }
      if (initObj.hasOwnProperty('position_orientation')) {
        this.position_orientation = initObj.position_orientation
      }
      else {
        this.position_orientation = 0;
      }
      if (initObj.hasOwnProperty('occluded_state')) {
        this.occluded_state = initObj.occluded_state
      }
      else {
        this.occluded_state = 0;
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = 0;
      }
      if (initObj.hasOwnProperty('dangerous_level')) {
        this.dangerous_level = initObj.dangerous_level
      }
      else {
        this.dangerous_level = 0;
      }
      if (initObj.hasOwnProperty('trackpoint_index')) {
        this.trackpoint_index = initObj.trackpoint_index
      }
      else {
        this.trackpoint_index = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moving_target
    // Serialize message field [center_x]
    bufferOffset = _serializer.float64(obj.center_x, buffer, bufferOffset);
    // Serialize message field [center_y]
    bufferOffset = _serializer.float64(obj.center_y, buffer, bufferOffset);
    // Serialize message field [object_width]
    bufferOffset = _serializer.float64(obj.object_width, buffer, bufferOffset);
    // Serialize message field [object_length]
    bufferOffset = _serializer.float64(obj.object_length, buffer, bufferOffset);
    // Serialize message field [object_high]
    bufferOffset = _serializer.float64(obj.object_high, buffer, bufferOffset);
    // Serialize message field [object_rect_x]
    bufferOffset = _serializer.float64(obj.object_rect_x, buffer, bufferOffset);
    // Serialize message field [object_rect_y]
    bufferOffset = _serializer.float64(obj.object_rect_y, buffer, bufferOffset);
    // Serialize message field [object_rect_width]
    bufferOffset = _serializer.float64(obj.object_rect_width, buffer, bufferOffset);
    // Serialize message field [object_rect_height]
    bufferOffset = _serializer.float64(obj.object_rect_height, buffer, bufferOffset);
    // Serialize message field [x_src]
    bufferOffset = _serializer.float64(obj.x_src, buffer, bufferOffset);
    // Serialize message field [y_src]
    bufferOffset = _serializer.float64(obj.y_src, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.float64(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.float64(obj.v_y, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [v_theta]
    bufferOffset = _serializer.float64(obj.v_theta, buffer, bufferOffset);
    // Serialize message field [pos_heading]
    bufferOffset = _serializer.float64(obj.pos_heading, buffer, bufferOffset);
    // Serialize message field [v_w]
    bufferOffset = _serializer.float64(obj.v_w, buffer, bufferOffset);
    // Serialize message field [trackpoint32_index]
    bufferOffset = _serializer.int32(obj.trackpoint32_index, buffer, bufferOffset);
    // Serialize message field [filter_method]
    bufferOffset = _serializer.int32(obj.filter_method, buffer, bufferOffset);
    // Serialize message field [is_updated]
    bufferOffset = _serializer.bool(obj.is_updated, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.int32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [ID_number]
    bufferOffset = _serializer.int32(obj.ID_number, buffer, bufferOffset);
    // Serialize message field [confidence_level]
    bufferOffset = _serializer.int32(obj.confidence_level, buffer, bufferOffset);
    // Serialize message field [tracked_times]
    bufferOffset = _serializer.int32(obj.tracked_times, buffer, bufferOffset);
    // Serialize message field [miss_tracked_times]
    bufferOffset = _serializer.int32(obj.miss_tracked_times, buffer, bufferOffset);
    // Serialize message field [dis_veh_xy]
    bufferOffset = _serializer.int32(obj.dis_veh_xy, buffer, bufferOffset);
    // Serialize message field [position_orientation]
    bufferOffset = _serializer.int32(obj.position_orientation, buffer, bufferOffset);
    // Serialize message field [occluded_state]
    bufferOffset = _serializer.int32(obj.occluded_state, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = _serializer.int32(obj.object_type, buffer, bufferOffset);
    // Serialize message field [dangerous_level]
    bufferOffset = _serializer.int32(obj.dangerous_level, buffer, bufferOffset);
    // Serialize message field [trackpoint_index]
    bufferOffset = _serializer.float64(obj.trackpoint_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moving_target
    let len;
    let data = new moving_target(null);
    // Deserialize message field [center_x]
    data.center_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [center_y]
    data.center_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_width]
    data.object_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_length]
    data.object_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_high]
    data.object_high = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_rect_x]
    data.object_rect_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_rect_y]
    data.object_rect_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_rect_width]
    data.object_rect_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [object_rect_height]
    data.object_rect_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_src]
    data.x_src = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_src]
    data.y_src = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_theta]
    data.v_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_heading]
    data.pos_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_w]
    data.v_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trackpoint32_index]
    data.trackpoint32_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [filter_method]
    data.filter_method = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_updated]
    data.is_updated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ID_number]
    data.ID_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence_level]
    data.confidence_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tracked_times]
    data.tracked_times = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [miss_tracked_times]
    data.miss_tracked_times = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dis_veh_xy]
    data.dis_veh_xy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_orientation]
    data.position_orientation = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [occluded_state]
    data.occluded_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dangerous_level]
    data.dangerous_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trackpoint_index]
    data.trackpoint_index = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 193;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/moving_target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec7b54c149fe914e158d9dcc3b59e9f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64        center_x             
    float64        center_y             
    float64        object_width         
    float64        object_length        
    float64        object_high          
    
    float64          object_rect_x
    float64          object_rect_y
    float64          object_rect_width
    float64          object_rect_height 
    
    float64        x_src                
    float64        y_src                
    float64        v_x                  
    float64        v_y               
    float64        v                   
    float64        v_theta
    float64        pos_heading         
    float64        v_w                  
    
    int32          trackpoint32_index
    int32          filter_method
    
    bool         is_updated           
    int32          time_stamp           
    int32          ID_number                   
    int32          confidence_level    
    int32          tracked_times        
    int32          miss_tracked_times   
    
    int32          dis_veh_xy
    int32          position_orientation 
    int32          occluded_state       
    int32          object_type        
    int32          dangerous_level  
    float64        trackpoint_index    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moving_target(null);
    if (msg.center_x !== undefined) {
      resolved.center_x = msg.center_x;
    }
    else {
      resolved.center_x = 0.0
    }

    if (msg.center_y !== undefined) {
      resolved.center_y = msg.center_y;
    }
    else {
      resolved.center_y = 0.0
    }

    if (msg.object_width !== undefined) {
      resolved.object_width = msg.object_width;
    }
    else {
      resolved.object_width = 0.0
    }

    if (msg.object_length !== undefined) {
      resolved.object_length = msg.object_length;
    }
    else {
      resolved.object_length = 0.0
    }

    if (msg.object_high !== undefined) {
      resolved.object_high = msg.object_high;
    }
    else {
      resolved.object_high = 0.0
    }

    if (msg.object_rect_x !== undefined) {
      resolved.object_rect_x = msg.object_rect_x;
    }
    else {
      resolved.object_rect_x = 0.0
    }

    if (msg.object_rect_y !== undefined) {
      resolved.object_rect_y = msg.object_rect_y;
    }
    else {
      resolved.object_rect_y = 0.0
    }

    if (msg.object_rect_width !== undefined) {
      resolved.object_rect_width = msg.object_rect_width;
    }
    else {
      resolved.object_rect_width = 0.0
    }

    if (msg.object_rect_height !== undefined) {
      resolved.object_rect_height = msg.object_rect_height;
    }
    else {
      resolved.object_rect_height = 0.0
    }

    if (msg.x_src !== undefined) {
      resolved.x_src = msg.x_src;
    }
    else {
      resolved.x_src = 0.0
    }

    if (msg.y_src !== undefined) {
      resolved.y_src = msg.y_src;
    }
    else {
      resolved.y_src = 0.0
    }

    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0.0
    }

    if (msg.v_y !== undefined) {
      resolved.v_y = msg.v_y;
    }
    else {
      resolved.v_y = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.v_theta !== undefined) {
      resolved.v_theta = msg.v_theta;
    }
    else {
      resolved.v_theta = 0.0
    }

    if (msg.pos_heading !== undefined) {
      resolved.pos_heading = msg.pos_heading;
    }
    else {
      resolved.pos_heading = 0.0
    }

    if (msg.v_w !== undefined) {
      resolved.v_w = msg.v_w;
    }
    else {
      resolved.v_w = 0.0
    }

    if (msg.trackpoint32_index !== undefined) {
      resolved.trackpoint32_index = msg.trackpoint32_index;
    }
    else {
      resolved.trackpoint32_index = 0
    }

    if (msg.filter_method !== undefined) {
      resolved.filter_method = msg.filter_method;
    }
    else {
      resolved.filter_method = 0
    }

    if (msg.is_updated !== undefined) {
      resolved.is_updated = msg.is_updated;
    }
    else {
      resolved.is_updated = false
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0
    }

    if (msg.ID_number !== undefined) {
      resolved.ID_number = msg.ID_number;
    }
    else {
      resolved.ID_number = 0
    }

    if (msg.confidence_level !== undefined) {
      resolved.confidence_level = msg.confidence_level;
    }
    else {
      resolved.confidence_level = 0
    }

    if (msg.tracked_times !== undefined) {
      resolved.tracked_times = msg.tracked_times;
    }
    else {
      resolved.tracked_times = 0
    }

    if (msg.miss_tracked_times !== undefined) {
      resolved.miss_tracked_times = msg.miss_tracked_times;
    }
    else {
      resolved.miss_tracked_times = 0
    }

    if (msg.dis_veh_xy !== undefined) {
      resolved.dis_veh_xy = msg.dis_veh_xy;
    }
    else {
      resolved.dis_veh_xy = 0
    }

    if (msg.position_orientation !== undefined) {
      resolved.position_orientation = msg.position_orientation;
    }
    else {
      resolved.position_orientation = 0
    }

    if (msg.occluded_state !== undefined) {
      resolved.occluded_state = msg.occluded_state;
    }
    else {
      resolved.occluded_state = 0
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = msg.object_type;
    }
    else {
      resolved.object_type = 0
    }

    if (msg.dangerous_level !== undefined) {
      resolved.dangerous_level = msg.dangerous_level;
    }
    else {
      resolved.dangerous_level = 0
    }

    if (msg.trackpoint_index !== undefined) {
      resolved.trackpoint_index = msg.trackpoint_index;
    }
    else {
      resolved.trackpoint_index = 0.0
    }

    return resolved;
    }
};

module.exports = moving_target;
