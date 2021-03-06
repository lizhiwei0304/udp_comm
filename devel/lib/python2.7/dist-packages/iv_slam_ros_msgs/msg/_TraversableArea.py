# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iv_slam_ros_msgs/TraversableArea.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class TraversableArea(genpy.Message):
  _md5sum = "3bd22d70c3beb576bea82709772a91a7"
  _type = "iv_slam_ros_msgs/TraversableArea"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """
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
"""
  __slots__ = ['header','index','width','height','triD_submap_pose_image_index_x','triD_submap_pose_image_index_y','resolution','triD_submap_pose','cells','submap_finished_flag']
  _slot_types = ['std_msgs/Header','int32','int32','int32','int32','int32','float64','geometry_msgs/Pose','uint8[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,index,width,height,triD_submap_pose_image_index_x,triD_submap_pose_image_index_y,resolution,triD_submap_pose,cells,submap_finished_flag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TraversableArea, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.index is None:
        self.index = 0
      if self.width is None:
        self.width = 0
      if self.height is None:
        self.height = 0
      if self.triD_submap_pose_image_index_x is None:
        self.triD_submap_pose_image_index_x = 0
      if self.triD_submap_pose_image_index_y is None:
        self.triD_submap_pose_image_index_y = 0
      if self.resolution is None:
        self.resolution = 0.
      if self.triD_submap_pose is None:
        self.triD_submap_pose = geometry_msgs.msg.Pose()
      if self.cells is None:
        self.cells = b''
      if self.submap_finished_flag is None:
        self.submap_finished_flag = False
    else:
      self.header = std_msgs.msg.Header()
      self.index = 0
      self.width = 0
      self.height = 0
      self.triD_submap_pose_image_index_x = 0
      self.triD_submap_pose_image_index_y = 0
      self.resolution = 0.
      self.triD_submap_pose = geometry_msgs.msg.Pose()
      self.cells = b''
      self.submap_finished_flag = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5i8d().pack(_x.index, _x.width, _x.height, _x.triD_submap_pose_image_index_x, _x.triD_submap_pose_image_index_y, _x.resolution, _x.triD_submap_pose.position.x, _x.triD_submap_pose.position.y, _x.triD_submap_pose.position.z, _x.triD_submap_pose.orientation.x, _x.triD_submap_pose.orientation.y, _x.triD_submap_pose.orientation.z, _x.triD_submap_pose.orientation.w))
      _x = self.cells
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.submap_finished_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.triD_submap_pose is None:
        self.triD_submap_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 84
      (_x.index, _x.width, _x.height, _x.triD_submap_pose_image_index_x, _x.triD_submap_pose_image_index_y, _x.resolution, _x.triD_submap_pose.position.x, _x.triD_submap_pose.position.y, _x.triD_submap_pose.position.z, _x.triD_submap_pose.orientation.x, _x.triD_submap_pose.orientation.y, _x.triD_submap_pose.orientation.z, _x.triD_submap_pose.orientation.w,) = _get_struct_5i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cells = str[start:end]
      start = end
      end += 1
      (self.submap_finished_flag,) = _get_struct_B().unpack(str[start:end])
      self.submap_finished_flag = bool(self.submap_finished_flag)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5i8d().pack(_x.index, _x.width, _x.height, _x.triD_submap_pose_image_index_x, _x.triD_submap_pose_image_index_y, _x.resolution, _x.triD_submap_pose.position.x, _x.triD_submap_pose.position.y, _x.triD_submap_pose.position.z, _x.triD_submap_pose.orientation.x, _x.triD_submap_pose.orientation.y, _x.triD_submap_pose.orientation.z, _x.triD_submap_pose.orientation.w))
      _x = self.cells
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.submap_finished_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.triD_submap_pose is None:
        self.triD_submap_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 84
      (_x.index, _x.width, _x.height, _x.triD_submap_pose_image_index_x, _x.triD_submap_pose_image_index_y, _x.resolution, _x.triD_submap_pose.position.x, _x.triD_submap_pose.position.y, _x.triD_submap_pose.position.z, _x.triD_submap_pose.orientation.x, _x.triD_submap_pose.orientation.y, _x.triD_submap_pose.orientation.z, _x.triD_submap_pose.orientation.w,) = _get_struct_5i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cells = str[start:end]
      start = end
      end += 1
      (self.submap_finished_flag,) = _get_struct_B().unpack(str[start:end])
      self.submap_finished_flag = bool(self.submap_finished_flag)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_5i8d = None
def _get_struct_5i8d():
    global _struct_5i8d
    if _struct_5i8d is None:
        _struct_5i8d = struct.Struct("<5i8d")
    return _struct_5i8d
