// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class startconfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startconfigRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startconfigRequest
    let len;
    let data = new startconfigRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_driver_msgs/startconfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startconfigRequest(null);
    return resolved;
    }
};

class startconfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configstr = null;
    }
    else {
      if (initObj.hasOwnProperty('configstr')) {
        this.configstr = initObj.configstr
      }
      else {
        this.configstr = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startconfigResponse
    // Serialize message field [configstr]
    bufferOffset = _serializer.string(obj.configstr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startconfigResponse
    let len;
    let data = new startconfigResponse(null);
    // Deserialize message field [configstr]
    data.configstr = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.configstr.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_driver_msgs/startconfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f8af5cfa0a03531286994caaf587484';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string configstr
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startconfigResponse(null);
    if (msg.configstr !== undefined) {
      resolved.configstr = msg.configstr;
    }
    else {
      resolved.configstr = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: startconfigRequest,
  Response: startconfigResponse,
  md5sum() { return '8f8af5cfa0a03531286994caaf587484'; },
  datatype() { return 'sensor_driver_msgs/startconfig'; }
};
