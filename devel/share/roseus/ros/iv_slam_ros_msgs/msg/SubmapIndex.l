;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::SubmapIndex)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'SubmapIndex (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::SUBMAPINDEX")
  (make-package "IV_SLAM_ROS_MSGS::SUBMAPINDEX"))

(in-package "ROS")
;;//! \htmlinclude SubmapIndex.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iv_slam_ros_msgs::SubmapIndex
  :super ros::object
  :slots (_trajectory_id _submap_index _finishflag _pose ))

(defmethod iv_slam_ros_msgs::SubmapIndex
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    ((:submap_index __submap_index) 0)
    ((:finishflag __finishflag) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   (setq _submap_index (round __submap_index))
   (setq _finishflag __finishflag)
   (setq _pose __pose)
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:submap_index
   (&optional __submap_index)
   (if __submap_index (setq _submap_index __submap_index)) _submap_index)
  (:finishflag
   (&optional __finishflag)
   (if __finishflag (setq _finishflag __finishflag)) _finishflag)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ;; int32 _submap_index
    4
    ;; bool _finishflag
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;; int32 _submap_index
       (write-long _submap_index s)
     ;; bool _finishflag
       (if _finishflag (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_index
     (setq _submap_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _finishflag
     (setq _finishflag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get iv_slam_ros_msgs::SubmapIndex :md5sum-) "85548cba5025a815b152574d9b381c6d")
(setf (get iv_slam_ros_msgs::SubmapIndex :datatype-) "iv_slam_ros_msgs/SubmapIndex")
(setf (get iv_slam_ros_msgs::SubmapIndex :definition-)
      "int32 trajectory_id
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



(provide :iv_slam_ros_msgs/SubmapIndex "85548cba5025a815b152574d9b381c6d")


