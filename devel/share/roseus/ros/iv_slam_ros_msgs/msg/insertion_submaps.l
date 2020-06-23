;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::insertion_submaps)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'insertion_submaps (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::INSERTION_SUBMAPS")
  (make-package "IV_SLAM_ROS_MSGS::INSERTION_SUBMAPS"))

(in-package "ROS")
;;//! \htmlinclude insertion_submaps.msg.html


(defclass iv_slam_ros_msgs::insertion_submaps
  :super ros::object
  :slots (_num_submap _submap ))

(defmethod iv_slam_ros_msgs::insertion_submaps
  (:init
   (&key
    ((:num_submap __num_submap) 0)
    ((:submap __submap) (let (r) (dotimes (i 0) (push (instance iv_slam_ros_msgs::SubmapIndex :init) r)) r))
    )
   (send-super :init)
   (setq _num_submap (round __num_submap))
   (setq _submap __submap)
   self)
  (:num_submap
   (&optional __num_submap)
   (if __num_submap (setq _num_submap __num_submap)) _num_submap)
  (:submap
   (&rest __submap)
   (if (keywordp (car __submap))
       (send* _submap __submap)
     (progn
       (if __submap (setq _submap (car __submap)))
       _submap)))
  (:serialization-length
   ()
   (+
    ;; int32 _num_submap
    4
    ;; iv_slam_ros_msgs/SubmapIndex[] _submap
    (apply #'+ (send-all _submap :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_submap
       (write-long _num_submap s)
     ;; iv_slam_ros_msgs/SubmapIndex[] _submap
     (write-long (length _submap) s)
     (dolist (elem _submap)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_submap
     (setq _num_submap (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; iv_slam_ros_msgs/SubmapIndex[] _submap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _submap (let (r) (dotimes (i n) (push (instance iv_slam_ros_msgs::SubmapIndex :init) r)) r))
     (dolist (elem- _submap)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iv_slam_ros_msgs::insertion_submaps :md5sum-) "b4554e58a1354197bd7aaa4c53aabdba")
(setf (get iv_slam_ros_msgs::insertion_submaps :datatype-) "iv_slam_ros_msgs/insertion_submaps")
(setf (get iv_slam_ros_msgs::insertion_submaps :definition-)
      "int32 num_submap
SubmapIndex[] submap

================================================================================
MSG: iv_slam_ros_msgs/SubmapIndex
int32 trajectory_id
int32 submap_index
bool finishflag
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :iv_slam_ros_msgs/insertion_submaps "b4554e58a1354197bd7aaa4c53aabdba")


