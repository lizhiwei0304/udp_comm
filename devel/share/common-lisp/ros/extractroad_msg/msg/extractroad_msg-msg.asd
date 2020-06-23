
(cl:in-package :asdf)

(defsystem "extractroad_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "extractroad" :depends-on ("_package_extractroad"))
    (:file "_package_extractroad" :depends-on ("_package"))
  ))