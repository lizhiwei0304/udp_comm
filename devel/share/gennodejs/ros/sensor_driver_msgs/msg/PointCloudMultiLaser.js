// Auto-generated. Do not edit!

// (in-package sensor_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class PointCloudMultiLaser {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lasernum = null;
      this.lidarid = null;
      this.laseridmap = null;
      this.laseranglemap = null;
      this.pointcloud = null;
    }
    else {
      if (initObj.hasOwnProperty('lasernum')) {
        this.lasernum = initObj.lasernum
      }
      else {
        this.lasernum = 0;
      }
      if (initObj.hasOwnProperty('lidarid')) {
        this.lidarid = initObj.lidarid
      }
      else {
        this.lidarid = 0;
      }
      if (initObj.hasOwnProperty('laseridmap')) {
        this.laseridmap = initObj.laseridmap
      }
      else {
        this.laseridmap = [];
      }
      if (initObj.hasOwnProperty('laseranglemap')) {
        this.laseranglemap = initObj.laseranglemap
      }
      else {
        this.laseranglemap = [];
      }
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointCloudMultiLaser
    // Serialize message field [lasernum]
    bufferOffset = _serializer.int16(obj.lasernum, buffer, bufferOffset);
    // Serialize message field [lidarid]
    bufferOffset = _serializer.int16(obj.lidarid, buffer, bufferOffset);
    // Serialize message field [laseridmap]
    bufferOffset = _arraySerializer.int16(obj.laseridmap, buffer, bufferOffset, null);
    // Serialize message field [laseranglemap]
    bufferOffset = _arraySerializer.float32(obj.laseranglemap, buffer, bufferOffset, null);
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointCloudMultiLaser
    let len;
    let data = new PointCloudMultiLaser(null);
    // Deserialize message field [lasernum]
    data.lasernum = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [lidarid]
    data.lidarid = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [laseridmap]
    data.laseridmap = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [laseranglemap]
    data.laseranglemap = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.laseridmap.length;
    length += 4 * object.laseranglemap.length;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_driver_msgs/PointCloudMultiLaser';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af429b8dd0128bd96a7bacec1ffd7da7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    const resolved = new PointCloudMultiLaser(null);
    if (msg.lasernum !== undefined) {
      resolved.lasernum = msg.lasernum;
    }
    else {
      resolved.lasernum = 0
    }

    if (msg.lidarid !== undefined) {
      resolved.lidarid = msg.lidarid;
    }
    else {
      resolved.lidarid = 0
    }

    if (msg.laseridmap !== undefined) {
      resolved.laseridmap = msg.laseridmap;
    }
    else {
      resolved.laseridmap = []
    }

    if (msg.laseranglemap !== undefined) {
      resolved.laseranglemap = msg.laseranglemap;
    }
    else {
      resolved.laseranglemap = []
    }

    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = PointCloudMultiLaser;
