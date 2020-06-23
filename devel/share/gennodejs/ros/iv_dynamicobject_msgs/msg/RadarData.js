// Auto-generated. Do not edit!

// (in-package iv_dynamicobject_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarPoint = require('./RadarPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.delphi_detection_array = null;
      this.ACC_Target_ID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('delphi_detection_array')) {
        this.delphi_detection_array = initObj.delphi_detection_array
      }
      else {
        this.delphi_detection_array = new Array(64).fill(new RadarPoint());
      }
      if (initObj.hasOwnProperty('ACC_Target_ID')) {
        this.ACC_Target_ID = initObj.ACC_Target_ID
      }
      else {
        this.ACC_Target_ID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [delphi_detection_array] has the right length
    if (obj.delphi_detection_array.length !== 64) {
      throw new Error('Unable to serialize array field delphi_detection_array - length must be 64')
    }
    // Serialize message field [delphi_detection_array]
    obj.delphi_detection_array.forEach((val) => {
      bufferOffset = RadarPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ACC_Target_ID]
    bufferOffset = _serializer.uint8(obj.ACC_Target_ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarData
    let len;
    let data = new RadarData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [delphi_detection_array]
    len = 64;
    data.delphi_detection_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.delphi_detection_array[i] = RadarPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ACC_Target_ID]
    data.ACC_Target_ID = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1665;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_dynamicobject_msgs/RadarData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11cc650889f4145ca7db11cb95c6e9cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    RadarPoint[64] delphi_detection_array
    uint8 ACC_Target_ID
    
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
    MSG: iv_dynamicobject_msgs/RadarPoint
    uint8 target_ID
    float32 range
    float32 v
    float32 angle
    float32 x
    float32 y
    bool valid
    uint8 status
    uint8 moving
    bool moving_fast
    bool moving_slow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.delphi_detection_array !== undefined) {
      resolved.delphi_detection_array = new Array(64)
      for (let i = 0; i < resolved.delphi_detection_array.length; ++i) {
        if (msg.delphi_detection_array.length > i) {
          resolved.delphi_detection_array[i] = RadarPoint.Resolve(msg.delphi_detection_array[i]);
        }
        else {
          resolved.delphi_detection_array[i] = new RadarPoint();
        }
      }
    }
    else {
      resolved.delphi_detection_array = new Array(64).fill(new RadarPoint())
    }

    if (msg.ACC_Target_ID !== undefined) {
      resolved.ACC_Target_ID = msg.ACC_Target_ID;
    }
    else {
      resolved.ACC_Target_ID = 0
    }

    return resolved;
    }
};

module.exports = RadarData;
