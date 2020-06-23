// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointCloudMultiLaser = require('./PointCloudMultiLaser.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PointCloudMultiLidar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lidarnum = null;
      this.pointcloudmultilaser = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lidarnum')) {
        this.lidarnum = initObj.lidarnum
      }
      else {
        this.lidarnum = 0;
      }
      if (initObj.hasOwnProperty('pointcloudmultilaser')) {
        this.pointcloudmultilaser = initObj.pointcloudmultilaser
      }
      else {
        this.pointcloudmultilaser = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointCloudMultiLidar
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lidarnum]
    bufferOffset = _serializer.int32(obj.lidarnum, buffer, bufferOffset);
    // Serialize message field [pointcloudmultilaser]
    // Serialize the length for message field [pointcloudmultilaser]
    bufferOffset = _serializer.uint32(obj.pointcloudmultilaser.length, buffer, bufferOffset);
    obj.pointcloudmultilaser.forEach((val) => {
      bufferOffset = PointCloudMultiLaser.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointCloudMultiLidar
    let len;
    let data = new PointCloudMultiLidar(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lidarnum]
    data.lidarnum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pointcloudmultilaser]
    // Deserialize array length for message field [pointcloudmultilaser]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointcloudmultilaser = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointcloudmultilaser[i] = PointCloudMultiLaser.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.pointcloudmultilaser.forEach((val) => {
      length += PointCloudMultiLaser.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/PointCloudMultiLidar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8d79a4670af44ba4cf9d1a427e66fcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int32 lidarnum
    
    PointCloudMultiLaser[] pointcloudmultilaser
    
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
    MSG: sensor_driver_msgs/PointCloudMultiLaser
    
    int16 lasernum
    int16 lidarid
    int16[] laseridmap
    float32[] laseranglemap
    
    sensor_msgs/PointCloud2 pointcloud
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointCloudMultiLidar(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lidarnum !== undefined) {
      resolved.lidarnum = msg.lidarnum;
    }
    else {
      resolved.lidarnum = 0
    }

    if (msg.pointcloudmultilaser !== undefined) {
      resolved.pointcloudmultilaser = new Array(msg.pointcloudmultilaser.length);
      for (let i = 0; i < resolved.pointcloudmultilaser.length; ++i) {
        resolved.pointcloudmultilaser[i] = PointCloudMultiLaser.Resolve(msg.pointcloudmultilaser[i]);
      }
    }
    else {
      resolved.pointcloudmultilaser = []
    }

    return resolved;
    }
};

module.exports = PointCloudMultiLidar;
