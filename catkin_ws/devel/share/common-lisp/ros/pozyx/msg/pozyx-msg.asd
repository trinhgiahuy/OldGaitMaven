
(cl:in-package :asdf)

(defsystem "pozyx-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StringStamped" :depends-on ("_package_StringStamped"))
    (:file "_package_StringStamped" :depends-on ("_package"))
  ))