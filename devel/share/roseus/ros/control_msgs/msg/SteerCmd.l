;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::SteerCmd)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'SteerCmd (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::STEERCMD")
  (make-package "CONTROL_MSGS::STEERCMD"))

(in-package "ROS")
;;//! \htmlinclude SteerCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::SteerCmd
  :super ros::object
  :slots (_header _steer _direction _vel_six ))

(defmethod control_msgs::SteerCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steer __steer) 0.0)
    ((:direction __direction) 0.0)
    ((:vel_six __vel_six) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steer (float __steer))
   (setq _direction (float __direction))
   (setq _vel_six (float __vel_six))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:vel_six
   (&optional __vel_six)
   (if __vel_six (setq _vel_six __vel_six)) _vel_six)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steer
    4
    ;; float32 _direction
    4
    ;; float32 _vel_six
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_six
       (sys::poke _vel_six (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steer
     (setq _steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_six
     (setq _vel_six (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::SteerCmd :md5sum-) "e76a500f94dff12a77baba64a0bbd169")
(setf (get control_msgs::SteerCmd :datatype-) "control_msgs/SteerCmd")
(setf (get control_msgs::SteerCmd :definition-)
      "Header header
float32 steer
float32 direction
float32 vel_six

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



(provide :control_msgs/SteerCmd "e76a500f94dff12a77baba64a0bbd169")


