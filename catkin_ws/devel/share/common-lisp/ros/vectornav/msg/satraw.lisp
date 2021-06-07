; Auto-generated. Do not edit!


(cl:in-package vectornav-msg)


;//! \htmlinclude satraw.msg.html

(cl:defclass <satraw> (roslisp-msg-protocol:ros-message)
  ((sys
    :reader sys
    :initarg :sys
    :type cl:fixnum
    :initform 0)
   (svId
    :reader svId
    :initarg :svId
    :type cl:fixnum
    :initform 0)
   (freq
    :reader freq
    :initarg :freq
    :type cl:fixnum
    :initform 0)
   (chan
    :reader chan
    :initarg :chan
    :type cl:fixnum
    :initform 0)
   (slot
    :reader slot
    :initarg :slot
    :type cl:fixnum
    :initform 0)
   (cno
    :reader cno
    :initarg :cno
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (pr
    :reader pr
    :initarg :pr
    :type cl:float
    :initform 0.0)
   (cp
    :reader cp
    :initarg :cp
    :type cl:float
    :initform 0.0)
   (dp
    :reader dp
    :initarg :dp
    :type cl:float
    :initform 0.0))
)

(cl:defclass satraw (<satraw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <satraw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'satraw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vectornav-msg:<satraw> is deprecated: use vectornav-msg:satraw instead.")))

(cl:ensure-generic-function 'sys-val :lambda-list '(m))
(cl:defmethod sys-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:sys-val is deprecated.  Use vectornav-msg:sys instead.")
  (sys m))

(cl:ensure-generic-function 'svId-val :lambda-list '(m))
(cl:defmethod svId-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:svId-val is deprecated.  Use vectornav-msg:svId instead.")
  (svId m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:freq-val is deprecated.  Use vectornav-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'chan-val :lambda-list '(m))
(cl:defmethod chan-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:chan-val is deprecated.  Use vectornav-msg:chan instead.")
  (chan m))

(cl:ensure-generic-function 'slot-val :lambda-list '(m))
(cl:defmethod slot-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:slot-val is deprecated.  Use vectornav-msg:slot instead.")
  (slot m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:cno-val is deprecated.  Use vectornav-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:flags-val is deprecated.  Use vectornav-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'pr-val :lambda-list '(m))
(cl:defmethod pr-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:pr-val is deprecated.  Use vectornav-msg:pr instead.")
  (pr m))

(cl:ensure-generic-function 'cp-val :lambda-list '(m))
(cl:defmethod cp-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:cp-val is deprecated.  Use vectornav-msg:cp instead.")
  (cp m))

(cl:ensure-generic-function 'dp-val :lambda-list '(m))
(cl:defmethod dp-val ((m <satraw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vectornav-msg:dp-val is deprecated.  Use vectornav-msg:dp instead.")
  (dp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <satraw>) ostream)
  "Serializes a message object of type '<satraw>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chan)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'slot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cno)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <satraw>) istream)
  "Deserializes a message object of type '<satraw>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chan)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'slot) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cno)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<satraw>)))
  "Returns string type for a message object of type '<satraw>"
  "vectornav/satraw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'satraw)))
  "Returns string type for a message object of type 'satraw"
  "vectornav/satraw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<satraw>)))
  "Returns md5sum for a message object of type '<satraw>"
  "edc0770899cab3f86653d0962a754099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'satraw)))
  "Returns md5sum for a message object of type 'satraw"
  "edc0770899cab3f86653d0962a754099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<satraw>)))
  "Returns full string definition for message of type '<satraw>"
  (cl:format cl:nil "uint8                sys~%uint8                svId~%uint8                freq~%uint8                chan~%int8                 slot~%uint8                cno~%uint16               flags~%float64              pr~%float64              cp~%float32              dp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'satraw)))
  "Returns full string definition for message of type 'satraw"
  (cl:format cl:nil "uint8                sys~%uint8                svId~%uint8                freq~%uint8                chan~%int8                 slot~%uint8                cno~%uint16               flags~%float64              pr~%float64              cp~%float32              dp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <satraw>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     2
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <satraw>))
  "Converts a ROS message object to a list"
  (cl:list 'satraw
    (cl:cons ':sys (sys msg))
    (cl:cons ':svId (svId msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':chan (chan msg))
    (cl:cons ':slot (slot msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':pr (pr msg))
    (cl:cons ':cp (cp msg))
    (cl:cons ':dp (dp msg))
))
