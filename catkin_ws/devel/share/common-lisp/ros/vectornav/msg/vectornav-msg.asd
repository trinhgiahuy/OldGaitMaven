
(cl:in-package :asdf)

(defsystem "vectornav-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gps" :depends-on ("_package_gps"))
    (:file "_package_gps" :depends-on ("_package"))
    (:file "imugps" :depends-on ("_package_imugps"))
    (:file "_package_imugps" :depends-on ("_package"))
    (:file "ins" :depends-on ("_package_ins"))
    (:file "_package_ins" :depends-on ("_package"))
    (:file "rawmeas" :depends-on ("_package_rawmeas"))
    (:file "_package_rawmeas" :depends-on ("_package"))
    (:file "satraw" :depends-on ("_package_satraw"))
    (:file "_package_satraw" :depends-on ("_package"))
    (:file "sensors" :depends-on ("_package_sensors"))
    (:file "_package_sensors" :depends-on ("_package"))
    (:file "utc_time" :depends-on ("_package_utc_time"))
    (:file "_package_utc_time" :depends-on ("_package"))
  ))