
(cl:in-package :asdf)

(defsystem "xsh_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "speed_plan" :depends-on ("_package_speed_plan"))
    (:file "_package_speed_plan" :depends-on ("_package"))
  ))