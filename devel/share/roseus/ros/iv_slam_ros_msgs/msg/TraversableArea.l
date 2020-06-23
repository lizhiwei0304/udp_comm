;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::TraversableArea)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'TraversableArea (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::TRAVERSABLEAREA")
  (make-package "IV_SLAM_ROS_MSGS::TRAVERSABLEAREA"))

(in-package "ROS")
;;//! \htmlinclude TraversableArea.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iv_slam_ros_msgs::TraversableArea
  :super ros::object
  :slots (_header _index _width _height _triD_submap_pose_image_index_x _triD_submap_pose_image_index_y _resolution _triD_submap_pose _cells _submap_finished_flag ))

(defmethod iv_slam_ros_msgs::TraversableArea
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:index __index) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:triD_submap_pose_image_index_x __triD_submap_pose_image_index_x) 0)
    ((:triD_submap_pose_image_index_y __triD_submap_pose_image_index_y) 0)
    ((:resolution __resolution) 0.0)
    ((:triD_submap_pose __triD_submap_pose) (instance geometry_msgs::Pose :init))
    ((:cells __cells) (make-array 0 :initial-element 0 :element-type :char))
    ((:submap_finished_flag __submap_finished_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _index (round __index))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _triD_submap_pose_image_index_x (round __triD_submap_pose_image_index_x))
   (setq _triD_submap_pose_image_index_y (round __triD_submap_pose_image_index_y))
   (setq _resolution (float __resolution))
   (setq _triD_submap_pose __triD_submap_pose)
   (setq _cells __cells)
   (setq _submap_finished_flag __submap_finished_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:triD_submap_pose_image_index_x
   (&optional __triD_submap_pose_image_index_x)
   (if __triD_submap_pose_image_index_x (setq _triD_submap_pose_image_index_x __triD_submap_pose_image_index_x)) _triD_submap_pose_image_index_x)
  (:triD_submap_pose_image_index_y
   (&optional __triD_submap_pose_image_index_y)
   (if __triD_submap_pose_image_index_y (setq _triD_submap_pose_image_index_y __triD_submap_pose_image_index_y)) _triD_submap_pose_image_index_y)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:triD_submap_pose
   (&rest __triD_submap_pose)
   (if (keywordp (car __triD_submap_pose))
       (send* _triD_submap_pose __triD_submap_pose)
     (progn
       (if __triD_submap_pose (setq _triD_submap_pose (car __triD_submap_pose)))
       _triD_submap_pose)))
  (:cells
   (&optional __cells)
   (if __cells (setq _cells __cells)) _cells)
  (:submap_finished_flag
   (&optional __submap_finished_flag)
   (if __submap_finished_flag (setq _submap_finished_flag __submap_finished_flag)) _submap_finished_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _index
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _triD_submap_pose_image_index_x
    4
    ;; int32 _triD_submap_pose_image_index_y
    4
    ;; float64 _resolution
    8
    ;; geometry_msgs/Pose _triD_submap_pose
    (send _triD_submap_pose :serialization-length)
    ;; uint8[] _cells
    (* 1    (length _cells)) 4
    ;; bool _submap_finished_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _index
       (write-long _index s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _triD_submap_pose_image_index_x
       (write-long _triD_submap_pose_image_index_x s)
     ;; int32 _triD_submap_pose_image_index_y
       (write-long _triD_submap_pose_image_index_y s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _triD_submap_pose
       (send _triD_submap_pose :serialize s)
     ;; uint8[] _cells
     (write-long (length _cells) s)
     (princ _cells s)
     ;; bool _submap_finished_flag
       (if _submap_finished_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _triD_submap_pose_image_index_x
     (setq _triD_submap_pose_image_index_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _triD_submap_pose_image_index_y
     (setq _triD_submap_pose_image_index_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _triD_submap_pose
     (send _triD_submap_pose :deserialize buf ptr-) (incf ptr- (send _triD_submap_pose :serialization-length))
   ;; uint8[] _cells
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cells (make-array n :element-type :char))
     (replace _cells buf :start2 ptr-) (incf ptr- n))
   ;; bool _submap_finished_flag
     (setq _submap_finished_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iv_slam_ros_msgs::TraversableArea :md5sum-) "3bd22d70c3beb576bea82709772a91a7")
(setf (get iv_slam_ros_msgs::TraversableArea :datatype-) "iv_slam_ros_msgs/TraversableArea")
(setf (get iv_slam_ros_msgs::TraversableArea :definition-)
      "
std_msgs/Header header
int32 index
int32 width
int32 height
int32 triD_submap_pose_image_index_x
int32 triD_submap_pose_image_index_y
float64 resolution
geometry_msgs/Pose triD_submap_pose
uint8[] cells
bool submap_finished_flag

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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



(provide :iv_slam_ros_msgs/TraversableArea "3bd22d70c3beb576bea82709772a91a7")


