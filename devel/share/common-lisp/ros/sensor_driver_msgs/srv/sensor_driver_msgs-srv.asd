
(cl:in-package :asdf)

(defsystem "sensor_driver_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "startconfig" :depends-on ("_package_startconfig"))
    (:file "_package_startconfig" :depends-on ("_package"))
  ))