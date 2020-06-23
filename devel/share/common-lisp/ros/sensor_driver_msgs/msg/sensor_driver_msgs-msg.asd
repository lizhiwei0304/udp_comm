
(cl:in-package :asdf)

(defsystem "sensor_driver_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ECUData" :depends-on ("_package_ECUData"))
    (:file "_package_ECUData" :depends-on ("_package"))
    (:file "GpswithHeading" :depends-on ("_package_GpswithHeading"))
    (:file "_package_GpswithHeading" :depends-on ("_package"))
    (:file "GpswithTime" :depends-on ("_package_GpswithTime"))
    (:file "_package_GpswithTime" :depends-on ("_package"))
    (:file "InsVelocity" :depends-on ("_package_InsVelocity"))
    (:file "_package_InsVelocity" :depends-on ("_package"))
    (:file "OdometrywithGps" :depends-on ("_package_OdometrywithGps"))
    (:file "_package_OdometrywithGps" :depends-on ("_package"))
    (:file "PointCloudMultiLaser" :depends-on ("_package_PointCloudMultiLaser"))
    (:file "_package_PointCloudMultiLaser" :depends-on ("_package"))
    (:file "PointCloudMultiLidar" :depends-on ("_package_PointCloudMultiLidar"))
    (:file "_package_PointCloudMultiLidar" :depends-on ("_package"))
    (:file "Points" :depends-on ("_package_Points"))
    (:file "_package_Points" :depends-on ("_package"))
    (:file "Rectangle" :depends-on ("_package_Rectangle"))
    (:file "_package_Rectangle" :depends-on ("_package"))
    (:file "TargetCar" :depends-on ("_package_TargetCar"))
    (:file "_package_TargetCar" :depends-on ("_package"))
    (:file "moving_target" :depends-on ("_package_moving_target"))
    (:file "_package_moving_target" :depends-on ("_package"))
    (:file "moving_target_send" :depends-on ("_package_moving_target_send"))
    (:file "_package_moving_target_send" :depends-on ("_package"))
  ))