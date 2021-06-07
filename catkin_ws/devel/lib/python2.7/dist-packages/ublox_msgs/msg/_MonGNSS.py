# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/MonGNSS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MonGNSS(genpy.Message):
  _md5sum = "0986728889e4abf5eac46b70b74047ed"
  _type = "ublox_msgs/MonGNSS"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# MON-GNSS (0x0A 0x28)
# Information message major GNSS selection
#
# This message reports major GNSS selection. Augmentation systems are not
# reported.
# 

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 40

uint8 version         # Message version (0x01 for this version)

uint8 BIT_MASK_GPS = 1
uint8 BIT_MASK_GLONASS = 2
uint8 BIT_MASK_BEIDOU = 4
uint8 BIT_MASK_GALILEO = 8

uint8 supported       # The major GNSS that can be supported by this receiver
uint8 defaultGnss     # Default major GNSS selection. If the default major GNSS 
                      # selection is currently configured in the efuse for this 
                      # receiver, it takes precedence over the default major 
                      # GNSS selection configured in the executing firmware of 
                      # this receiver.
                      # see bit mask constants
uint8 enabled         # Current major GNSS selection enabled for this receiver
                      # see bit mask constants

uint8 simultaneous    # Maximum number of concurrent major GNSS that can be 
                      # supported by this receiver

uint8[3] reserved1    # Reserved"""
  # Pseudo-constants
  CLASS_ID = 10
  MESSAGE_ID = 40
  BIT_MASK_GPS = 1
  BIT_MASK_GLONASS = 2
  BIT_MASK_BEIDOU = 4
  BIT_MASK_GALILEO = 8

  __slots__ = ['version','supported','defaultGnss','enabled','simultaneous','reserved1']
  _slot_types = ['uint8','uint8','uint8','uint8','uint8','uint8[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       version,supported,defaultGnss,enabled,simultaneous,reserved1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MonGNSS, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.version is None:
        self.version = 0
      if self.supported is None:
        self.supported = 0
      if self.defaultGnss is None:
        self.defaultGnss = 0
      if self.enabled is None:
        self.enabled = 0
      if self.simultaneous is None:
        self.simultaneous = 0
      if self.reserved1 is None:
        self.reserved1 = b'\0'*3
    else:
      self.version = 0
      self.supported = 0
      self.defaultGnss = 0
      self.enabled = 0
      self.simultaneous = 0
      self.reserved1 = b'\0'*3

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
      buff.write(_get_struct_5B().pack(_x.version, _x.supported, _x.defaultGnss, _x.enabled, _x.simultaneous))
      _x = self.reserved1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
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
      (_x.version, _x.supported, _x.defaultGnss, _x.enabled, _x.simultaneous,) = _get_struct_5B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved1 = str[start:end]
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
      buff.write(_get_struct_5B().pack(_x.version, _x.supported, _x.defaultGnss, _x.enabled, _x.simultaneous))
      _x = self.reserved1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
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
      (_x.version, _x.supported, _x.defaultGnss, _x.enabled, _x.simultaneous,) = _get_struct_5B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved1 = str[start:end]
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
_struct_5B = None
def _get_struct_5B():
    global _struct_5B
    if _struct_5B is None:
        _struct_5B = struct.Struct("<5B")
    return _struct_5B
