
(cl:in-package :asdf)

(defsystem "iv_slam_ros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :iv_slam_ros_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "FinishTrajectory" :depends-on ("_package_FinishTrajectory"))
    (:file "_package_FinishTrajectory" :depends-on ("_package"))
    (:file "OptimizationImu" :depends-on ("_package_OptimizationImu"))
    (:file "_package_OptimizationImu" :depends-on ("_package"))
    (:file "OptimizationInsertResult" :depends-on ("_package_OptimizationInsertResult"))
    (:file "_package_OptimizationInsertResult" :depends-on ("_package"))
    (:file "StartTrajectory" :depends-on ("_package_StartTrajectory"))
    (:file "_package_StartTrajectory" :depends-on ("_package"))
    (:file "SubmapQuery" :depends-on ("_package_SubmapQuery"))
    (:file "_package_SubmapQuery" :depends-on ("_package"))
    (:file "WriteState" :depends-on ("_package_WriteState"))
    (:file "_package_WriteState" :depends-on ("_package"))
  ))