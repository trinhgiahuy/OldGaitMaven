; Auto-generated. Do not edit!


(cl:in-package vectornav-msg)


;//! \htmlinclude imugps.msg.html

(cl:defclass <imugps> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (LLA
    :reader LLA
    :initarg :LLA
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (nedvel
    :reader nedvel
    :initarg :nedvel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dtime
    :reader dtime
    :initarg :dtime
    :type cl:float
    :initform 0.0)
   (dtheta
    :reader dtheta
    :initarg :dtheta
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (dvel
    :reader dvel
    :initarg :dvel
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (fix
    :reader fix
    :initarg :fix
    :type cl:fixnum
    :initform 0)
   (gpsLLA
    :reader gpsLLA
    :initarg :gpsLLA
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gpsnedvel
    :reader gpsnedvel
    :initarg :gpsnedvel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass imugps (<imugps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imugps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imugps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vectornav-msg:<imugps> is deprecated: use vectornav-msg:imugps instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:header-val is deprecated.  Use vectornav-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:time-val is deprecated.  Use vectornav-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:orientation-val is deprecated.  Use vectornav-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:angular_velocity-val is deprecated.  Use vectornav-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'LLA-val :lambda-list '(m))
(cl:defmethod LLA-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:LLA-val is deprecated.  Use vectornav-msg:LLA instead.")
  (LLA m))

(cl:ensure-generic-function 'nedvel-val :lambda-list '(m))
(cl:defmethod nedvel-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:nedvel-val is deprecated.  Use vectornav-msg:nedvel instead.")
  (nedvel m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:linear_acceleration-val is deprecated.  Use vectornav-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'dtime-val :lambda-list '(m))
(cl:defmethod dtime-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:dtime-val is deprecated.  Use vectornav-msg:dtime instead.")
  (dtime m))

(cl:ensure-generic-function 'dtheta-val :lambda-list '(m))
(cl:defmethod dtheta-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:dtheta-val is deprecated.  Use vectornav-msg:dtheta instead.")
  (dtheta m))

(cl:ensure-generic-function 'dvel-val :lambda-list '(m))
(cl:defmethod dvel-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:dvel-val is deprecated.  Use vectornav-msg:dvel instead.")
  (dvel m))

(cl:ensure-generic-function 'fix-val :lambda-list '(m))
(cl:defmethod fix-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:fix-val is deprecated.  Use vectornav-msg:fix instead.")
  (fix m))

(cl:ensure-generic-function 'gpsLLA-val :lambda-list '(m))
(cl:defmethod gpsLLA-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:gpsLLA-val is deprecated.  Use vectornav-msg:gpsLLA instead.")
  (gpsLLA m))

(cl:ensure-generic-function 'gpsnedvel-val :lambda-list '(m))
(cl:defmethod gpsnedvel-val ((m <imugps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:gpsnedvel-val is deprecated.  Use vectornav-msg:gpsnedvel instead.")
  (gpsnedvel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imugps>) ostream)
  "Serializes a message object of type '<imugps>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LLA) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nedvel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dtime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dtheta))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dvel))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsLLA) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsnedvel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imugps>) istream)
  "Deserializes a message object of type '<imugps>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LLA) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nedvel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dtime) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'dtheta) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'dtheta)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'dvel) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'dvel)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsLLA) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsnedvel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imugps>)))
  "Returns string type for a message object of type '<imugps>"
  "vectornav/imugps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imugps)))
  "Returns string type for a message object of type 'imugps"
  "vectornav/imugps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imugps>)))
  "Returns md5sum for a message object of type '<imugps>"
  "0bcb092f31dba2c7e0aa5e8d136d895c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imugps)))
  "Returns md5sum for a message object of type 'imugps"
  "0bcb092f31dba2c7e0aa5e8d136d895c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imugps>)))
  "Returns full string definition for message of type '<imugps>"
  (cl:format cl:nil "std_msgs/Header       header~%uint64               time~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 LLA~%geometry_msgs/Vector3 nedvel~%geometry_msgs/Vector3 linear_acceleration~%float32               dtime~%float32[3]            dtheta~%float32[3]            dvel~%uint8                 fix~%geometry_msgs/Vector3 gpsLLA~%geometry_msgs/Vector3 gpsnedvel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imugps)))
  "Returns full string definition for message of type 'imugps"
  (cl:format cl:nil "std_msgs/Header       header~%uint64               time~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 LLA~%geometry_msgs/Vector3 nedvel~%geometry_msgs/Vector3 linear_acceleration~%float32               dtime~%float32[3]            dtheta~%float32[3]            dvel~%uint8                 fix~%geometry_msgs/Vector3 gpsLLA~%geometry_msgs/Vector3 gpsnedvel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imugps>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LLA))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nedvel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dtheta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dvel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsLLA))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsnedvel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imugps>))
  "Converts a ROS message object to a list"
  (cl:list 'imugps
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':LLA (LLA msg))
    (cl:cons ':nedvel (nedvel msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':dtime (dtime msg))
    (cl:cons ':dtheta (dtheta msg))
    (cl:cons ':dvel (dvel msg))
    (cl:cons ':fix (fix msg))
    (cl:cons ':gpsLLA (gpsLLA msg))
    (cl:cons ':gpsnedvel (gpsnedvel msg))
))
