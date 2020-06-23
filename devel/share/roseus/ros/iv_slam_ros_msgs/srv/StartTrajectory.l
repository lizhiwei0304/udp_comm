;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::StartTrajectory)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'StartTrajectory (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORY")
  (make-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORY"))
(unless (find-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORYREQUEST")
  (make-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORYREQUEST"))
(unless (find-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORYRESPONSE")
  (make-package "IV_SLAM_ROS_MSGS::STARTTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass iv_slam_ros_msgs::StartTrajectoryRequest
  :super ros::object
  :slots (_options _topics ))

(defmethod iv_slam_ros_msgs::StartTrajectoryRequest
  (:init
   (&key
    ((:options __options) (instance iv_slam_ros_msgs::TrajectoryOptions :init))
    ((:topics __topics) (instance iv_slam_ros_msgs::SensorTopics :init))
    )
   (send-super :init)
   (setq _options __options)
   (setq _topics __topics)
   self)
  (:options
   (&rest __options)
   (if (keywordp (car __options))
       (send* _options __options)
     (progn
       (if __options (setq _options (car __options)))
       _options)))
  (:topics
   (&rest __topics)
   (if (keywordp (car __topics))
       (send* _topics __topics)
     (progn
       (if __topics (setq _topics (car __topics)))
       _topics)))
  (:serialization-length
   ()
   (+
    ;; iv_slam_ros_msgs/TrajectoryOptions _options
    (send _options :serialization-length)
    ;; iv_slam_ros_msgs/SensorTopics _topics
    (send _topics :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iv_slam_ros_msgs/TrajectoryOptions _options
       (send _options :serialize s)
     ;; iv_slam_ros_msgs/SensorTopics _topics
       (send _topics :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iv_slam_ros_msgs/TrajectoryOptions _options
     (send _options :deserialize buf ptr-) (incf ptr- (send _options :serialization-length))
   ;; iv_slam_ros_msgs/SensorTopics _topics
     (send _topics :deserialize buf ptr-) (incf ptr- (send _topics :serialization-length))
   ;;
   self)
  )

(defclass iv_slam_ros_msgs::StartTrajectoryResponse
  :super ros::object
  :slots (_trajectory_id ))

(defmethod iv_slam_ros_msgs::StartTrajectoryResponse
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

(defclass iv_slam_ros_msgs::StartTrajectory
  :super ros::object
  :slots ())

(setf (get iv_slam_ros_msgs::StartTrajectory :md5sum-) "b9252ad326a557addcb36e679f2c13e4")
(setf (get iv_slam_ros_msgs::StartTrajectory :datatype-) "iv_slam_ros_msgs/StartTrajectory")
(setf (get iv_slam_ros_msgs::StartTrajectory :request) iv_slam_ros_msgs::StartTrajectoryRequest)
(setf (get iv_slam_ros_msgs::StartTrajectory :response) iv_slam_ros_msgs::StartTrajectoryResponse)

(defmethod iv_slam_ros_msgs::StartTrajectoryRequest
  (:response () (instance iv_slam_ros_msgs::StartTrajectoryResponse :init)))

(setf (get iv_slam_ros_msgs::StartTrajectoryRequest :md5sum-) "b9252ad326a557addcb36e679f2c13e4")
(setf (get iv_slam_ros_msgs::StartTrajectoryRequest :datatype-) "iv_slam_ros_msgs/StartTrajectoryRequest")
(setf (get iv_slam_ros_msgs::StartTrajectoryRequest :definition-)
      "

iv_slam_ros_msgs/TrajectoryOptions options
iv_slam_ros_msgs/SensorTopics topics

================================================================================
MSG: iv_slam_ros_msgs/TrajectoryOptions

string tracking_frame
string published_frame
string odom_frame
bool provide_odom_frame
bool use_odometry
bool use_lidar_odometry_withgps
int32 num_laser_scans
int32 num_multi_echo_laser_scans
int32 num_subdivisions_per_laser_scan
int32 num_point_clouds
bool wiping_movingtaget

# This is a binary-encoded
# 'iv_slam.mapping.proto.TrajectoryBuilderOptions' proto.
string trajectory_builder_options_proto

================================================================================
MSG: iv_slam_ros_msgs/SensorTopics
string laser_scan_topic
string multi_echo_laser_scan_topic
string point_cloud2_topic
string imu_topic
string odometry_topic
string dynamicobject_topic
---
int32 trajectory_id

")

(setf (get iv_slam_ros_msgs::StartTrajectoryResponse :md5sum-) "b9252ad326a557addcb36e679f2c13e4")
(setf (get iv_slam_ros_msgs::StartTrajectoryResponse :datatype-) "iv_slam_ros_msgs/StartTrajectoryResponse")
(setf (get iv_slam_ros_msgs::StartTrajectoryResponse :definition-)
      "

iv_slam_ros_msgs/TrajectoryOptions options
iv_slam_ros_msgs/SensorTopics topics

================================================================================
MSG: iv_slam_ros_msgs/TrajectoryOptions

string tracking_frame
string published_frame
string odom_frame
bool provide_odom_frame
bool use_odometry
bool use_lidar_odometry_withgps
int32 num_laser_scans
int32 num_multi_echo_laser_scans
int32 num_subdivisions_per_laser_scan
int32 num_point_clouds
bool wiping_movingtaget

# This is a binary-encoded
# 'iv_slam.mapping.proto.TrajectoryBuilderOptions' proto.
string trajectory_builder_options_proto

================================================================================
MSG: iv_slam_ros_msgs/SensorTopics
string laser_scan_topic
string multi_echo_laser_scan_topic
string point_cloud2_topic
string imu_topic
string odometry_topic
string dynamicobject_topic
---
int32 trajectory_id

")



(provide :iv_slam_ros_msgs/StartTrajectory "b9252ad326a557addcb36e679f2c13e4")


