;; Auto-generated. Do not edit!


(when (boundp 'vectornav::rawmeas)
  (if (not (find-package "VECTORNAV"))
    (make-package "VECTORNAV"))
  (shadow 'rawmeas (find-package "VECTORNAV")))
(unless (find-package "VECTORNAV::RAWMEAS")
  (make-package "VECTORNAV::RAWMEAS"))

(in-package "ROS")
;;//! \htmlinclude rawmeas.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vectornav::rawmeas
  :super ros::object
  :slots (_header _tow _week _numSats _resv _satraws ))

(defmethod vectornav::rawmeas
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tow __tow) 0.0)
    ((:week __week) 0)
    ((:numSats __numSats) 0)
    ((:resv __resv) 0)
    ((:satraws __satraws) (let (r) (dotimes (i 0) (push (instance vectornav::satraw :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tow (float __tow))
   (setq _week (round __week))
   (setq _numSats (round __numSats))
   (setq _resv (round __resv))
   (setq _satraws __satraws)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:numSats
   (&optional __numSats)
   (if __numSats (setq _numSats __numSats)) _numSats)
  (:resv
   (&optional __resv)
   (if __resv (setq _resv __resv)) _resv)
  (:satraws
   (&rest __satraws)
   (if (keywordp (car __satraws))
       (send* _satraws __satraws)
     (progn
       (if __satraws (setq _satraws (car __satraws)))
       _satraws)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _tow
    8
    ;; uint16 _week
    2
    ;; uint8 _numSats
    1
    ;; uint8 _resv
    1
    ;; vectornav/satraw[] _satraws
    (apply #'+ (send-all _satraws :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _tow
       (sys::poke _tow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _week
       (write-word _week s)
     ;; uint8 _numSats
       (write-byte _numSats s)
     ;; uint8 _resv
       (write-byte _resv s)
     ;; vectornav/satraw[] _satraws
     (write-long (length _satraws) s)
     (dolist (elem _satraws)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _tow
     (setq _tow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _numSats
     (setq _numSats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _resv
     (setq _resv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; vectornav/satraw[] _satraws
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satraws (let (r) (dotimes (i n) (push (instance vectornav::satraw :init) r)) r))
     (dolist (elem- _satraws)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vectornav::rawmeas :md5sum-) "ea95944c129482cc512d818090e6d878")
(setf (get vectornav::rawmeas :datatype-) "vectornav/rawmeas")
(setf (get vectornav::rawmeas :definition-)
      "std_msgs/Header       header
float64               tow
uint16                week
uint8                 numSats
uint8                 resv
satraw[]              satraws

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
MSG: vectornav/satraw
uint8                sys
uint8                svId
uint8                freq
uint8                chan
int8                 slot
uint8                cno
uint16               flags
float64              pr
float64              cp
float32              dp

")



(provide :vectornav/rawmeas "ea95944c129482cc512d818090e6d878")


