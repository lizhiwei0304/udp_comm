# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sensor_driver_msgs/TargetCar.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_driver_msgs.msg

class TargetCar(genpy.Message):
  _md5sum = "3ef49c01eb2a83dc00d31ab0905a1439"
  _type = "sensor_driver_msgs/TargetCar"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Rectangle[] CarPosition
int32 num

================================================================================
MSG: sensor_driver_msgs/Rectangle
Points Point1
Points Point2
Points Point3
Points Point4
float64 Height
int32 Heading
int32 Id_number
float64 v_x
float64 v_y

================================================================================
MSG: sensor_driver_msgs/Points
float64 x
float64 y
float64 z
"""
  __slots__ = ['CarPosition','num']
  _slot_types = ['sensor_driver_msgs/Rectangle[]','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       CarPosition,num

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TargetCar, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.CarPosition is None:
        self.CarPosition = []
      if self.num is None:
        self.num = 0
    else:
      self.CarPosition = []
      self.num = 0

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
      length = len(self.CarPosition)
      buff.write(_struct_I.pack(length))
      for val1 in self.CarPosition:
        _v1 = val1.Point1
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.Point2
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = val1.Point3
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.Point4
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_d2i2d().pack(_x.Height, _x.Heading, _x.Id_number, _x.v_x, _x.v_y))
      buff.write(_get_struct_i().pack(self.num))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.CarPosition is None:
        self.CarPosition = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.CarPosition = []
      for i in range(0, length):
        val1 = sensor_driver_msgs.msg.Rectangle()
        _v5 = val1.Point1
        _x = _v5
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v6 = val1.Point2
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v7 = val1.Point3
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.Point4
        _x = _v8
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 32
        (_x.Height, _x.Heading, _x.Id_number, _x.v_x, _x.v_y,) = _get_struct_d2i2d().unpack(str[start:end])
        self.CarPosition.append(val1)
      start = end
      end += 4
      (self.num,) = _get_struct_i().unpack(str[start:end])
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
      length = len(self.CarPosition)
      buff.write(_struct_I.pack(length))
      for val1 in self.CarPosition:
        _v9 = val1.Point1
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = val1.Point2
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = val1.Point3
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = val1.Point4
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_d2i2d().pack(_x.Height, _x.Heading, _x.Id_number, _x.v_x, _x.v_y))
      buff.write(_get_struct_i().pack(self.num))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.CarPosition is None:
        self.CarPosition = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.CarPosition = []
      for i in range(0, length):
        val1 = sensor_driver_msgs.msg.Rectangle()
        _v13 = val1.Point1
        _x = _v13
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v14 = val1.Point2
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = val1.Point3
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.Point4
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 32
        (_x.Height, _x.Heading, _x.Id_number, _x.v_x, _x.v_y,) = _get_struct_d2i2d().unpack(str[start:end])
        self.CarPosition.append(val1)
      start = end
      end += 4
      (self.num,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2i2d = None
def _get_struct_d2i2d():
    global _struct_d2i2d
    if _struct_d2i2d is None:
        _struct_d2i2d = struct.Struct("<d2i2d")
    return _struct_d2i2d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
