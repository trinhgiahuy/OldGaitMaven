# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavATT.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NavATT(genpy.Message):
  _md5sum = "5d7fd152cc974cdd6905d89f564451b6"
  _type = "ublox_msgs/NavATT"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# NAV-ATT (0x01 0x05)
# Attitude Solution
#
# This message outputs the attitude solution as roll, pitch and heading angles.
# Supported on ADR and UDR products.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 5

uint32 iTOW               # GPS time of week of the navigation epoch [ms]
uint8 version             # Message version (0 for this version)

uint8[3] reserved0        # Reserved

int32 roll                # Vehicle roll. [deg / 1e-5]
int32 pitch               # Vehicle pitch. [deg / 1e-5]
int32 heading             # Vehicle heading. [deg / 1e-5]
uint32 accRoll            # Vehicle roll accuracy (if null, roll angle is not 
                          # available). [deg / 1e-5]
uint32 accPitch           # Vehicle pitch accuracy (if null, pitch angle is not 
                          # available). [deg / 1e-5]
uint32 accHeading         # Vehicle heading accuracy [deg / 1e-5]"""
  # Pseudo-constants
  CLASS_ID = 1
  MESSAGE_ID = 5

  __slots__ = ['iTOW','version','reserved0','roll','pitch','heading','accRoll','accPitch','accHeading']
  _slot_types = ['uint32','uint8','uint8[3]','int32','int32','int32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iTOW,version,reserved0,roll,pitch,heading,accRoll,accPitch,accHeading

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavATT, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.iTOW is None:
        self.iTOW = 0
      if self.version is None:
        self.version = 0
      if self.reserved0 is None:
        self.reserved0 = b'\0'*3
      if self.roll is None:
        self.roll = 0
      if self.pitch is None:
        self.pitch = 0
      if self.heading is None:
        self.heading = 0
      if self.accRoll is None:
        self.accRoll = 0
      if self.accPitch is None:
        self.accPitch = 0
      if self.accHeading is None:
        self.accHeading = 0
    else:
      self.iTOW = 0
      self.version = 0
      self.reserved0 = b'\0'*3
      self.roll = 0
      self.pitch = 0
      self.heading = 0
      self.accRoll = 0
      self.accPitch = 0
      self.accHeading = 0

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
      buff.write(_get_struct_IB().pack(_x.iTOW, _x.version))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
      _x = self
      buff.write(_get_struct_3i3I().pack(_x.roll, _x.pitch, _x.heading, _x.accRoll, _x.accPitch, _x.accHeading))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.iTOW, _x.version,) = _get_struct_IB().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.roll, _x.pitch, _x.heading, _x.accRoll, _x.accPitch, _x.accHeading,) = _get_struct_3i3I().unpack(str[start:end])
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
      buff.write(_get_struct_IB().pack(_x.iTOW, _x.version))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
      _x = self
      buff.write(_get_struct_3i3I().pack(_x.roll, _x.pitch, _x.heading, _x.accRoll, _x.accPitch, _x.accHeading))
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
      _x = self
      start = end
      end += 5
      (_x.iTOW, _x.version,) = _get_struct_IB().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.roll, _x.pitch, _x.heading, _x.accRoll, _x.accPitch, _x.accHeading,) = _get_struct_3i3I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3s = None
def _get_struct_3s():
    global _struct_3s
    if _struct_3s is None:
        _struct_3s = struct.Struct("<3s")
    return _struct_3s
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_IB = None
def _get_struct_IB():
    global _struct_IB
    if _struct_IB is None:
        _struct_IB = struct.Struct("<IB")
    return _struct_IB
_struct_3i3I = None
def _get_struct_3i3I():
    global _struct_3i3I
    if _struct_3i3I is None:
        _struct_3i3I = struct.Struct("<3i3I")
    return _struct_3i3I
