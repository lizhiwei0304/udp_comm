;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::BrakeReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'BrakeReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::BRAKEREPORT")
  (make-package "CONTROL_MSGS::BRAKEREPORT"))

(in-package "ROS")
;;//! \htmlinclude BrakeReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::BrakeReport
  :super ros::object
  :slots (_header _brake_ESC_left _brake_ESC_right _brake_wheel _brake_pedal ))

(defmethod control_msgs::BrakeReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brake_ESC_left __brake_ESC_left) 0.0)
    ((:brake_ESC_right __brake_ESC_right) 0.0)
    ((:brake_wheel __brake_wheel) (instance control_msgs::WheelStateReport :init))
    ((:brake_pedal __brake_pedal) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brake_ESC_left (float __brake_ESC_left))
   (setq _brake_ESC_right (float __brake_ESC_right))
   (setq _brake_wheel __brake_wheel)
   (setq _brake_pedal (float __brake_pedal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brake_ESC_left
   (&optional __brake_ESC_left)
   (if __brake_ESC_left (setq _brake_ESC_left __brake_ESC_left)) _brake_ESC_left)
  (:brake_ESC_right
   (&optional __brake_ESC_right)
   (if __brake_ESC_right (setq _brake_ESC_right __brake_ESC_right)) _brake_ESC_right)
  (:brake_wheel
   (&rest __brake_wheel)
   (if (keywordp (car __brake_wheel))
       (send* _brake_wheel __brake_wheel)
     (progn
       (if __brake_wheel (setq _brake_wheel (car __brake_wheel)))
       _brake_wheel)))
  (:brake_pedal
   (&optional __brake_pedal)
   (if __brake_pedal (setq _brake_pedal __brake_pedal)) _brake_pedal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _brake_ESC_left
    4
    ;; float32 _brake_ESC_right
    4
    ;; control_msgs/WheelStateReport _brake_wheel
    (send _brake_wheel :serialization-length)
    ;; float32 _brake_pedal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _brake_ESC_left
       (sys::poke _brake_ESC_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_ESC_right
       (sys::poke _brake_ESC_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; control_msgs/WheelStateReport _brake_wheel
       (send _brake_wheel :serialize s)
     ;; float32 _brake_pedal
       (sys::poke _brake_pedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _brake_ESC_left
     (setq _brake_ESC_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_ESC_right
     (setq _brake_ESC_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; control_msgs/WheelStateReport _brake_wheel
     (send _brake_wheel :deserialize buf ptr-) (incf ptr- (send _brake_wheel :serialization-length))
   ;; float32 _brake_pedal
     (setq _brake_pedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::BrakeReport :md5sum-) "5b70ede16519a0d621c3ea9bdf833527")
(setf (get control_msgs::BrakeReport :datatype-) "control_msgs/BrakeReport")
(setf (get control_msgs::BrakeReport :definition-)
      "Header header

float32 brake_ESC_left
float32 brake_ESC_right

control_msgs/WheelStateReport brake_wheel

float32 brake_pedal

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

")



(provide :control_msgs/BrakeReport "5b70ede16519a0d621c3ea9bdf833527")


