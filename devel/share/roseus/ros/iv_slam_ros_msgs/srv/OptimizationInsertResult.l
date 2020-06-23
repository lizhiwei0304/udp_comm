;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::OptimizationInsertResult)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'OptimizationInsertResult (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULT")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULT"))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULTREQUEST")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULTREQUEST"))
(unless (find-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULTRESPONSE")
  (make-package "IV_SLAM_ROS_MSGS::OPTIMIZATIONINSERTRESULTRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass iv_slam_ros_msgs::OptimizationInsertResultRequest
  :super ros::object
  :slots (_trajectory_id _time _file_time_name _num_submap _range_data_pose _insertion_result _current_range_data_index ))

(defmethod iv_slam_ros_msgs::OptimizationInsertResultRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    ((:time __time) 0.0)
    ((:file_time_name __file_time_name) "")
    ((:num_submap __num_submap) 0)
    ((:range_data_pose __range_data_pose) (instance nav_msgs::Odometry :init))
    ((:insertion_result __insertion_result) (instance iv_slam_ros_msgs::insertion_submaps :init))
    ((:current_range_data_index __current_range_data_index) 0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   (setq _time (float __time))
   (setq _file_time_name (string __file_time_name))
   (setq _num_submap (round __num_submap))
   (setq _range_data_pose __range_data_pose)
   (setq _insertion_result __insertion_result)
   (setq _current_range_data_index (round __current_range_data_index))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:file_time_name
   (&optional __file_time_name)
   (if __file_time_name (setq _file_time_name __file_time_name)) _file_time_name)
  (:num_submap
   (&optional __num_submap)
   (if __num_submap (setq _num_submap __num_submap)) _num_submap)
  (:range_data_pose
   (&rest __range_data_pose)
   (if (keywordp (car __range_data_pose))
       (send* _range_data_pose __range_data_pose)
     (progn
       (if __range_data_pose (setq _range_data_pose (car __range_data_pose)))
       _range_data_pose)))
  (:insertion_result
   (&rest __insertion_result)
   (if (keywordp (car __insertion_result))
       (send* _insertion_result __insertion_result)
     (progn
       (if __insertion_result (setq _insertion_result (car __insertion_result)))
       _insertion_result)))
  (:current_range_data_index
   (&optional __current_range_data_index)
   (if __current_range_data_index (setq _current_range_data_index __current_range_data_index)) _current_range_data_index)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ;; float64 _time
    8
    ;; string _file_time_name
    4 (length _file_time_name)
    ;; int32 _num_submap
    4
    ;; nav_msgs/Odometry _range_data_pose
    (send _range_data_pose :serialization-length)
    ;; iv_slam_ros_msgs/insertion_submaps _insertion_result
    (send _insertion_result :serialization-length)
    ;; int32 _current_range_data_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _file_time_name
       (write-long (length _file_time_name) s) (princ _file_time_name s)
     ;; int32 _num_submap
       (write-long _num_submap s)
     ;; nav_msgs/Odometry _range_data_pose
       (send _range_data_pose :serialize s)
     ;; iv_slam_ros_msgs/insertion_submaps _insertion_result
       (send _insertion_result :serialize s)
     ;; int32 _current_range_data_index
       (write-long _current_range_data_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _file_time_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_time_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _num_submap
     (setq _num_submap (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_msgs/Odometry _range_data_pose
     (send _range_data_pose :deserialize buf ptr-) (incf ptr- (send _range_data_pose :serialization-length))
   ;; iv_slam_ros_msgs/insertion_submaps _insertion_result
     (send _insertion_result :deserialize buf ptr-) (incf ptr- (send _insertion_result :serialization-length))
   ;; int32 _current_range_data_index
     (setq _current_range_data_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::OptimizationInsertResultResponse
  :super ros::object
  :slots ())

(defmethod iv_slam_ros_msgs::OptimizationInsertResultResponse
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

(defclass iv_slam_ros_msgs::OptimizationInsertResult
  :super ros::object
  :slots ())

(setf (get iv_slam_ros_msgs::OptimizationInsertResult :md5sum-) "2318c3eba77c1405411d17648da8e4ec")
(setf (get iv_slam_ros_msgs::OptimizationInsertResult :datatype-) "iv_slam_ros_msgs/OptimizationInsertResult")
(setf (get iv_slam_ros_msgs::OptimizationInsertResult :request) iv_slam_ros_msgs::OptimizationInsertResultRequest)
(setf (get iv_slam_ros_msgs::OptimizationInsertResult :response) iv_slam_ros_msgs::OptimizationInsertResultResponse)

(defmethod iv_slam_ros_msgs::OptimizationInsertResultRequest
  (:response () (instance iv_slam_ros_msgs::OptimizationInsertResultResponse :init)))

(setf (get iv_slam_ros_msgs::OptimizationInsertResultRequest :md5sum-) "2318c3eba77c1405411d17648da8e4ec")
(setf (get iv_slam_ros_msgs::OptimizationInsertResultRequest :datatype-) "iv_slam_ros_msgs/OptimizationInsertResultRequest")
(setf (get iv_slam_ros_msgs::OptimizationInsertResultRequest :definition-)
      "int32 trajectory_id
float64 time
string file_time_name
int32 num_submap
nav_msgs/Odometry range_data_pose
insertion_submaps insertion_result
int32 current_range_data_index

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: iv_slam_ros_msgs/insertion_submaps
int32 num_submap
SubmapIndex[] submap

================================================================================
MSG: iv_slam_ros_msgs/SubmapIndex
int32 trajectory_id
int32 submap_index
bool finishflag
geometry_msgs/Pose pose
---


")

(setf (get iv_slam_ros_msgs::OptimizationInsertResultResponse :md5sum-) "2318c3eba77c1405411d17648da8e4ec")
(setf (get iv_slam_ros_msgs::OptimizationInsertResultResponse :datatype-) "iv_slam_ros_msgs/OptimizationInsertResultResponse")
(setf (get iv_slam_ros_msgs::OptimizationInsertResultResponse :definition-)
      "int32 trajectory_id
float64 time
string file_time_name
int32 num_submap
nav_msgs/Odometry range_data_pose
insertion_submaps insertion_result
int32 current_range_data_index

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: iv_slam_ros_msgs/insertion_submaps
int32 num_submap
SubmapIndex[] submap

================================================================================
MSG: iv_slam_ros_msgs/SubmapIndex
int32 trajectory_id
int32 submap_index
bool finishflag
geometry_msgs/Pose pose
---


")



(provide :iv_slam_ros_msgs/OptimizationInsertResult "2318c3eba77c1405411d17648da8e4ec")


