
(cl:in-package :asdf)

(defsystem "dymidetect2speed_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Dymipoint" :depends-on ("_package_Dymipoint"))
    (:file "_package_Dymipoint" :depends-on ("_package"))
    (:file "Dymipoints" :depends-on ("_package_Dymipoints"))
    (:file "_package_Dymipoints" :depends-on ("_package"))
    (:file "dymicol_point" :depends-on ("_package_dymicol_point"))
    (:file "_package_dymicol_point" :depends-on ("_package"))
  ))