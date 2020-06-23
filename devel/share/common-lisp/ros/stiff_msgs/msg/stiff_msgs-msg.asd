
(cl:in-package :asdf)

(defsystem "stiff_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "stiffwater" :depends-on ("_package_stiffwater"))
    (:file "_package_stiffwater" :depends-on ("_package"))
  ))