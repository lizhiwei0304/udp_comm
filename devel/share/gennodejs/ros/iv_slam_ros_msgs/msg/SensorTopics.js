// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorTopics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_scan_topic = null;
      this.multi_echo_laser_scan_topic = null;
      this.point_cloud2_topic = null;
      this.imu_topic = null;
      this.odometry_topic = null;
      this.dynamicobject_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_scan_topic')) {
        this.laser_scan_topic = initObj.laser_scan_topic
      }
      else {
        this.laser_scan_topic = '';
      }
      if (initObj.hasOwnProperty('multi_echo_laser_scan_topic')) {
        this.multi_echo_laser_scan_topic = initObj.multi_echo_laser_scan_topic
      }
      else {
        this.multi_echo_laser_scan_topic = '';
      }
      if (initObj.hasOwnProperty('point_cloud2_topic')) {
        this.point_cloud2_topic = initObj.point_cloud2_topic
      }
      else {
        this.point_cloud2_topic = '';
      }
      if (initObj.hasOwnProperty('imu_topic')) {
        this.imu_topic = initObj.imu_topic
      }
      else {
        this.imu_topic = '';
      }
      if (initObj.hasOwnProperty('odometry_topic')) {
        this.odometry_topic = initObj.odometry_topic
      }
      else {
        this.odometry_topic = '';
      }
      if (initObj.hasOwnProperty('dynamicobject_topic')) {
        this.dynamicobject_topic = initObj.dynamicobject_topic
      }
      else {
        this.dynamicobject_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorTopics
    // Serialize message field [laser_scan_topic]
    bufferOffset = _serializer.string(obj.laser_scan_topic, buffer, bufferOffset);
    // Serialize message field [multi_echo_laser_scan_topic]
    bufferOffset = _serializer.string(obj.multi_echo_laser_scan_topic, buffer, bufferOffset);
    // Serialize message field [point_cloud2_topic]
    bufferOffset = _serializer.string(obj.point_cloud2_topic, buffer, bufferOffset);
    // Serialize message field [imu_topic]
    bufferOffset = _serializer.string(obj.imu_topic, buffer, bufferOffset);
    // Serialize message field [odometry_topic]
    bufferOffset = _serializer.string(obj.odometry_topic, buffer, bufferOffset);
    // Serialize message field [dynamicobject_topic]
    bufferOffset = _serializer.string(obj.dynamicobject_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorTopics
    let len;
    let data = new SensorTopics(null);
    // Deserialize message field [laser_scan_topic]
    data.laser_scan_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [multi_echo_laser_scan_topic]
    data.multi_echo_laser_scan_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_cloud2_topic]
    data.point_cloud2_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [imu_topic]
    data.imu_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [odometry_topic]
    data.odometry_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dynamicobject_topic]
    data.dynamicobject_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.laser_scan_topic.length;
    length += object.multi_echo_laser_scan_topic.length;
    length += object.point_cloud2_topic.length;
    length += object.imu_topic.length;
    length += object.odometry_topic.length;
    length += object.dynamicobject_topic.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_slam_ros_msgs/SensorTopics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '027066c05c178b78d8634a13083fa199';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string laser_scan_topic
    string multi_echo_laser_scan_topic
    string point_cloud2_topic
    string imu_topic
    string odometry_topic
    string dynamicobject_topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorTopics(null);
    if (msg.laser_scan_topic !== undefined) {
      resolved.laser_scan_topic = msg.laser_scan_topic;
    }
    else {
      resolved.laser_scan_topic = ''
    }

    if (msg.multi_echo_laser_scan_topic !== undefined) {
      resolved.multi_echo_laser_scan_topic = msg.multi_echo_laser_scan_topic;
    }
    else {
      resolved.multi_echo_laser_scan_topic = ''
    }

    if (msg.point_cloud2_topic !== undefined) {
      resolved.point_cloud2_topic = msg.point_cloud2_topic;
    }
    else {
      resolved.point_cloud2_topic = ''
    }

    if (msg.imu_topic !== undefined) {
      resolved.imu_topic = msg.imu_topic;
    }
    else {
      resolved.imu_topic = ''
    }

    if (msg.odometry_topic !== undefined) {
      resolved.odometry_topic = msg.odometry_topic;
    }
    else {
      resolved.odometry_topic = ''
    }

    if (msg.dynamicobject_topic !== undefined) {
      resolved.dynamicobject_topic = msg.dynamicobject_topic;
    }
    else {
      resolved.dynamicobject_topic = ''
    }

    return resolved;
    }
};

module.exports = SensorTopics;
