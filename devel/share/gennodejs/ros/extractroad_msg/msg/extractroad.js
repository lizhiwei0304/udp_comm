// Auto-generated. Do not edit!

// (in-package extractroad_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class extractroad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.roadcount = null;
      this.vehicle_point = null;
      this.leadpoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('roadcount')) {
        this.roadcount = initObj.roadcount
      }
      else {
        this.roadcount = 0;
      }
      if (initObj.hasOwnProperty('vehicle_point')) {
        this.vehicle_point = initObj.vehicle_point
      }
      else {
        this.vehicle_point = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('leadpoints')) {
        this.leadpoints = initObj.leadpoints
      }
      else {
        this.leadpoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type extractroad
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [roadcount]
    bufferOffset = _serializer.int16(obj.roadcount, buffer, bufferOffset);
    // Check that the constant length array field [vehicle_point] has the right length
    if (obj.vehicle_point.length !== 2) {
      throw new Error('Unable to serialize array field vehicle_point - length must be 2')
    }
    // Serialize message field [vehicle_point]
    bufferOffset = _arraySerializer.float64(obj.vehicle_point, buffer, bufferOffset, 2);
    // Serialize message field [leadpoints]
    bufferOffset = _arraySerializer.float64(obj.leadpoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type extractroad
    let len;
    let data = new extractroad(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [roadcount]
    data.roadcount = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vehicle_point]
    data.vehicle_point = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [leadpoints]
    data.leadpoints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.leadpoints.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extractroad_msg/extractroad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc64a4728149eec5d7e18874d8617290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header header
    int16 roadcount
    float64[2] vehicle_point
    float64[] leadpoints
    
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
    const resolved = new extractroad(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.roadcount !== undefined) {
      resolved.roadcount = msg.roadcount;
    }
    else {
      resolved.roadcount = 0
    }

    if (msg.vehicle_point !== undefined) {
      resolved.vehicle_point = msg.vehicle_point;
    }
    else {
      resolved.vehicle_point = new Array(2).fill(0)
    }

    if (msg.leadpoints !== undefined) {
      resolved.leadpoints = msg.leadpoints;
    }
    else {
      resolved.leadpoints = []
    }

    return resolved;
    }
};

module.exports = extractroad;
