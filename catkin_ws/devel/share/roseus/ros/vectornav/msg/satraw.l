;; Auto-generated. Do not edit!


(when (boundp 'vectornav::satraw)
  (if (not (find-package "VECTORNAV"))
    (make-package "VECTORNAV"))
  (shadow 'satraw (find-package "VECTORNAV")))
(unless (find-package "VECTORNAV::SATRAW")
  (make-package "VECTORNAV::SATRAW"))

(in-package "ROS")
;;//! \htmlinclude satraw.msg.html


(defclass vectornav::satraw
  :super ros::object
  :slots (_sys _svId _freq _chan _slot _cno _flags _pr _cp _dp ))

(defmethod vectornav::satraw
  (:init
   (&key
    ((:sys __sys) 0)
    ((:svId __svId) 0)
    ((:freq __freq) 0)
    ((:chan __chan) 0)
    ((:slot __slot) 0)
    ((:cno __cno) 0)
    ((:flags __flags) 0)
    ((:pr __pr) 0.0)
    ((:cp __cp) 0.0)
    ((:dp __dp) 0.0)
    )
   (send-super :init)
   (setq _sys (round __sys))
   (setq _svId (round __svId))
   (setq _freq (round __freq))
   (setq _chan (round __chan))
   (setq _slot (round __slot))
   (setq _cno (round __cno))
   (setq _flags (round __flags))
   (setq _pr (float __pr))
   (setq _cp (float __cp))
   (setq _dp (float __dp))
   self)
  (:sys
   (&optional __sys)
   (if __sys (setq _sys __sys)) _sys)
  (:svId
   (&optional __svId)
   (if __svId (setq _svId __svId)) _svId)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:chan
   (&optional __chan)
   (if __chan (setq _chan __chan)) _chan)
  (:slot
   (&optional __slot)
   (if __slot (setq _slot __slot)) _slot)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:pr
   (&optional __pr)
   (if __pr (setq _pr __pr)) _pr)
  (:cp
   (&optional __cp)
   (if __cp (setq _cp __cp)) _cp)
  (:dp
   (&optional __dp)
   (if __dp (setq _dp __dp)) _dp)
  (:serialization-length
   ()
   (+
    ;; uint8 _sys
    1
    ;; uint8 _svId
    1
    ;; uint8 _freq
    1
    ;; uint8 _chan
    1
    ;; int8 _slot
    1
    ;; uint8 _cno
    1
    ;; uint16 _flags
    2
    ;; float64 _pr
    8
    ;; float64 _cp
    8
    ;; float32 _dp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sys
       (write-byte _sys s)
     ;; uint8 _svId
       (write-byte _svId s)
     ;; uint8 _freq
       (write-byte _freq s)
     ;; uint8 _chan
       (write-byte _chan s)
     ;; int8 _slot
       (write-byte _slot s)
     ;; uint8 _cno
       (write-byte _cno s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; float64 _pr
       (sys::poke _pr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cp
       (sys::poke _cp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _dp
       (sys::poke _dp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sys
     (setq _sys (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svId
     (setq _svId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _freq
     (setq _freq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chan
     (setq _chan (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _slot
     (setq _slot (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _slot 127) (setq _slot (- _slot 256)))
   ;; uint8 _cno
     (setq _cno (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _pr
     (setq _pr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cp
     (setq _cp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _dp
     (setq _dp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vectornav::satraw :md5sum-) "edc0770899cab3f86653d0962a754099")
(setf (get vectornav::satraw :datatype-) "vectornav/satraw")
(setf (get vectornav::satraw :definition-)
      "uint8                sys
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



(provide :vectornav/satraw "edc0770899cab3f86653d0962a754099")


