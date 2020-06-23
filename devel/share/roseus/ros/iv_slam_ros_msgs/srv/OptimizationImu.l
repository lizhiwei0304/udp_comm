;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::OptimizationImu)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'OptimizationImu (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMU")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMU"))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMUREQUEST")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMUREQUEST"))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMURESPONSE")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONIMURESPONSE"))

(in-package "ROS")





(defclass iv_slam_ros_msgs::OptimizationImuRequest
  :super ros::object
  :slots (_trajectory_id _time _linear_acceleration_x _linear_acceleration_y _linear_acceleration_z _angular_velocity_x _angular_velocity_y _angular_velocity_z ))

(defmethod iv_slam_ros_msgs::OptimizationImuRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    ((:time __time) 0.0)
    ((:linear_acceleration_x __linear_acceleration_x) 0.0)
    ((:linear_acceleration_y __linear_acceleration_y) 0.0)
    ((:linear_acceleration_z __linear_acceleration_z) 0.0)
    ((:angular_velocity_x __angular_velocity_x) 0.0)
    ((:angular_velocity_y __angular_velocity_y) 0.0)
    ((:angular_velocity_z __angular_velocity_z) 0.0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   (setq _time (float __time))
   (setq _linear_acceleration_x (float __linear_acceleration_x))
   (setq _linear_acceleration_y (float __linear_acceleration_y))
   (setq _linear_acceleration_z (float __linear_acceleration_z))
   (setq _angular_velocity_x (float __angular_velocity_x))
   (setq _angular_velocity_y (float __angular_velocity_y))
   (setq _angular_velocity_z (float __angular_velocity_z))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:linear_acceleration_x
   (&optional __linear_acceleration_x)
   (if __linear_acceleration_x (setq _linear_acceleration_x __linear_acceleration_x)) _linear_acceleration_x)
  (:linear_acceleration_y
   (&optional __linear_acceleration_y)
   (if __linear_acceleration_y (setq _linear_acceleration_y __linear_acceleration_y)) _linear_acceleration_y)
  (:linear_acceleration_z
   (&optional __linear_acceleration_z)
   (if __linear_acceleration_z (setq _linear_acceleration_z __linear_acceleration_z)) _linear_acceleration_z)
  (:angular_velocity_x
   (&optional __angular_velocity_x)
   (if __angular_velocity_x (setq _angular_velocity_x __angular_velocity_x)) _angular_velocity_x)
  (:angular_velocity_y
   (&optional __angular_velocity_y)
   (if __angular_velocity_y (setq _angular_velocity_y __angular_velocity_y)) _angular_velocity_y)
  (:angular_velocity_z
   (&optional __angular_velocity_z)
   (if __angular_velocity_z (setq _angular_velocity_z __angular_velocity_z)) _angular_velocity_z)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ;; float64 _time
    8
    ;; float64 _linear_acceleration_x
    8
    ;; float64 _linear_acceleration_y
    8
    ;; float64 _linear_acceleration_z
    8
    ;; float64 _angular_velocity_x
    8
    ;; float64 _angular_velocity_y
    8
    ;; float64 _angular_velocity_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_x
       (sys::poke _linear_acceleration_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_y
       (sys::poke _linear_acceleration_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_z
       (sys::poke _linear_acceleration_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_x
       (sys::poke _angular_velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_y
       (sys::poke _angular_velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_z
       (sys::poke _angular_velocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_x
     (setq _linear_acceleration_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_y
     (setq _linear_acceleration_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_z
     (setq _linear_acceleration_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_x
     (setq _angular_velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_y
     (setq _angular_velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_z
     (setq _angular_velocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::OptimizationImuResponse
  :super ros::object
  :slots ())

(defmethod iv_slam_ros_msgs::OptimizationImuResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::OptimizationImu
  :super ros::object
  :slots ())

(setf (get iv_slam_ros_msgs::OptimizationImu :md5sum-) "a9d47262566a779b3929228069472871")
(setf (get iv_slam_ros_msgs::OptimizationImu :datatype-) "iv_slam_ros_msgs/OptimizationImu")
(setf (get iv_slam_ros_msgs::OptimizationImu :request) iv_slam_ros_msgs::OptimizationImuRequest)
(setf (get iv_slam_ros_msgs::OptimizationImu :response) iv_slam_ros_msgs::OptimizationImuResponse)

(defmethod iv_slam_ros_msgs::OptimizationImuRequest
  (:response () (instance iv_slam_ros_msgs::OptimizationImuResponse :init)))

(setf (get iv_slam_ros_msgs::OptimizationImuRequest :md5sum-) "a9d47262566a779b3929228069472871")
(setf (get iv_slam_ros_msgs::OptimizationImuRequest :datatype-) "iv_slam_ros_msgs/OptimizationImuRequest")
(setf (get iv_slam_ros_msgs::OptimizationImuRequest :definition-)
      "int32 trajectory_id
float64 time
float64 linear_acceleration_x
float64 linear_acceleration_y
float64 linear_acceleration_z
float64 angular_velocity_x
float64 angular_velocity_y
float64 angular_velocity_z
---


")

(setf (get iv_slam_ros_msgs::OptimizationImuResponse :md5sum-) "a9d47262566a779b3929228069472871")
(setf (get iv_slam_ros_msgs::OptimizationImuResponse :datatype-) "iv_slam_ros_msgs/OptimizationImuResponse")
(setf (get iv_slam_ros_msgs::OptimizationImuResponse :definition-)
      "int32 trajectory_id
float64 time
float64 linear_acceleration_x
float64 linear_acceleration_y
float64 linear_acceleration_z
float64 angular_velocity_x
float64 angular_velocity_y
float64 angular_velocity_z
---


")



(provide :iv_slam_ros_msgs/OptimizationImu "a9d47262566a779b3929228069472871")


