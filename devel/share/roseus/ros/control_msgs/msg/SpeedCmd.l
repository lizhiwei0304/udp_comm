;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::SpeedCmd)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'SpeedCmd (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::SPEEDCMD")
  (make-package "CONTROL_MSGS::SPEEDCMD"))

(in-package "ROS")
;;//! \htmlinclude SpeedCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::SpeedCmd
  :super ros::object
  :slots (_header _throttle_cmd _brake_cmd ))

(defmethod control_msgs::SpeedCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_cmd __throttle_cmd) (instance control_msgs::ThrottleCmd :init))
    ((:brake_cmd __brake_cmd) (instance control_msgs::BrakeCmd :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_cmd __throttle_cmd)
   (setq _brake_cmd __brake_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_cmd
   (&rest __throttle_cmd)
   (if (keywordp (car __throttle_cmd))
       (send* _throttle_cmd __throttle_cmd)
     (progn
       (if __throttle_cmd (setq _throttle_cmd (car __throttle_cmd)))
       _throttle_cmd)))
  (:brake_cmd
   (&rest __brake_cmd)
   (if (keywordp (car __brake_cmd))
       (send* _brake_cmd __brake_cmd)
     (progn
       (if __brake_cmd (setq _brake_cmd (car __brake_cmd)))
       _brake_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; control_msgs/ThrottleCmd _throttle_cmd
    (send _throttle_cmd :serialization-length)
    ;; control_msgs/BrakeCmd _brake_cmd
    (send _brake_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; control_msgs/ThrottleCmd _throttle_cmd
       (send _throttle_cmd :serialize s)
     ;; control_msgs/BrakeCmd _brake_cmd
       (send _brake_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; control_msgs/ThrottleCmd _throttle_cmd
     (send _throttle_cmd :deserialize buf ptr-) (incf ptr- (send _throttle_cmd :serialization-length))
   ;; control_msgs/BrakeCmd _brake_cmd
     (send _brake_cmd :deserialize buf ptr-) (incf ptr- (send _brake_cmd :serialization-length))
   ;;
   self)
  )

(setf (get control_msgs::SpeedCmd :md5sum-) "351e584fbda2b6662ef82b45d8c46b5f")
(setf (get control_msgs::SpeedCmd :datatype-) "control_msgs/SpeedCmd")
(setf (get control_msgs::SpeedCmd :definition-)
      "Header header
control_msgs/ThrottleCmd throttle_cmd
control_msgs/BrakeCmd brake_cmd

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
MSG: control_msgs/ThrottleCmd
Header header
float32 throttle



================================================================================
MSG: control_msgs/BrakeCmd
Header header
float32 brake


")



(provide :control_msgs/SpeedCmd "351e584fbda2b6662ef82b45d8c46b5f")


