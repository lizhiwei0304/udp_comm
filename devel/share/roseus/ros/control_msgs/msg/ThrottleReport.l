;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::ThrottleReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'ThrottleReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::THROTTLEREPORT")
  (make-package "CONTROL_MSGS::THROTTLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude ThrottleReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::ThrottleReport
  :super ros::object
  :slots (_header _throttle _engine_status _throttle_pedal ))

(defmethod control_msgs::ThrottleReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) 0.0)
    ((:engine_status __engine_status) (instance control_msgs::EngineReport :init))
    ((:throttle_pedal __throttle_pedal) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle (float __throttle))
   (setq _engine_status __engine_status)
   (setq _throttle_pedal (float __throttle_pedal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:engine_status
   (&rest __engine_status)
   (if (keywordp (car __engine_status))
       (send* _engine_status __engine_status)
     (progn
       (if __engine_status (setq _engine_status (car __engine_status)))
       _engine_status)))
  (:throttle_pedal
   (&optional __throttle_pedal)
   (if __throttle_pedal (setq _throttle_pedal __throttle_pedal)) _throttle_pedal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _throttle
    4
    ;; control_msgs/EngineReport _engine_status
    (send _engine_status :serialization-length)
    ;; float32 _throttle_pedal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; control_msgs/EngineReport _engine_status
       (send _engine_status :serialize s)
     ;; float32 _throttle_pedal
       (sys::poke _throttle_pedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; control_msgs/EngineReport _engine_status
     (send _engine_status :deserialize buf ptr-) (incf ptr- (send _engine_status :serialization-length))
   ;; float32 _throttle_pedal
     (setq _throttle_pedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::ThrottleReport :md5sum-) "daef74a19d1d312c3656ecf3c3a9c5ee")
(setf (get control_msgs::ThrottleReport :datatype-) "control_msgs/ThrottleReport")
(setf (get control_msgs::ThrottleReport :definition-)
      "Header header
float32 throttle
control_msgs/EngineReport engine_status
float32 throttle_pedal

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
MSG: control_msgs/EngineReport
Header header
float32 engine_rpm
float32 engine_load

")



(provide :control_msgs/ThrottleReport "daef74a19d1d312c3656ecf3c3a9c5ee")


