; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavPVT7wH.msg.html

(cl:defclass <NavPVT7wH> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pvt
    :reader pvt
    :initarg :pvt
    :type ublox_msgs-msg:NavPVT7
    :initform (cl:make-instance 'ublox_msgs-msg:NavPVT7)))
)

(cl:defclass NavPVT7wH (<NavPVT7wH>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPVT7wH>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPVT7wH)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavPVT7wH> is deprecated: use ublox_msgs-msg:NavPVT7wH instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavPVT7wH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:header-val is deprecated.  Use ublox_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pvt-val :lambda-list '(m))
(cl:defmethod pvt-val ((m <NavPVT7wH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pvt-val is deprecated.  Use ublox_msgs-msg:pvt instead.")
  (pvt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPVT7wH>) ostream)
  "Serializes a message object of type '<NavPVT7wH>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pvt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPVT7wH>) istream)
  "Deserializes a message object of type '<NavPVT7wH>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pvt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPVT7wH>)))
  "Returns string type for a message object of type '<NavPVT7wH>"
  "ublox_msgs/NavPVT7wH")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPVT7wH)))
  "Returns string type for a message object of type 'NavPVT7wH"
  "ublox_msgs/NavPVT7wH")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPVT7wH>)))
  "Returns md5sum for a message object of type '<NavPVT7wH>"
  "2c1c9c92572865d971d77c93b19993af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPVT7wH)))
  "Returns md5sum for a message object of type 'NavPVT7wH"
  "2c1c9c92572865d971d77c93b19993af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPVT7wH>)))
  "Returns full string definition for message of type '<NavPVT7wH>"
  (cl:format cl:nil "Header header~%NavPVT7 pvt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox_msgs/NavPVT7~%# NAV-PVT (0x01 0x07)~%# Navigation Position Velocity Time Solution Firmware version 7~%#~%# Note that during a leap second there may be more (or less) than 60 seconds in~%# a minute; see the description of leap seconds for details.~%#~%# This message combines Position, velocity and time solution in LLH, ~%# including accuracy figures~%#~%# WARNING: For firmware version 7, this message is a different length.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 7~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%uint16 year             # Year (UTC)~%uint8 month             # Month, range 1..12 (UTC)~%uint8 day               # Day of month, range 1..31 (UTC)~%uint8 hour              # Hour of day, range 0..23 (UTC)~%uint8 min               # Minute of hour, range 0..59 (UTC)~%uint8 sec               # Seconds of minute, range 0..60 (UTC)~%~%uint8 valid             # Validity flags~%uint8 VALID_DATE = 1            # Valid UTC Date~%uint8 VALID_TIME = 2            # Valid ~%uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved ~%                                # (no seconds uncertainty)~%uint8 VALID_MAG = 8             # Valid Magnetic Declination~%~%uint32 tAcc             # time accuracy estimate [ns] (UTC)~%int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)~%~%uint8 fixType           # GNSS fix Type, range 0..5~%uint8 FIX_TYPE_NO_FIX = 0~%uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1~%uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, ~%                                                # constant altitude assumed~%uint8 FIX_TYPE_3D = 3~%uint8 FIX_TYPE_GNSS_DEAD_RECKONING_COMBINED = 4 # GNSS + Dead reckoning~%uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix (High precision ~%                                                # devices)~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks~%uint8 FLAGS_DIFF_SOLN = 2            # DGPS used~%uint8 FLAGS_PSM_MASK = 28            # Power Save Mode~%uint8 PSM_OFF = 0                       # PSM is off~%uint8 PSM_ENABLED = 4                   # Enabled (state before acquisition)~%uint8 PSM_ACQUIRED = 8                  # Acquisition~%uint8 PSM_TRACKING = 12                 # Tracking~%uint8 PSM_POWER_OPTIMIZED_TRACKING = 16 # Power Optimized Tracking~%uint8 PSM_INACTIVE = 20                 # Inactive~%uint8 FLAGS_HEAD_VEH_VALID = 32         # heading of vehicle is valid~%uint8 FLAGS_CARRIER_PHASE_MASK = 192 # Carrier Phase Range Solution Status     ~%uint8 CARRIER_PHASE_NO_SOLUTION = 0     # no carrier phase range solution~%uint8 CARRIER_PHASE_FLOAT = 64          # carrier phase float solution (no fixed ~%                                        # integer measurements have been used to ~%                                        # calculate the solution)~%uint8 CARRIER_PHASE_FIXED = 128         # fixed solution (>=1 fixed integer ~%                                        # carrier phase range measurements have ~%                                        # been used to calculate  the solution)~%~%uint8 flags2            # Additional Flags~%uint8 FLAGS2_CONFIRMED_AVAILABLE = 32   # information about UTC Date and Time of ~%                                        # Day validity confirmation is available~%uint8 FLAGS2_CONFIRMED_DATE = 64        # UTC Date validity could be confirmed~%uint8 FLAGS2_CONFIRMED_TIME = 128       # UTC Time of Day could be confirmed~%~%uint8 numSV             # Number of SVs used in Nav Solution~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%~%int32 velN              # NED north velocity [mm/s]~%int32 velE              # NED east velocity [mm/s]~%int32 velD              # NED down velocity [mm/s]~%int32 gSpeed            # Ground Speed (2-D) [mm/s]~%int32 heading           # Heading of motion 2-D [deg / 1e-5]~%uint32 sAcc             # Speed Accuracy Estimate [mm/s]~%uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) ~%                        # [deg / 1e-5]~%~%uint16 pDOP             # Position DOP [1 / 0.01]~%uint8[6] reserved1      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPVT7wH)))
  "Returns full string definition for message of type 'NavPVT7wH"
  (cl:format cl:nil "Header header~%NavPVT7 pvt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox_msgs/NavPVT7~%# NAV-PVT (0x01 0x07)~%# Navigation Position Velocity Time Solution Firmware version 7~%#~%# Note that during a leap second there may be more (or less) than 60 seconds in~%# a minute; see the description of leap seconds for details.~%#~%# This message combines Position, velocity and time solution in LLH, ~%# including accuracy figures~%#~%# WARNING: For firmware version 7, this message is a different length.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 7~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%uint16 year             # Year (UTC)~%uint8 month             # Month, range 1..12 (UTC)~%uint8 day               # Day of month, range 1..31 (UTC)~%uint8 hour              # Hour of day, range 0..23 (UTC)~%uint8 min               # Minute of hour, range 0..59 (UTC)~%uint8 sec               # Seconds of minute, range 0..60 (UTC)~%~%uint8 valid             # Validity flags~%uint8 VALID_DATE = 1            # Valid UTC Date~%uint8 VALID_TIME = 2            # Valid ~%uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved ~%                                # (no seconds uncertainty)~%uint8 VALID_MAG = 8             # Valid Magnetic Declination~%~%uint32 tAcc             # time accuracy estimate [ns] (UTC)~%int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)~%~%uint8 fixType           # GNSS fix Type, range 0..5~%uint8 FIX_TYPE_NO_FIX = 0~%uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1~%uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, ~%                                                # constant altitude assumed~%uint8 FIX_TYPE_3D = 3~%uint8 FIX_TYPE_GNSS_DEAD_RECKONING_COMBINED = 4 # GNSS + Dead reckoning~%uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix (High precision ~%                                                # devices)~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks~%uint8 FLAGS_DIFF_SOLN = 2            # DGPS used~%uint8 FLAGS_PSM_MASK = 28            # Power Save Mode~%uint8 PSM_OFF = 0                       # PSM is off~%uint8 PSM_ENABLED = 4                   # Enabled (state before acquisition)~%uint8 PSM_ACQUIRED = 8                  # Acquisition~%uint8 PSM_TRACKING = 12                 # Tracking~%uint8 PSM_POWER_OPTIMIZED_TRACKING = 16 # Power Optimized Tracking~%uint8 PSM_INACTIVE = 20                 # Inactive~%uint8 FLAGS_HEAD_VEH_VALID = 32         # heading of vehicle is valid~%uint8 FLAGS_CARRIER_PHASE_MASK = 192 # Carrier Phase Range Solution Status     ~%uint8 CARRIER_PHASE_NO_SOLUTION = 0     # no carrier phase range solution~%uint8 CARRIER_PHASE_FLOAT = 64          # carrier phase float solution (no fixed ~%                                        # integer measurements have been used to ~%                                        # calculate the solution)~%uint8 CARRIER_PHASE_FIXED = 128         # fixed solution (>=1 fixed integer ~%                                        # carrier phase range measurements have ~%                                        # been used to calculate  the solution)~%~%uint8 flags2            # Additional Flags~%uint8 FLAGS2_CONFIRMED_AVAILABLE = 32   # information about UTC Date and Time of ~%                                        # Day validity confirmation is available~%uint8 FLAGS2_CONFIRMED_DATE = 64        # UTC Date validity could be confirmed~%uint8 FLAGS2_CONFIRMED_TIME = 128       # UTC Time of Day could be confirmed~%~%uint8 numSV             # Number of SVs used in Nav Solution~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%~%int32 velN              # NED north velocity [mm/s]~%int32 velE              # NED east velocity [mm/s]~%int32 velD              # NED down velocity [mm/s]~%int32 gSpeed            # Ground Speed (2-D) [mm/s]~%int32 heading           # Heading of motion 2-D [deg / 1e-5]~%uint32 sAcc             # Speed Accuracy Estimate [mm/s]~%uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) ~%                        # [deg / 1e-5]~%~%uint16 pDOP             # Position DOP [1 / 0.01]~%uint8[6] reserved1      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPVT7wH>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pvt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPVT7wH>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPVT7wH
    (cl:cons ':header (header msg))
    (cl:cons ':pvt (pvt msg))
))
