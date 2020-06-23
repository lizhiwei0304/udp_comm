// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Points = require('./Points.js');

//-----------------------------------------------------------

class Rectangle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Point1 = null;
      this.Point2 = null;
      this.Point3 = null;
      this.Point4 = null;
      this.Height = null;
      this.Heading = null;
      this.Id_number = null;
      this.v_x = null;
      this.v_y = null;
    }
    else {
      if (initObj.hasOwnProperty('Point1')) {
        this.Point1 = initObj.Point1
      }
      else {
        this.Point1 = new Points();
      }
      if (initObj.hasOwnProperty('Point2')) {
        this.Point2 = initObj.Point2
      }
      else {
        this.Point2 = new Points();
      }
      if (initObj.hasOwnProperty('Point3')) {
        this.Point3 = initObj.Point3
      }
      else {
        this.Point3 = new Points();
      }
      if (initObj.hasOwnProperty('Point4')) {
        this.Point4 = initObj.Point4
      }
      else {
        this.Point4 = new Points();
      }
      if (initObj.hasOwnProperty('Height')) {
        this.Height = initObj.Height
      }
      else {
        this.Height = 0.0;
      }
      if (initObj.hasOwnProperty('Heading')) {
        this.Heading = initObj.Heading
      }
      else {
        this.Heading = 0;
      }
      if (initObj.hasOwnProperty('Id_number')) {
        this.Id_number = initObj.Id_number
      }
      else {
        this.Id_number = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rectangle
    // Serialize message field [Point1]
    bufferOffset = Points.serialize(obj.Point1, buffer, bufferOffset);
    // Serialize message field [Point2]
    bufferOffset = Points.serialize(obj.Point2, buffer, bufferOffset);
    // Serialize message field [Point3]
    bufferOffset = Points.serialize(obj.Point3, buffer, bufferOffset);
    // Serialize message field [Point4]
    bufferOffset = Points.serialize(obj.Point4, buffer, bufferOffset);
    // Serialize message field [Height]
    bufferOffset = _serializer.float64(obj.Height, buffer, bufferOffset);
    // Serialize message field [Heading]
    bufferOffset = _serializer.int32(obj.Heading, buffer, bufferOffset);
    // Serialize message field [Id_number]
    bufferOffset = _serializer.int32(obj.Id_number, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.float64(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.float64(obj.v_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rectangle
    let len;
    let data = new Rectangle(null);
    // Deserialize message field [Point1]
    data.Point1 = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [Point2]
    data.Point2 = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [Point3]
    data.Point3 = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [Point4]
    data.Point4 = Points.deserialize(buffer, bufferOffset);
    // Deserialize message field [Height]
    data.Height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Heading]
    data.Heading = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Id_number]
    data.Id_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/Rectangle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a41302c037ca3980af28f0230373b1ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Rectangle(null);
    if (msg.Point1 !== undefined) {
      resolved.Point1 = Points.Resolve(msg.Point1)
    }
    else {
      resolved.Point1 = new Points()
    }

    if (msg.Point2 !== undefined) {
      resolved.Point2 = Points.Resolve(msg.Point2)
    }
    else {
      resolved.Point2 = new Points()
    }

    if (msg.Point3 !== undefined) {
      resolved.Point3 = Points.Resolve(msg.Point3)
    }
    else {
      resolved.Point3 = new Points()
    }

    if (msg.Point4 !== undefined) {
      resolved.Point4 = Points.Resolve(msg.Point4)
    }
    else {
      resolved.Point4 = new Points()
    }

    if (msg.Height !== undefined) {
      resolved.Height = msg.Height;
    }
    else {
      resolved.Height = 0.0
    }

    if (msg.Heading !== undefined) {
      resolved.Heading = msg.Heading;
    }
    else {
      resolved.Heading = 0
    }

    if (msg.Id_number !== undefined) {
      resolved.Id_number = msg.Id_number;
    }
    else {
      resolved.Id_number = 0
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

    return resolved;
    }
};

module.exports = Rectangle;
