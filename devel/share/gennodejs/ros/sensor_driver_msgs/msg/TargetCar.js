// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rectangle = require('./Rectangle.js');

//-----------------------------------------------------------

class TargetCar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.CarPosition = null;
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('CarPosition')) {
        this.CarPosition = initObj.CarPosition
      }
      else {
        this.CarPosition = [];
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetCar
    // Serialize message field [CarPosition]
    // Serialize the length for message field [CarPosition]
    bufferOffset = _serializer.uint32(obj.CarPosition.length, buffer, bufferOffset);
    obj.CarPosition.forEach((val) => {
      bufferOffset = Rectangle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetCar
    let len;
    let data = new TargetCar(null);
    // Deserialize message field [CarPosition]
    // Deserialize array length for message field [CarPosition]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.CarPosition = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.CarPosition[i] = Rectangle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 128 * object.CarPosition.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/TargetCar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ef49c01eb2a83dc00d31ab0905a1439';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rectangle[] CarPosition
    int32 num
    
    ================================================================================
    MSG: sensor_driver_msgs/Rectangle
    Points Point1
    Points Point2
    Points Point3
    Points Point4
    float64 Height
    int32 Heading
    int32 Id_number
    float64 v_x
    float64 v_y
    
    ================================================================================
    MSG: sensor_driver_msgs/Points
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetCar(null);
    if (msg.CarPosition !== undefined) {
      resolved.CarPosition = new Array(msg.CarPosition.length);
      for (let i = 0; i < resolved.CarPosition.length; ++i) {
        resolved.CarPosition[i] = Rectangle.Resolve(msg.CarPosition[i]);
      }
    }
    else {
      resolved.CarPosition = []
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

module.exports = TargetCar;
