
(cl:in-package :asdf)

(defsystem "delphi_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RadarDetection" :depends-on ("_package_RadarDetection"))
    (:file "_package_RadarDetection" :depends-on ("_package"))
  ))