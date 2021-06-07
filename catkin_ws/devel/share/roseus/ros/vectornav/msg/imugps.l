;; Auto-generated. Do not edit!


(when (boundp 'vectornav::imugps)
  (if (not (find-package "VECTORNAV"))
    (make-package "VECTORNAV"))
  (shadow 'imugps (find-package "VECTORNAV")))
(unless (find-package "VECTORNAV::IMUGPS")
  (make-package "VECTORNAV::IMUGPS"))

(in-package "ROS")
;;//! \htmlinclude imugps.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vectornav::imugps
  :super ros::object
  :slots (_header _time _orientation _angular_velocity _LLA _nedvel _linear_acceleration _dtime _dtheta _dvel _fix _gpsLLA _gpsnedvel ))

(defmethod vectornav::imugps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:LLA __LLA) (instance geometry_msgs::Vector3 :init))
    ((:nedvel __nedvel) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:dtime __dtime) 0.0)
    ((:dtheta __dtheta) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:dvel __dvel) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:fix __fix) 0)
    ((:gpsLLA __gpsLLA) (instance geometry_msgs::Vector3 :init))
    ((:gpsnedvel __gpsnedvel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (round __time))
   (setq _orientation __orientation)
   (setq _angular_velocity __angular_velocity)
   (setq _LLA __LLA)
   (setq _nedvel __nedvel)
   (setq _linear_acceleration __linear_acceleration)
   (setq _dtime (float __dtime))
   (setq _dtheta __dtheta)
   (setq _dvel __dvel)
   (setq _fix (round __fix))
   (setq _gpsLLA __gpsLLA)
   (setq _gpsnedvel __gpsnedvel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:LLA
   (&rest __LLA)
   (if (keywordp (car __LLA))
       (send* _LLA __LLA)
     (progn
       (if __LLA (setq _LLA (car __LLA)))
       _LLA)))
  (:nedvel
   (&rest __nedvel)
   (if (keywordp (car __nedvel))
       (send* _nedvel __nedvel)
     (progn
       (if __nedvel (setq _nedvel (car __nedvel)))
       _nedvel)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:dtime
   (&optional __dtime)
   (if __dtime (setq _dtime __dtime)) _dtime)
  (:dtheta
   (&optional __dtheta)
   (if __dtheta (setq _dtheta __dtheta)) _dtheta)
  (:dvel
   (&optional __dvel)
   (if __dvel (setq _dvel __dvel)) _dvel)
  (:fix
   (&optional __fix)
   (if __fix (setq _fix __fix)) _fix)
  (:gpsLLA
   (&rest __gpsLLA)
   (if (keywordp (car __gpsLLA))
       (send* _gpsLLA __gpsLLA)
     (progn
       (if __gpsLLA (setq _gpsLLA (car __gpsLLA)))
       _gpsLLA)))
  (:gpsnedvel
   (&rest __gpsnedvel)
   (if (keywordp (car __gpsnedvel))
       (send* _gpsnedvel __gpsnedvel)
     (progn
       (if __gpsnedvel (setq _gpsnedvel (car __gpsnedvel)))
       _gpsnedvel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _time
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _LLA
    (send _LLA :serialization-length)
    ;; geometry_msgs/Vector3 _nedvel
    (send _nedvel :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float32 _dtime
    4
    ;; float32[3] _dtheta
    (* 4    3)
    ;; float32[3] _dvel
    (* 4    3)
    ;; uint8 _fix
    1
    ;; geometry_msgs/Vector3 _gpsLLA
    (send _gpsLLA :serialization-length)
    ;; geometry_msgs/Vector3 _gpsnedvel
    (send _gpsnedvel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time) (= (length (_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time . bv) 0) 0) s)
              (write-long (ash (elt (_time . bv) 1) -1) s))
             ((and (class _time) (= (length (_time . bv)) 1)) ;; big1
              (write-long (elt (_time . bv) 0) s)
              (write-long (if (>= _time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time s)(write-long (if (>= _time 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _LLA
       (send _LLA :serialize s)
     ;; geometry_msgs/Vector3 _nedvel
       (send _nedvel :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float32 _dtime
       (sys::poke _dtime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _dtheta
     (dotimes (i 3)
       (sys::poke (elt _dtheta i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _dvel
     (dotimes (i 3)
       (sys::poke (elt _dvel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _fix
       (write-byte _fix s)
     ;; geometry_msgs/Vector3 _gpsLLA
       (send _gpsLLA :serialize s)
     ;; geometry_msgs/Vector3 _gpsnedvel
       (send _gpsnedvel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _time
     
#+(or :alpha :irix6 :x86_64)
      (setf _time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _LLA
     (send _LLA :deserialize buf ptr-) (incf ptr- (send _LLA :serialization-length))
   ;; geometry_msgs/Vector3 _nedvel
     (send _nedvel :deserialize buf ptr-) (incf ptr- (send _nedvel :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float32 _dtime
     (setq _dtime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _dtheta
   (dotimes (i (length _dtheta))
     (setf (elt _dtheta i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _dvel
   (dotimes (i (length _dvel))
     (setf (elt _dvel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint8 _fix
     (setq _fix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _gpsLLA
     (send _gpsLLA :deserialize buf ptr-) (incf ptr- (send _gpsLLA :serialization-length))
   ;; geometry_msgs/Vector3 _gpsnedvel
     (send _gpsnedvel :deserialize buf ptr-) (incf ptr- (send _gpsnedvel :serialization-length))
   ;;
   self)
  )

(setf (get vectornav::imugps :md5sum-) "0bcb092f31dba2c7e0aa5e8d136d895c")
(setf (get vectornav::imugps :datatype-) "vectornav/imugps")
(setf (get vectornav::imugps :definition-)
      "std_msgs/Header       header
uint64               time
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 LLA
geometry_msgs/Vector3 nedvel
geometry_msgs/Vector3 linear_acceleration
float32               dtime
float32[3]            dtheta
float32[3]            dvel
uint8                 fix
geometry_msgs/Vector3 gpsLLA
geometry_msgs/Vector3 gpsnedvel

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



(provide :vectornav/imugps "0bcb092f31dba2c7e0aa5e8d136d895c")


