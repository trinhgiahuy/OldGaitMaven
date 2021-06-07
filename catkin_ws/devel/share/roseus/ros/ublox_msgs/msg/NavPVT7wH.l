;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavPVT7wH)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavPVT7wH (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVPVT7WH")
  (make-package "UBLOX_MSGS::NAVPVT7WH"))

(in-package "ROS")
;;//! \htmlinclude NavPVT7wH.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ublox_msgs::NavPVT7wH
  :super ros::object
  :slots (_header _pvt ))

(defmethod ublox_msgs::NavPVT7wH
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pvt __pvt) (instance ublox_msgs::NavPVT7 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pvt __pvt)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pvt
   (&rest __pvt)
   (if (keywordp (car __pvt))
       (send* _pvt __pvt)
     (progn
       (if __pvt (setq _pvt (car __pvt)))
       _pvt)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ublox_msgs/NavPVT7 _pvt
    (send _pvt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ublox_msgs/NavPVT7 _pvt
       (send _pvt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ublox_msgs/NavPVT7 _pvt
     (send _pvt :deserialize buf ptr-) (incf ptr- (send _pvt :serialization-length))
   ;;
   self)
  )

(setf (get ublox_msgs::NavPVT7wH :md5sum-) "2c1c9c92572865d971d77c93b19993af")
(setf (get ublox_msgs::NavPVT7wH :datatype-) "ublox_msgs/NavPVT7wH")
(setf (get ublox_msgs::NavPVT7wH :definition-)
      "Header header
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
uint8[6] reserved1      # Reserved
")



(provide :ublox_msgs/NavPVT7wH "2c1c9c92572865d971d77c93b19993af")


