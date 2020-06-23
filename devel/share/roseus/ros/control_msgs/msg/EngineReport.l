;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::EngineReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'EngineReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::ENGINEREPORT")
  (make-package "CONTROL_MSGS::ENGINEREPORT"))

(in-package "ROS")
;;//! \htmlinclude EngineReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::EngineReport
  :super ros::object
  :slots (_header _engine_rpm _engine_load ))

(defmethod control_msgs::EngineReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:engine_rpm __engine_rpm) 0.0)
    ((:engine_load __engine_load) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _engine_rpm (float __engine_rpm))
   (setq _engine_load (float __engine_load))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:engine_rpm
   (&optional __engine_rpm)
   (if __engine_rpm (setq _engine_rpm __engine_rpm)) _engine_rpm)
  (:engine_load
   (&optional __engine_load)
   (if __engine_load (setq _engine_load __engine_load)) _engine_load)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _engine_rpm
    4
    ;; float32 _engine_load
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _engine_rpm
       (sys::poke _engine_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engine_load
       (sys::poke _engine_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _engine_rpm
     (setq _engine_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engine_load
     (setq _engine_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::EngineReport :md5sum-) "af4e629629447104d3249e23f4f8884b")
(setf (get control_msgs::EngineReport :datatype-) "control_msgs/EngineReport")
(setf (get control_msgs::EngineReport :definition-)
      "Header header
float32 engine_rpm
float32 engine_load

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

")



(provide :control_msgs/EngineReport "af4e629629447104d3249e23f4f8884b")


