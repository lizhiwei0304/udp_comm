;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::SpeedReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'SpeedReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::SPEEDREPORT")
  (make-package "CONTROL_MSGS::SPEEDREPORT"))

(in-package "ROS")
;;//! \htmlinclude SpeedReport.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::SpeedReport
  :super ros::object
  :slots (_header _speed_wheel _velocity ))

(defmethod control_msgs::SpeedReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed_wheel __speed_wheel) (instance control_msgs::WheelStateReport :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed_wheel __speed_wheel)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed_wheel
   (&rest __speed_wheel)
   (if (keywordp (car __speed_wheel))
       (send* _speed_wheel __speed_wheel)
     (progn
       (if __speed_wheel (setq _speed_wheel (car __speed_wheel)))
       _speed_wheel)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; control_msgs/WheelStateReport _speed_wheel
    (send _speed_wheel :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; control_msgs/WheelStateReport _speed_wheel
       (send _speed_wheel :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; control_msgs/WheelStateReport _speed_wheel
     (send _speed_wheel :deserialize buf ptr-) (incf ptr- (send _speed_wheel :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get control_msgs::SpeedReport :md5sum-) "11ba2e8ec858d185d67e1ed8a39ee13c")
(setf (get control_msgs::SpeedReport :datatype-) "control_msgs/SpeedReport")
(setf (get control_msgs::SpeedReport :definition-)
      "Header header

control_msgs/WheelStateReport speed_wheel
geometry_msgs/Twist velocity



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
MSG: control_msgs/WheelStateReport
Header header

float32 front_left
float32 front_right
float32 rear_left
float32 rear_right

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
")



(provide :control_msgs/SpeedReport "11ba2e8ec858d185d67e1ed8a39ee13c")


