;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::HMIReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'HMIReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::HMIREPORT")
  (make-package "CONTROL_MSGS::HMIREPORT"))

(in-package "ROS")
;;//! \htmlinclude HMIReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::HMIReport
  :super ros::object
  :slots (_header _manual_estop _is_human_brake ))

(defmethod control_msgs::HMIReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:manual_estop __manual_estop) nil)
    ((:is_human_brake __is_human_brake) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _manual_estop __manual_estop)
   (setq _is_human_brake __is_human_brake)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:manual_estop
   (&optional __manual_estop)
   (if __manual_estop (setq _manual_estop __manual_estop)) _manual_estop)
  (:is_human_brake
   (&optional __is_human_brake)
   (if __is_human_brake (setq _is_human_brake __is_human_brake)) _is_human_brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _manual_estop
    1
    ;; bool _is_human_brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _manual_estop
       (if _manual_estop (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_human_brake
       (if _is_human_brake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _manual_estop
     (setq _manual_estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_human_brake
     (setq _is_human_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get control_msgs::HMIReport :md5sum-) "ee8fa796b8ba44bce25e3586e968c27d")
(setf (get control_msgs::HMIReport :datatype-) "control_msgs/HMIReport")
(setf (get control_msgs::HMIReport :definition-)
      "Header header

bool manual_estop
bool is_human_brake 

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



(provide :control_msgs/HMIReport "ee8fa796b8ba44bce25e3586e968c27d")


