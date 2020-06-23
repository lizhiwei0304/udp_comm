;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::ModeCmd)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'ModeCmd (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::MODECMD")
  (make-package "CONTROL_MSGS::MODECMD"))

(in-package "ROS")
;;//! \htmlinclude ModeCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::ModeCmd
  :super ros::object
  :slots (_header _auto_mode _speed_mode _throttle_enable _brake_enable _steer_mode _gear_mode ))

(defmethod control_msgs::ModeCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_mode __auto_mode) 0)
    ((:speed_mode __speed_mode) 0)
    ((:throttle_enable __throttle_enable) nil)
    ((:brake_enable __brake_enable) nil)
    ((:steer_mode __steer_mode) 0)
    ((:gear_mode __gear_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_mode (round __auto_mode))
   (setq _speed_mode (round __speed_mode))
   (setq _throttle_enable __throttle_enable)
   (setq _brake_enable __brake_enable)
   (setq _steer_mode (round __steer_mode))
   (setq _gear_mode (round __gear_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:auto_mode
   (&optional __auto_mode)
   (if __auto_mode (setq _auto_mode __auto_mode)) _auto_mode)
  (:speed_mode
   (&optional __speed_mode)
   (if __speed_mode (setq _speed_mode __speed_mode)) _speed_mode)
  (:throttle_enable
   (&optional __throttle_enable)
   (if __throttle_enable (setq _throttle_enable __throttle_enable)) _throttle_enable)
  (:brake_enable
   (&optional __brake_enable)
   (if __brake_enable (setq _brake_enable __brake_enable)) _brake_enable)
  (:steer_mode
   (&optional __steer_mode)
   (if __steer_mode (setq _steer_mode __steer_mode)) _steer_mode)
  (:gear_mode
   (&optional __gear_mode)
   (if __gear_mode (setq _gear_mode __gear_mode)) _gear_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _auto_mode
    4
    ;; int32 _speed_mode
    4
    ;; bool _throttle_enable
    1
    ;; bool _brake_enable
    1
    ;; int32 _steer_mode
    4
    ;; int32 _gear_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _auto_mode
       (write-long _auto_mode s)
     ;; int32 _speed_mode
       (write-long _speed_mode s)
     ;; bool _throttle_enable
       (if _throttle_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_enable
       (if _brake_enable (write-byte -1 s) (write-byte 0 s))
     ;; int32 _steer_mode
       (write-long _steer_mode s)
     ;; int32 _gear_mode
       (write-long _gear_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _auto_mode
     (setq _auto_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_mode
     (setq _speed_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _throttle_enable
     (setq _throttle_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_enable
     (setq _brake_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _steer_mode
     (setq _steer_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_mode
     (setq _gear_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::ModeCmd :md5sum-) "c77a6f2a30cb70e9beb64929e4a2227b")
(setf (get control_msgs::ModeCmd :datatype-) "control_msgs/ModeCmd")
(setf (get control_msgs::ModeCmd :definition-)
      "Header header

int32 auto_mode

int32 speed_mode
bool throttle_enable
bool brake_enable

int32 steer_mode
int32 gear_mode


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



(provide :control_msgs/ModeCmd "c77a6f2a30cb70e9beb64929e4a2227b")


