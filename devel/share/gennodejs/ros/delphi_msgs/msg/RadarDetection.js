// Auto-generated. Do not edit!

// (in-package delphi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ogmwidth = null;
      this.ogmheight = null;
      this.vehicle_x = null;
      this.vehicle_y = null;
      this.ogmresolution = null;
      this.data = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ogmwidth')) {
        this.ogmwidth = initObj.ogmwidth
      }
      else {
        this.ogmwidth = 0;
      }
      if (initObj.hasOwnProperty('ogmheight')) {
        this.ogmheight = initObj.ogmheight
      }
      else {
        this.ogmheight = 0;
      }
      if (initObj.hasOwnProperty('vehicle_x')) {
        this.vehicle_x = initObj.vehicle_x
      }
      else {
        this.vehicle_x = 0;
      }
      if (initObj.hasOwnProperty('vehicle_y')) {
        this.vehicle_y = initObj.vehicle_y
      }
      else {
        this.vehicle_y = 0;
      }
      if (initObj.hasOwnProperty('ogmresolution')) {
        this.ogmresolution = initObj.ogmresolution
      }
      else {
        this.ogmresolution = 0.0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarDetection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ogmwidth]
    bufferOffset = _serializer.int16(obj.ogmwidth, buffer, bufferOffset);
    // Serialize message field [ogmheight]
    bufferOffset = _serializer.int16(obj.ogmheight, buffer, bufferOffset);
    // Serialize message field [vehicle_x]
    bufferOffset = _serializer.int16(obj.vehicle_x, buffer, bufferOffset);
    // Serialize message field [vehicle_y]
    bufferOffset = _serializer.int16(obj.vehicle_y, buffer, bufferOffset);
    // Serialize message field [ogmresolution]
    bufferOffset = _serializer.float32(obj.ogmresolution, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int16(obj.data, buffer, bufferOffset, null);
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarDetection
    let len;
    let data = new RadarDetection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ogmwidth]
    data.ogmwidth = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ogmheight]
    data.ogmheight = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vehicle_x]
    data.vehicle_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vehicle_y]
    data.vehicle_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ogmresolution]
    data.ogmresolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.data.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'delphi_msgs/RadarDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8acd0ff394da2a01341307613e90de1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int16 ogmwidth
    int16 ogmheight
    int16 vehicle_x
    int16 vehicle_y
    float32 ogmresolution
    int16[] data
    int8 flag
    
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
    const resolved = new RadarDetection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ogmwidth !== undefined) {
      resolved.ogmwidth = msg.ogmwidth;
    }
    else {
      resolved.ogmwidth = 0
    }

    if (msg.ogmheight !== undefined) {
      resolved.ogmheight = msg.ogmheight;
    }
    else {
      resolved.ogmheight = 0
    }

    if (msg.vehicle_x !== undefined) {
      resolved.vehicle_x = msg.vehicle_x;
    }
    else {
      resolved.vehicle_x = 0
    }

    if (msg.vehicle_y !== undefined) {
      resolved.vehicle_y = msg.vehicle_y;
    }
    else {
      resolved.vehicle_y = 0
    }

    if (msg.ogmresolution !== undefined) {
      resolved.ogmresolution = msg.ogmresolution;
    }
    else {
      resolved.ogmresolution = 0.0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

module.exports = RadarDetection;
