
(cl:in-package :asdf)

(defsystem "speed_ctrl_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "speed_ctrl" :depends-on ("_package_speed_ctrl"))
    (:file "_package_speed_ctrl" :depends-on ("_package"))
  ))