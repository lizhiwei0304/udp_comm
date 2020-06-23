;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::FinishTrajectory)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'FinishTrajectory (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORY")
  (make-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORY"))
(unless (find-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORYREQUEST")
  (make-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORYREQUEST"))
(unless (find-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORYRESPONSE")
  (make-package "IV_SLAM_ROS_MSGS::FINISHTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass iv_slam_ros_msgs::FinishTrajectoryRequest
  :super ros::object
  :slots (_trajectory_id ))

(defmethod iv_slam_ros_msgs::FinishTrajectoryRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::FinishTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod iv_slam_ros_msgs::FinishTrajectoryResponse
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

(defclass iv_slam_ros_msgs::FinishTrajectory
  :super ros::object
  :slots ())

(setf (get iv_slam_ros_msgs::FinishTrajectory :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get iv_slam_ros_msgs::FinishTrajectory :datatype-) "iv_slam_ros_msgs/FinishTrajectory")
(setf (get iv_slam_ros_msgs::FinishTrajectory :request) iv_slam_ros_msgs::FinishTrajectoryRequest)
(setf (get iv_slam_ros_msgs::FinishTrajectory :response) iv_slam_ros_msgs::FinishTrajectoryResponse)

(defmethod iv_slam_ros_msgs::FinishTrajectoryRequest
  (:response () (instance iv_slam_ros_msgs::FinishTrajectoryResponse :init)))

(setf (get iv_slam_ros_msgs::FinishTrajectoryRequest :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get iv_slam_ros_msgs::FinishTrajectoryRequest :datatype-) "iv_slam_ros_msgs/FinishTrajectoryRequest")
(setf (get iv_slam_ros_msgs::FinishTrajectoryRequest :definition-)
      "
int32 trajectory_id
---

")

(setf (get iv_slam_ros_msgs::FinishTrajectoryResponse :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get iv_slam_ros_msgs::FinishTrajectoryResponse :datatype-) "iv_slam_ros_msgs/FinishTrajectoryResponse")
(setf (get iv_slam_ros_msgs::FinishTrajectoryResponse :definition-)
      "
int32 trajectory_id
---

")



(provide :iv_slam_ros_msgs/FinishTrajectory "6e190c4be941828bcd09ea05053f4bb5")


