# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavPVT7wH.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ublox_msgs.msg
import std_msgs.msg

class NavPVT7wH(genpy.Message):
  _md5sum = "2c1c9c92572865d971d77c93b19993af"
  _type = "ublox_msgs/NavPVT7wH"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
NavPVT7 pvt

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
MSG: ublox_msgs/NavPVT7
# NAV-PVT (0x01 0x07)
# Navigation Position Velocity Time Solution Firmware version 7
#
# Note that during a leap second there may be more (or less) than 60 seconds in
# a minute; see the description of leap seconds for details.
#
# This message combines Position, velocity and time solution in LLH, 
# including accuracy figures
#
# WARNING: For firmware version 7, this message is a different length.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 7

uint32 iTOW             # GPS Millisecond time of week [ms]
uint16 year             # Year (UTC)
uint8 month             # Month, range 1..12 (UTC)
uint8 day               # Day of month, range 1..31 (UTC)
uint8 hour              # Hour of day, range 0..23 (UTC)
uint8 min               # Minute of hour, range 0..59 (UTC)
uint8 sec               # Seconds of minute, range 0..60 (UTC)

uint8 valid             # Validity flags
uint8 VALID_DATE = 1            # Valid UTC Date
uint8 VALID_TIME = 2            # Valid 
uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved 
                                # (no seconds uncertainty)
uint8 VALID_MAG = 8             # Valid Magnetic Declination

uint32 tAcc             # time accuracy estimate [ns] (UTC)
int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)

uint8 fixType           # GNSS fix Type, range 0..5
uint8 FIX_TYPE_NO_FIX = 0
uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1
uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, 
                                                # constant altitude assumed
uint8 FIX_TYPE_3D = 3
uint8 FIX_TYPE_GNSS_DEAD_RECKONING_COMBINED = 4 # GNSS + Dead reckoning
uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix (High precision 
                                                # devices)

uint8 flags             # Fix Status Flags
uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks
uint8 FLAGS_DIFF_SOLN = 2            # DGPS used
uint8 FLAGS_PSM_MASK = 28            # Power Save Mode
uint8 PSM_OFF = 0                       # PSM is off
uint8 PSM_ENABLED = 4                   # Enabled (state before acquisition)
uint8 PSM_ACQUIRED = 8                  # Acquisition
uint8 PSM_TRACKING = 12                 # Tracking
uint8 PSM_POWER_OPTIMIZED_TRACKING = 16 # Power Optimized Tracking
uint8 PSM_INACTIVE = 20                 # Inactive
uint8 FLAGS_HEAD_VEH_VALID = 32         # heading of vehicle is valid
uint8 FLAGS_CARRIER_PHASE_MASK = 192 # Carrier Phase Range Solution Status     
uint8 CARRIER_PHASE_NO_SOLUTION = 0     # no carrier phase range solution
uint8 CARRIER_PHASE_FLOAT = 64          # carrier phase float solution (no fixed 
                                        # integer measurements have been used to 
                                        # calculate the solution)
uint8 CARRIER_PHASE_FIXED = 128         # fixed solution (>=1 fixed integer 
                                        # carrier phase range measurements have 
                                        # been used to calculate  the solution)

uint8 flags2            # Additional Flags
uint8 FLAGS2_CONFIRMED_AVAILABLE = 32   # information about UTC Date and Time of 
                                        # Day validity confirmation is available
uint8 FLAGS2_CONFIRMED_DATE = 64        # UTC Date validity could be confirmed
uint8 FLAGS2_CONFIRMED_TIME = 128       # UTC Time of Day could be confirmed

uint8 numSV             # Number of SVs used in Nav Solution
int32 lon               # Longitude [deg / 1e-7]
int32 lat               # Latitude [deg / 1e-7]
int32 height            # Height above Ellipsoid [mm]
int32 hMSL              # Height above mean sea level [mm]
uint32 hAcc             # Horizontal Accuracy Estimate [mm]
uint32 vAcc             # Vertical Accuracy Estimate [mm]

int32 velN              # NED north velocity [mm/s]
int32 velE              # NED east velocity [mm/s]
int32 velD              # NED down velocity [mm/s]
int32 gSpeed            # Ground Speed (2-D) [mm/s]
int32 heading           # Heading of motion 2-D [deg / 1e-5]
uint32 sAcc             # Speed Accuracy Estimate [mm/s]
uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) 
                        # [deg / 1e-5]

uint16 pDOP             # Position DOP [1 / 0.01]
uint8[6] reserved1      # Reserved"""
  __slots__ = ['header','pvt']
  _slot_types = ['std_msgs/Header','ublox_msgs/NavPVT7']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,pvt

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavPVT7wH, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pvt is None:
        self.pvt = ublox_msgs.msg.NavPVT7()
    else:
      self.header = std_msgs.msg.Header()
      self.pvt = ublox_msgs.msg.NavPVT7()

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
      buff.write(_get_struct_IH6BIi4B4i2I5i2IH().pack(_x.pvt.iTOW, _x.pvt.year, _x.pvt.month, _x.pvt.day, _x.pvt.hour, _x.pvt.min, _x.pvt.sec, _x.pvt.valid, _x.pvt.tAcc, _x.pvt.nano, _x.pvt.fixType, _x.pvt.flags, _x.pvt.flags2, _x.pvt.numSV, _x.pvt.lon, _x.pvt.lat, _x.pvt.height, _x.pvt.hMSL, _x.pvt.hAcc, _x.pvt.vAcc, _x.pvt.velN, _x.pvt.velE, _x.pvt.velD, _x.pvt.gSpeed, _x.pvt.heading, _x.pvt.sAcc, _x.pvt.headAcc, _x.pvt.pDOP))
      _x = self.pvt.reserved1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_6B().pack(*_x))
      else:
        buff.write(_get_struct_6s().pack(_x))
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
      if self.pvt is None:
        self.pvt = ublox_msgs.msg.NavPVT7()
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
      end += 78
      (_x.pvt.iTOW, _x.pvt.year, _x.pvt.month, _x.pvt.day, _x.pvt.hour, _x.pvt.min, _x.pvt.sec, _x.pvt.valid, _x.pvt.tAcc, _x.pvt.nano, _x.pvt.fixType, _x.pvt.flags, _x.pvt.flags2, _x.pvt.numSV, _x.pvt.lon, _x.pvt.lat, _x.pvt.height, _x.pvt.hMSL, _x.pvt.hAcc, _x.pvt.vAcc, _x.pvt.velN, _x.pvt.velE, _x.pvt.velD, _x.pvt.gSpeed, _x.pvt.heading, _x.pvt.sAcc, _x.pvt.headAcc, _x.pvt.pDOP,) = _get_struct_IH6BIi4B4i2I5i2IH().unpack(str[start:end])
      start = end
      end += 6
      self.pvt.reserved1 = str[start:end]
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
      buff.write(_get_struct_IH6BIi4B4i2I5i2IH().pack(_x.pvt.iTOW, _x.pvt.year, _x.pvt.month, _x.pvt.day, _x.pvt.hour, _x.pvt.min, _x.pvt.sec, _x.pvt.valid, _x.pvt.tAcc, _x.pvt.nano, _x.pvt.fixType, _x.pvt.flags, _x.pvt.flags2, _x.pvt.numSV, _x.pvt.lon, _x.pvt.lat, _x.pvt.height, _x.pvt.hMSL, _x.pvt.hAcc, _x.pvt.vAcc, _x.pvt.velN, _x.pvt.velE, _x.pvt.velD, _x.pvt.gSpeed, _x.pvt.heading, _x.pvt.sAcc, _x.pvt.headAcc, _x.pvt.pDOP))
      _x = self.pvt.reserved1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_6B().pack(*_x))
      else:
        buff.write(_get_struct_6s().pack(_x))
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
      if self.pvt is None:
        self.pvt = ublox_msgs.msg.NavPVT7()
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
      end += 78
      (_x.pvt.iTOW, _x.pvt.year, _x.pvt.month, _x.pvt.day, _x.pvt.hour, _x.pvt.min, _x.pvt.sec, _x.pvt.valid, _x.pvt.tAcc, _x.pvt.nano, _x.pvt.fixType, _x.pvt.flags, _x.pvt.flags2, _x.pvt.numSV, _x.pvt.lon, _x.pvt.lat, _x.pvt.height, _x.pvt.hMSL, _x.pvt.hAcc, _x.pvt.vAcc, _x.pvt.velN, _x.pvt.velE, _x.pvt.velD, _x.pvt.gSpeed, _x.pvt.heading, _x.pvt.sAcc, _x.pvt.headAcc, _x.pvt.pDOP,) = _get_struct_IH6BIi4B4i2I5i2IH().unpack(str[start:end])
      start = end
      end += 6
      self.pvt.reserved1 = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_IH6BIi4B4i2I5i2IH = None
def _get_struct_IH6BIi4B4i2I5i2IH():
    global _struct_IH6BIi4B4i2I5i2IH
    if _struct_IH6BIi4B4i2I5i2IH is None:
        _struct_IH6BIi4B4i2I5i2IH = struct.Struct("<IH6BIi4B4i2I5i2IH")
    return _struct_IH6BIi4B4i2I5i2IH
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_6s = None
def _get_struct_6s():
    global _struct_6s
    if _struct_6s is None:
        _struct_6s = struct.Struct("<6s")
    return _struct_6s
_struct_6B = None
def _get_struct_6B():
    global _struct_6B
    if _struct_6B is None:
        _struct_6B = struct.Struct("<6B")
    return _struct_6B
