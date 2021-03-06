"""autogenerated by genpy from mst_position/target_heading.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class target_heading(genpy.Message):
  _md5sum = "a83a1849d285a5fb13b2a15dc5ba888d"
  _type = "mst_position/target_heading"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64     target_heading
float64     distance
int8        waypoint
bool        stop_robot
bool        done

"""
  __slots__ = ['target_heading','distance','waypoint','stop_robot','done']
  _slot_types = ['float64','float64','int8','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_heading,distance,waypoint,stop_robot,done

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(target_heading, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_heading is None:
        self.target_heading = 0.
      if self.distance is None:
        self.distance = 0.
      if self.waypoint is None:
        self.waypoint = 0
      if self.stop_robot is None:
        self.stop_robot = False
      if self.done is None:
        self.done = False
    else:
      self.target_heading = 0.
      self.distance = 0.
      self.waypoint = 0
      self.stop_robot = False
      self.done = False

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
      buff.write(_struct_2db2B.pack(_x.target_heading, _x.distance, _x.waypoint, _x.stop_robot, _x.done))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 19
      (_x.target_heading, _x.distance, _x.waypoint, _x.stop_robot, _x.done,) = _struct_2db2B.unpack(str[start:end])
      self.stop_robot = bool(self.stop_robot)
      self.done = bool(self.done)
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
      buff.write(_struct_2db2B.pack(_x.target_heading, _x.distance, _x.waypoint, _x.stop_robot, _x.done))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 19
      (_x.target_heading, _x.distance, _x.waypoint, _x.stop_robot, _x.done,) = _struct_2db2B.unpack(str[start:end])
      self.stop_robot = bool(self.stop_robot)
      self.done = bool(self.done)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2db2B = struct.Struct("<2db2B")
