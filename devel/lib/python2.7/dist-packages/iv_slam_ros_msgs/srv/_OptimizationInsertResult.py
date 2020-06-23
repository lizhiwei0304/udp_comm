# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iv_slam_ros_msgs/OptimizationInsertResultRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import iv_slam_ros_msgs.msg
import nav_msgs.msg
import std_msgs.msg

class OptimizationInsertResultRequest(genpy.Message):
  _md5sum = "2318c3eba77c1405411d17648da8e4ec"
  _type = "iv_slam_ros_msgs/OptimizationInsertResultRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 trajectory_id
float64 time
string file_time_name
int32 num_submap
nav_msgs/Odometry range_data_pose
insertion_submaps insertion_result
int32 current_range_data_index

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: iv_slam_ros_msgs/insertion_submaps
int32 num_submap
SubmapIndex[] submap

================================================================================
MSG: iv_slam_ros_msgs/SubmapIndex
int32 trajectory_id
int32 submap_index
bool finishflag
geometry_msgs/Pose pose
"""
  __slots__ = ['trajectory_id','time','file_time_name','num_submap','range_data_pose','insertion_result','current_range_data_index']
  _slot_types = ['int32','float64','string','int32','nav_msgs/Odometry','iv_slam_ros_msgs/insertion_submaps','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       trajectory_id,time,file_time_name,num_submap,range_data_pose,insertion_result,current_range_data_index

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OptimizationInsertResultRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.trajectory_id is None:
        self.trajectory_id = 0
      if self.time is None:
        self.time = 0.
      if self.file_time_name is None:
        self.file_time_name = ''
      if self.num_submap is None:
        self.num_submap = 0
      if self.range_data_pose is None:
        self.range_data_pose = nav_msgs.msg.Odometry()
      if self.insertion_result is None:
        self.insertion_result = iv_slam_ros_msgs.msg.insertion_submaps()
      if self.current_range_data_index is None:
        self.current_range_data_index = 0
    else:
      self.trajectory_id = 0
      self.time = 0.
      self.file_time_name = ''
      self.num_submap = 0
      self.range_data_pose = nav_msgs.msg.Odometry()
      self.insertion_result = iv_slam_ros_msgs.msg.insertion_submaps()
      self.current_range_data_index = 0

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
      buff.write(_get_struct_id().pack(_x.trajectory_id, _x.time))
      _x = self.file_time_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_i3I().pack(_x.num_submap, _x.range_data_pose.header.seq, _x.range_data_pose.header.stamp.secs, _x.range_data_pose.header.stamp.nsecs))
      _x = self.range_data_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.range_data_pose.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.range_data_pose.pose.pose.position.x, _x.range_data_pose.pose.pose.position.y, _x.range_data_pose.pose.pose.position.z, _x.range_data_pose.pose.pose.orientation.x, _x.range_data_pose.pose.pose.orientation.y, _x.range_data_pose.pose.pose.orientation.z, _x.range_data_pose.pose.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.range_data_pose.pose.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.range_data_pose.twist.twist.linear.x, _x.range_data_pose.twist.twist.linear.y, _x.range_data_pose.twist.twist.linear.z, _x.range_data_pose.twist.twist.angular.x, _x.range_data_pose.twist.twist.angular.y, _x.range_data_pose.twist.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.range_data_pose.twist.covariance))
      buff.write(_get_struct_i().pack(self.insertion_result.num_submap))
      length = len(self.insertion_result.submap)
      buff.write(_struct_I.pack(length))
      for val1 in self.insertion_result.submap:
        _x = val1
        buff.write(_get_struct_2iB().pack(_x.trajectory_id, _x.submap_index, _x.finishflag))
        _v1 = val1.pose
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      buff.write(_get_struct_i().pack(self.current_range_data_index))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.range_data_pose is None:
        self.range_data_pose = nav_msgs.msg.Odometry()
      if self.insertion_result is None:
        self.insertion_result = iv_slam_ros_msgs.msg.insertion_submaps()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.trajectory_id, _x.time,) = _get_struct_id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_time_name = str[start:end].decode('utf-8')
      else:
        self.file_time_name = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.num_submap, _x.range_data_pose.header.seq, _x.range_data_pose.header.stamp.secs, _x.range_data_pose.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.range_data_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.range_data_pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.range_data_pose.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.range_data_pose.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.range_data_pose.pose.pose.position.x, _x.range_data_pose.pose.pose.position.y, _x.range_data_pose.pose.pose.position.z, _x.range_data_pose.pose.pose.orientation.x, _x.range_data_pose.pose.pose.orientation.y, _x.range_data_pose.pose.pose.orientation.z, _x.range_data_pose.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.range_data_pose.pose.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.range_data_pose.twist.twist.linear.x, _x.range_data_pose.twist.twist.linear.y, _x.range_data_pose.twist.twist.linear.z, _x.range_data_pose.twist.twist.angular.x, _x.range_data_pose.twist.twist.angular.y, _x.range_data_pose.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.range_data_pose.twist.covariance = _get_struct_36d().unpack(str[start:end])
      start = end
      end += 4
      (self.insertion_result.num_submap,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.insertion_result.submap = []
      for i in range(0, length):
        val1 = iv_slam_ros_msgs.msg.SubmapIndex()
        _x = val1
        start = end
        end += 9
        (_x.trajectory_id, _x.submap_index, _x.finishflag,) = _get_struct_2iB().unpack(str[start:end])
        val1.finishflag = bool(val1.finishflag)
        _v4 = val1.pose
        _v5 = _v4.position
        _x = _v5
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v6 = _v4.orientation
        _x = _v6
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.insertion_result.submap.append(val1)
      start = end
      end += 4
      (self.current_range_data_index,) = _get_struct_i().unpack(str[start:end])
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
      buff.write(_get_struct_id().pack(_x.trajectory_id, _x.time))
      _x = self.file_time_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_i3I().pack(_x.num_submap, _x.range_data_pose.header.seq, _x.range_data_pose.header.stamp.secs, _x.range_data_pose.header.stamp.nsecs))
      _x = self.range_data_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.range_data_pose.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.range_data_pose.pose.pose.position.x, _x.range_data_pose.pose.pose.position.y, _x.range_data_pose.pose.pose.position.z, _x.range_data_pose.pose.pose.orientation.x, _x.range_data_pose.pose.pose.orientation.y, _x.range_data_pose.pose.pose.orientation.z, _x.range_data_pose.pose.pose.orientation.w))
      buff.write(self.range_data_pose.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.range_data_pose.twist.twist.linear.x, _x.range_data_pose.twist.twist.linear.y, _x.range_data_pose.twist.twist.linear.z, _x.range_data_pose.twist.twist.angular.x, _x.range_data_pose.twist.twist.angular.y, _x.range_data_pose.twist.twist.angular.z))
      buff.write(self.range_data_pose.twist.covariance.tostring())
      buff.write(_get_struct_i().pack(self.insertion_result.num_submap))
      length = len(self.insertion_result.submap)
      buff.write(_struct_I.pack(length))
      for val1 in self.insertion_result.submap:
        _x = val1
        buff.write(_get_struct_2iB().pack(_x.trajectory_id, _x.submap_index, _x.finishflag))
        _v7 = val1.pose
        _v8 = _v7.position
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v9 = _v7.orientation
        _x = _v9
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      buff.write(_get_struct_i().pack(self.current_range_data_index))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.range_data_pose is None:
        self.range_data_pose = nav_msgs.msg.Odometry()
      if self.insertion_result is None:
        self.insertion_result = iv_slam_ros_msgs.msg.insertion_submaps()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.trajectory_id, _x.time,) = _get_struct_id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_time_name = str[start:end].decode('utf-8')
      else:
        self.file_time_name = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.num_submap, _x.range_data_pose.header.seq, _x.range_data_pose.header.stamp.secs, _x.range_data_pose.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.range_data_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.range_data_pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.range_data_pose.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.range_data_pose.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.range_data_pose.pose.pose.position.x, _x.range_data_pose.pose.pose.position.y, _x.range_data_pose.pose.pose.position.z, _x.range_data_pose.pose.pose.orientation.x, _x.range_data_pose.pose.pose.orientation.y, _x.range_data_pose.pose.pose.orientation.z, _x.range_data_pose.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.range_data_pose.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.range_data_pose.twist.twist.linear.x, _x.range_data_pose.twist.twist.linear.y, _x.range_data_pose.twist.twist.linear.z, _x.range_data_pose.twist.twist.angular.x, _x.range_data_pose.twist.twist.angular.y, _x.range_data_pose.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.range_data_pose.twist.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      start = end
      end += 4
      (self.insertion_result.num_submap,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.insertion_result.submap = []
      for i in range(0, length):
        val1 = iv_slam_ros_msgs.msg.SubmapIndex()
        _x = val1
        start = end
        end += 9
        (_x.trajectory_id, _x.submap_index, _x.finishflag,) = _get_struct_2iB().unpack(str[start:end])
        val1.finishflag = bool(val1.finishflag)
        _v10 = val1.pose
        _v11 = _v10.position
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v12 = _v10.orientation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.insertion_result.submap.append(val1)
      start = end
      end += 4
      (self.current_range_data_index,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_i3I = None
def _get_struct_i3I():
    global _struct_i3I
    if _struct_i3I is None:
        _struct_i3I = struct.Struct("<i3I")
    return _struct_i3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2iB = None
def _get_struct_2iB():
    global _struct_2iB
    if _struct_2iB is None:
        _struct_2iB = struct.Struct("<2iB")
    return _struct_2iB
_struct_id = None
def _get_struct_id():
    global _struct_id
    if _struct_id is None:
        _struct_id = struct.Struct("<id")
    return _struct_id
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iv_slam_ros_msgs/OptimizationInsertResultResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OptimizationInsertResultResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "iv_slam_ros_msgs/OptimizationInsertResultResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OptimizationInsertResultResponse, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class OptimizationInsertResult(object):
  _type          = 'iv_slam_ros_msgs/OptimizationInsertResult'
  _md5sum = '2318c3eba77c1405411d17648da8e4ec'
  _request_class  = OptimizationInsertResultRequest
  _response_class = OptimizationInsertResultResponse
