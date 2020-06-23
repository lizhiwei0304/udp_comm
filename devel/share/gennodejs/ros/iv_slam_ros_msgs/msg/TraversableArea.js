// Auto-generated. Do not edit!

// (in-package iv_slam_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TraversableArea {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.index = null;
      this.width = null;
      this.height = null;
      this.triD_submap_pose_image_index_x = null;
      this.triD_submap_pose_image_index_y = null;
      this.resolution = null;
      this.triD_submap_pose = null;
      this.cells = null;
      this.submap_finished_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('triD_submap_pose_image_index_x')) {
        this.triD_submap_pose_image_index_x = initObj.triD_submap_pose_image_index_x
      }
      else {
        this.triD_submap_pose_image_index_x = 0;
      }
      if (initObj.hasOwnProperty('triD_submap_pose_image_index_y')) {
        this.triD_submap_pose_image_index_y = initObj.triD_submap_pose_image_index_y
      }
      else {
        this.triD_submap_pose_image_index_y = 0;
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('triD_submap_pose')) {
        this.triD_submap_pose = initObj.triD_submap_pose
      }
      else {
        this.triD_submap_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
      if (initObj.hasOwnProperty('submap_finished_flag')) {
        this.submap_finished_flag = initObj.submap_finished_flag
      }
      else {
        this.submap_finished_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TraversableArea
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [triD_submap_pose_image_index_x]
    bufferOffset = _serializer.int32(obj.triD_submap_pose_image_index_x, buffer, bufferOffset);
    // Serialize message field [triD_submap_pose_image_index_y]
    bufferOffset = _serializer.int32(obj.triD_submap_pose_image_index_y, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    // Serialize message field [triD_submap_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.triD_submap_pose, buffer, bufferOffset);
    // Serialize message field [cells]
    bufferOffset = _arraySerializer.uint8(obj.cells, buffer, bufferOffset, null);
    // Serialize message field [submap_finished_flag]
    bufferOffset = _serializer.bool(obj.submap_finished_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TraversableArea
    let len;
    let data = new TraversableArea(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [triD_submap_pose_image_index_x]
    data.triD_submap_pose_image_index_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [triD_submap_pose_image_index_y]
    data.triD_submap_pose_image_index_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [triD_submap_pose]
    data.triD_submap_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [cells]
    data.cells = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [submap_finished_flag]
    data.submap_finished_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.cells.length;
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iv_slam_ros_msgs/TraversableArea';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bd22d70c3beb576bea82709772a91a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header header
    int32 index
    int32 width
    int32 height
    int32 triD_submap_pose_image_index_x
    int32 triD_submap_pose_image_index_y
    float64 resolution
    geometry_msgs/Pose triD_submap_pose
    uint8[] cells
    bool submap_finished_flag
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TraversableArea(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.triD_submap_pose_image_index_x !== undefined) {
      resolved.triD_submap_pose_image_index_x = msg.triD_submap_pose_image_index_x;
    }
    else {
      resolved.triD_submap_pose_image_index_x = 0
    }

    if (msg.triD_submap_pose_image_index_y !== undefined) {
      resolved.triD_submap_pose_image_index_y = msg.triD_submap_pose_image_index_y;
    }
    else {
      resolved.triD_submap_pose_image_index_y = 0
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.triD_submap_pose !== undefined) {
      resolved.triD_submap_pose = geometry_msgs.msg.Pose.Resolve(msg.triD_submap_pose)
    }
    else {
      resolved.triD_submap_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.cells !== undefined) {
      resolved.cells = msg.cells;
    }
    else {
      resolved.cells = []
    }

    if (msg.submap_finished_flag !== undefined) {
      resolved.submap_finished_flag = msg.submap_finished_flag;
    }
    else {
      resolved.submap_finished_flag = false
    }

    return resolved;
    }
};

module.exports = TraversableArea;
