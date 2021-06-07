;; Auto-generated. Do not edit!


(when (boundp 'imu_sequenced::ImuSequenced)
  (if (not (find-package "IMU_SEQUENCED"))
    (make-package "IMU_SEQUENCED"))
  (shadow 'ImuSequenced (find-package "IMU_SEQUENCED")))
(unless (find-package "IMU_SEQUENCED::IMUSEQUENCED")
  (make-package "IMU_SEQUENCED::IMUSEQUENCED"))

(in-package "ROS")
;;//! \htmlinclude ImuSequenced.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass imu_sequenced::ImuSequenced
  :super ros::object
  :slots (_imu _seq ))

(defmethod imu_sequenced::ImuSequenced
  (:init
   (&key
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:seq __seq) 0)
    )
   (send-super :init)
   (setq _imu __imu)
   (setq _seq (round __seq))
   self)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; uint32 _seq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get imu_sequenced::ImuSequenced :md5sum-) "009eb952c3a8276f5b47ebd92ca7e51e")
(setf (get imu_sequenced::ImuSequenced :datatype-) "imu_sequenced/ImuSequenced")
(setf (get imu_sequenced::ImuSequenced :definition-)
      "sensor_msgs/Imu imu
uint32 seq

================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
")



(provide :imu_sequenced/ImuSequenced "009eb952c3a8276f5b47ebd92ca7e51e")


