;; Auto-generated. Do not edit!


(when (boundp 'iv_slam_ros_msgs::TrajectoryOptions)
  (if (not (find-package "IV_SLAM_ROS_MSGS"))
    (make-package "IV_SLAM_ROS_MSGS"))
  (shadow 'TrajectoryOptions (find-package "IV_SLAM_ROS_MSGS")))
(unless (find-package "IV_SLAM_ROS_MSGS::TRAJECTORYOPTIONS")
  (make-package "IV_SLAM_ROS_MSGS::TRAJECTORYOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryOptions.msg.html


(defclass iv_slam_ros_msgs::TrajectoryOptions
  :super ros::object
  :slots (_tracking_frame _published_frame _odom_frame _provide_odom_frame _use_odometry _use_lidar_odometry_withgps _num_laser_scans _num_multi_echo_laser_scans _num_subdivisions_per_laser_scan _num_point_clouds _wiping_movingtaget _trajectory_builder_options_proto ))

(defmethod iv_slam_ros_msgs::TrajectoryOptions
  (:init
   (&key
    ((:tracking_frame __tracking_frame) "")
    ((:published_frame __published_frame) "")
    ((:odom_frame __odom_frame) "")
    ((:provide_odom_frame __provide_odom_frame) nil)
    ((:use_odometry __use_odometry) nil)
    ((:use_lidar_odometry_withgps __use_lidar_odometry_withgps) nil)
    ((:num_laser_scans __num_laser_scans) 0)
    ((:num_multi_echo_laser_scans __num_multi_echo_laser_scans) 0)
    ((:num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan) 0)
    ((:num_point_clouds __num_point_clouds) 0)
    ((:wiping_movingtaget __wiping_movingtaget) nil)
    ((:trajectory_builder_options_proto __trajectory_builder_options_proto) "")
    )
   (send-super :init)
   (setq _tracking_frame (string __tracking_frame))
   (setq _published_frame (string __published_frame))
   (setq _odom_frame (string __odom_frame))
   (setq _provide_odom_frame __provide_odom_frame)
   (setq _use_odometry __use_odometry)
   (setq _use_lidar_odometry_withgps __use_lidar_odometry_withgps)
   (setq _num_laser_scans (round __num_laser_scans))
   (setq _num_multi_echo_laser_scans (round __num_multi_echo_laser_scans))
   (setq _num_subdivisions_per_laser_scan (round __num_subdivisions_per_laser_scan))
   (setq _num_point_clouds (round __num_point_clouds))
   (setq _wiping_movingtaget __wiping_movingtaget)
   (setq _trajectory_builder_options_proto (string __trajectory_builder_options_proto))
   self)
  (:tracking_frame
   (&optional __tracking_frame)
   (if __tracking_frame (setq _tracking_frame __tracking_frame)) _tracking_frame)
  (:published_frame
   (&optional __published_frame)
   (if __published_frame (setq _published_frame __published_frame)) _published_frame)
  (:odom_frame
   (&optional __odom_frame)
   (if __odom_frame (setq _odom_frame __odom_frame)) _odom_frame)
  (:provide_odom_frame
   (&optional __provide_odom_frame)
   (if __provide_odom_frame (setq _provide_odom_frame __provide_odom_frame)) _provide_odom_frame)
  (:use_odometry
   (&optional __use_odometry)
   (if __use_odometry (setq _use_odometry __use_odometry)) _use_odometry)
  (:use_lidar_odometry_withgps
   (&optional __use_lidar_odometry_withgps)
   (if __use_lidar_odometry_withgps (setq _use_lidar_odometry_withgps __use_lidar_odometry_withgps)) _use_lidar_odometry_withgps)
  (:num_laser_scans
   (&optional __num_laser_scans)
   (if __num_laser_scans (setq _num_laser_scans __num_laser_scans)) _num_laser_scans)
  (:num_multi_echo_laser_scans
   (&optional __num_multi_echo_laser_scans)
   (if __num_multi_echo_laser_scans (setq _num_multi_echo_laser_scans __num_multi_echo_laser_scans)) _num_multi_echo_laser_scans)
  (:num_subdivisions_per_laser_scan
   (&optional __num_subdivisions_per_laser_scan)
   (if __num_subdivisions_per_laser_scan (setq _num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan)) _num_subdivisions_per_laser_scan)
  (:num_point_clouds
   (&optional __num_point_clouds)
   (if __num_point_clouds (setq _num_point_clouds __num_point_clouds)) _num_point_clouds)
  (:wiping_movingtaget
   (&optional __wiping_movingtaget)
   (if __wiping_movingtaget (setq _wiping_movingtaget __wiping_movingtaget)) _wiping_movingtaget)
  (:trajectory_builder_options_proto
   (&optional __trajectory_builder_options_proto)
   (if __trajectory_builder_options_proto (setq _trajectory_builder_options_proto __trajectory_builder_options_proto)) _trajectory_builder_options_proto)
  (:serialization-length
   ()
   (+
    ;; string _tracking_frame
    4 (length _tracking_frame)
    ;; string _published_frame
    4 (length _published_frame)
    ;; string _odom_frame
    4 (length _odom_frame)
    ;; bool _provide_odom_frame
    1
    ;; bool _use_odometry
    1
    ;; bool _use_lidar_odometry_withgps
    1
    ;; int32 _num_laser_scans
    4
    ;; int32 _num_multi_echo_laser_scans
    4
    ;; int32 _num_subdivisions_per_laser_scan
    4
    ;; int32 _num_point_clouds
    4
    ;; bool _wiping_movingtaget
    1
    ;; string _trajectory_builder_options_proto
    4 (length _trajectory_builder_options_proto)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tracking_frame
       (write-long (length _tracking_frame) s) (princ _tracking_frame s)
     ;; string _published_frame
       (write-long (length _published_frame) s) (princ _published_frame s)
     ;; string _odom_frame
       (write-long (length _odom_frame) s) (princ _odom_frame s)
     ;; bool _provide_odom_frame
       (if _provide_odom_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_odometry
       (if _use_odometry (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_lidar_odometry_withgps
       (if _use_lidar_odometry_withgps (write-byte -1 s) (write-byte 0 s))
     ;; int32 _num_laser_scans
       (write-long _num_laser_scans s)
     ;; int32 _num_multi_echo_laser_scans
       (write-long _num_multi_echo_laser_scans s)
     ;; int32 _num_subdivisions_per_laser_scan
       (write-long _num_subdivisions_per_laser_scan s)
     ;; int32 _num_point_clouds
       (write-long _num_point_clouds s)
     ;; bool _wiping_movingtaget
       (if _wiping_movingtaget (write-byte -1 s) (write-byte 0 s))
     ;; string _trajectory_builder_options_proto
       (write-long (length _trajectory_builder_options_proto) s) (princ _trajectory_builder_options_proto s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tracking_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracking_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _published_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _published_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _odom_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odom_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _provide_odom_frame
     (setq _provide_odom_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_odometry
     (setq _use_odometry (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_lidar_odometry_withgps
     (setq _use_lidar_odometry_withgps (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _num_laser_scans
     (setq _num_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_multi_echo_laser_scans
     (setq _num_multi_echo_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_subdivisions_per_laser_scan
     (setq _num_subdivisions_per_laser_scan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_point_clouds
     (setq _num_point_clouds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _wiping_movingtaget
     (setq _wiping_movingtaget (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _trajectory_builder_options_proto
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trajectory_builder_options_proto (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get iv_slam_ros_msgs::TrajectoryOptions :md5sum-) "ff6a016b854fdd87b31800cde39bbf6a")
(setf (get iv_slam_ros_msgs::TrajectoryOptions :datatype-) "iv_slam_ros_msgs/TrajectoryOptions")
(setf (get iv_slam_ros_msgs::TrajectoryOptions :definition-)
      "
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

")



(provide :iv_slam_ros_msgs/TrajectoryOptions "ff6a016b854fdd87b31800cde39bbf6a")


