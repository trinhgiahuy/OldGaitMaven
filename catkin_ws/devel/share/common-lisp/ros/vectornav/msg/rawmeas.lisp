; Auto-generated. Do not edit!


(cl:in-package vectornav-msg)


;//! \htmlinclude rawmeas.msg.html

(cl:defclass <rawmeas> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tow
    :reader tow
    :initarg :tow
    :type cl:float
    :initform 0.0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (numSats
    :reader numSats
    :initarg :numSats
    :type cl:fixnum
    :initform 0)
   (resv
    :reader resv
    :initarg :resv
    :type cl:fixnum
    :initform 0)
   (satraws
    :reader satraws
    :initarg :satraws
    :type (cl:vector vectornav-msg:satraw)
   :initform (cl:make-array 0 :element-type 'vectornav-msg:satraw :initial-element (cl:make-instance 'vectornav-msg:satraw))))
)

(cl:defclass rawmeas (<rawmeas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rawmeas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rawmeas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vectornav-msg:<rawmeas> is deprecated: use vectornav-msg:rawmeas instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:header-val is deprecated.  Use vectornav-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:tow-val is deprecated.  Use vectornav-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:week-val is deprecated.  Use vectornav-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'numSats-val :lambda-list '(m))
(cl:defmethod numSats-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:numSats-val is deprecated.  Use vectornav-msg:numSats instead.")
  (numSats m))

(cl:ensure-generic-function 'resv-val :lambda-list '(m))
(cl:defmethod resv-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:resv-val is deprecated.  Use vectornav-msg:resv instead.")
  (resv m))

(cl:ensure-generic-function 'satraws-val :lambda-list '(m))
(cl:defmethod satraws-val ((m <rawmeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:satraws-val is deprecated.  Use vectornav-msg:satraws instead.")
  (satraws m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rawmeas>) ostream)
  "Serializes a message object of type '<rawmeas>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resv)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satraws))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'satraws))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rawmeas>) istream)
  "Deserializes a message object of type '<rawmeas>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resv)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satraws) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satraws)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vectornav-msg:satraw))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rawmeas>)))
  "Returns string type for a message object of type '<rawmeas>"
  "vectornav/rawmeas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rawmeas)))
  "Returns string type for a message object of type 'rawmeas"
  "vectornav/rawmeas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rawmeas>)))
  "Returns md5sum for a message object of type '<rawmeas>"
  "ea95944c129482cc512d818090e6d878")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rawmeas)))
  "Returns md5sum for a message object of type 'rawmeas"
  "ea95944c129482cc512d818090e6d878")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rawmeas>)))
  "Returns full string definition for message of type '<rawmeas>"
  (cl:format cl:nil "std_msgs/Header       header~%float64               tow~%uint16                week~%uint8                 numSats~%uint8                 resv~%satraw[]              satraws~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vectornav/satraw~%uint8                sys~%uint8                svId~%uint8                freq~%uint8                chan~%int8                 slot~%uint8                cno~%uint16               flags~%float64              pr~%float64              cp~%float32              dp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rawmeas)))
  "Returns full string definition for message of type 'rawmeas"
  (cl:format cl:nil "std_msgs/Header       header~%float64               tow~%uint16                week~%uint8                 numSats~%uint8                 resv~%satraw[]              satraws~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vectornav/satraw~%uint8                sys~%uint8                svId~%uint8                freq~%uint8                chan~%int8                 slot~%uint8                cno~%uint16               flags~%float64              pr~%float64              cp~%float32              dp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rawmeas>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     2
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satraws) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rawmeas>))
  "Converts a ROS message object to a list"
  (cl:list 'rawmeas
    (cl:cons ':header (header msg))
    (cl:cons ':tow (tow msg))
    (cl:cons ':week (week msg))
    (cl:cons ':numSats (numSats msg))
    (cl:cons ':resv (resv msg))
    (cl:cons ':satraws (satraws msg))
))
