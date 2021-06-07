
(cl:in-package :asdf)

(defsystem "imu_sequenced-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ImuSequenced" :depends-on ("_package_ImuSequenced"))
    (:file "_package_ImuSequenced" :depends-on ("_package"))
  ))