// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


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
      this.movingtarget_num = null;
      this.resolution_send = null;
      this.target = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0;
      }
      if (initObj.hasOwnProperty('movingtarget_num')) {
        this.movingtarget_num = initObj.movingtarget_num
      }
      else {
        this.movingtarget_num = 0;
      }
      if (initObj.hasOwnProperty('resolution_send')) {
        this.resolution_send = initObj.resolution_send
      }
      else {
        this.resolution_send = 0.0;
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
    bufferOffset = _serializer.int32(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [movingtarget_num]
    bufferOffset = _serializer.int32(obj.movingtarget_num, buffer, bufferOffset);
    // Serialize message field [resolution_send]
    bufferOffset = _serializer.float64(obj.resolution_send, buffer, bufferOffset);
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
    data.time_stamp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [movingtarget_num]
    data.movingtarget_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution_send]
    data.resolution_send = _deserializer.float64(buffer, bufferOffset);
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
    length += 193 * object.target.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/moving_target_send';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee6df54151d8798d270a6abbbe741402';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 time_stamp        
    int32 movingtarget_num   
    float64 resolution_send
    moving_target[] target          
    
    ================================================================================
    MSG: sensor_driver_msgs/moving_target
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
    const resolved = new moving_target_send(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0
    }

    if (msg.movingtarget_num !== undefined) {
      resolved.movingtarget_num = msg.movingtarget_num;
    }
    else {
      resolved.movingtarget_num = 0
    }

    if (msg.resolution_send !== undefined) {
      resolved.resolution_send = msg.resolution_send;
    }
    else {
      resolved.resolution_send = 0.0
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
