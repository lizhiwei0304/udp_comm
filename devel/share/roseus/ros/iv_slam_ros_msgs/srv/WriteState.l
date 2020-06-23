;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::WriteState)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'WriteState (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::WRITESTATE")
  (make-package "IV_SLAM_ROS_MSGS::WRITESTATE"))
(unless (find-package "IV_SLAM_ROS_MSGS::WRITESTATEREQUEST")
  (make-package "IV_SLAM_ROS_MSGS::WRITESTATEREQUEST"))
(unless (find-package "IV_SLAM_ROS_MSGS::WRITESTATERESPONSE")
  (make-package "IV_SLAM_ROS_MSGS::WRITESTATERESPONSE"))

(in-package "ROS")





(defclass iv_slam_ros_msgs::WriteStateRequest
  :super ros::object
  :slots (_filename ))

(defmethod iv_slam_ros_msgs::WriteStateRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::WriteStateResponse
  :super ros::object
  :slots ())

(defmethod iv_slam_ros_msgs::WriteStateResponse
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

(defclass iv_slam_ros_msgs::WriteState
  :super ros::object
  :slots ())

(setf (get iv_slam_ros_msgs::WriteState :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get iv_slam_ros_msgs::WriteState :datatype-) "iv_slam_ros_msgs/WriteState")
(setf (get iv_slam_ros_msgs::WriteState :request) iv_slam_ros_msgs::WriteStateRequest)
(setf (get iv_slam_ros_msgs::WriteState :response) iv_slam_ros_msgs::WriteStateResponse)

(defmethod iv_slam_ros_msgs::WriteStateRequest
  (:response () (instance iv_slam_ros_msgs::WriteStateResponse :init)))

(setf (get iv_slam_ros_msgs::WriteStateRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get iv_slam_ros_msgs::WriteStateRequest :datatype-) "iv_slam_ros_msgs/WriteStateRequest")
(setf (get iv_slam_ros_msgs::WriteStateRequest :definition-)
      "

string filename
---

")

(setf (get iv_slam_ros_msgs::WriteStateResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get iv_slam_ros_msgs::WriteStateResponse :datatype-) "iv_slam_ros_msgs/WriteStateResponse")
(setf (get iv_slam_ros_msgs::WriteStateResponse :definition-)
      "

string filename
---

")



(provide :iv_slam_ros_msgs/WriteState "030824f52a0628ead956fb9d67e66ae9")


