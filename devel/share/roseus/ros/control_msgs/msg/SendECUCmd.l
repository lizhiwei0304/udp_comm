;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::SendECUCmd)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'SendECUCmd (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::SENDECUCMD")
  (make-package "CONTROL_MSGS::SENDECUCMD"))

(in-package "ROS")
;;//! \htmlinclude SendECUCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::SendECUCmd
  :super ros::object
  :slots (_header _mode _throttle_cmd _brake_cmd _steer_cmd _gear_cmd _lamp_cmd _emergency ))

(defmethod control_msgs::SendECUCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) (instance control_msgs::ModeCmd :init))
    ((:throttle_cmd __throttle_cmd) (instance control_msgs::ThrottleCmd :init))
    ((:brake_cmd __brake_cmd) (instance control_msgs::BrakeCmd :init))
    ((:steer_cmd __steer_cmd) (instance control_msgs::SteerCmd :init))
    ((:gear_cmd __gear_cmd) (instance control_msgs::GearCmd :init))
    ((:lamp_cmd __lamp_cmd) (instance control_msgs::LampCmd :init))
    ((:emergency __emergency) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode __mode)
   (setq _throttle_cmd __throttle_cmd)
   (setq _brake_cmd __brake_cmd)
   (setq _steer_cmd __steer_cmd)
   (setq _gear_cmd __gear_cmd)
   (setq _lamp_cmd __lamp_cmd)
   (setq _emergency __emergency)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
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
  (:steer_cmd
   (&rest __steer_cmd)
   (if (keywordp (car __steer_cmd))
       (send* _steer_cmd __steer_cmd)
     (progn
       (if __steer_cmd (setq _steer_cmd (car __steer_cmd)))
       _steer_cmd)))
  (:gear_cmd
   (&rest __gear_cmd)
   (if (keywordp (car __gear_cmd))
       (send* _gear_cmd __gear_cmd)
     (progn
       (if __gear_cmd (setq _gear_cmd (car __gear_cmd)))
       _gear_cmd)))
  (:lamp_cmd
   (&rest __lamp_cmd)
   (if (keywordp (car __lamp_cmd))
       (send* _lamp_cmd __lamp_cmd)
     (progn
       (if __lamp_cmd (setq _lamp_cmd (car __lamp_cmd)))
       _lamp_cmd)))
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; control_msgs/ModeCmd _mode
    (send _mode :serialization-length)
    ;; control_msgs/ThrottleCmd _throttle_cmd
    (send _throttle_cmd :serialization-length)
    ;; control_msgs/BrakeCmd _brake_cmd
    (send _brake_cmd :serialization-length)
    ;; control_msgs/SteerCmd _steer_cmd
    (send _steer_cmd :serialization-length)
    ;; control_msgs/GearCmd _gear_cmd
    (send _gear_cmd :serialization-length)
    ;; control_msgs/LampCmd _lamp_cmd
    (send _lamp_cmd :serialization-length)
    ;; bool _emergency
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; control_msgs/ModeCmd _mode
       (send _mode :serialize s)
     ;; control_msgs/ThrottleCmd _throttle_cmd
       (send _throttle_cmd :serialize s)
     ;; control_msgs/BrakeCmd _brake_cmd
       (send _brake_cmd :serialize s)
     ;; control_msgs/SteerCmd _steer_cmd
       (send _steer_cmd :serialize s)
     ;; control_msgs/GearCmd _gear_cmd
       (send _gear_cmd :serialize s)
     ;; control_msgs/LampCmd _lamp_cmd
       (send _lamp_cmd :serialize s)
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; control_msgs/ModeCmd _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; control_msgs/ThrottleCmd _throttle_cmd
     (send _throttle_cmd :deserialize buf ptr-) (incf ptr- (send _throttle_cmd :serialization-length))
   ;; control_msgs/BrakeCmd _brake_cmd
     (send _brake_cmd :deserialize buf ptr-) (incf ptr- (send _brake_cmd :serialization-length))
   ;; control_msgs/SteerCmd _steer_cmd
     (send _steer_cmd :deserialize buf ptr-) (incf ptr- (send _steer_cmd :serialization-length))
   ;; control_msgs/GearCmd _gear_cmd
     (send _gear_cmd :deserialize buf ptr-) (incf ptr- (send _gear_cmd :serialization-length))
   ;; control_msgs/LampCmd _lamp_cmd
     (send _lamp_cmd :deserialize buf ptr-) (incf ptr- (send _lamp_cmd :serialization-length))
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get control_msgs::SendECUCmd :md5sum-) "a1e81f44c70f667d2029e766d93f8169")
(setf (get control_msgs::SendECUCmd :datatype-) "control_msgs/SendECUCmd")
(setf (get control_msgs::SendECUCmd :definition-)
      "Header header

control_msgs/ModeCmd mode

control_msgs/ThrottleCmd throttle_cmd
control_msgs/BrakeCmd brake_cmd
control_msgs/SteerCmd steer_cmd
control_msgs/GearCmd gear_cmd
control_msgs/LampCmd lamp_cmd

bool emergency


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
MSG: control_msgs/ModeCmd
Header header

int32 auto_mode

int32 speed_mode
bool throttle_enable
bool brake_enable

int32 steer_mode
int32 gear_mode


================================================================================
MSG: control_msgs/ThrottleCmd
Header header
float32 throttle



================================================================================
MSG: control_msgs/BrakeCmd
Header header
float32 brake


================================================================================
MSG: control_msgs/SteerCmd
Header header
float32 steer
float32 direction
float32 vel_six

================================================================================
MSG: control_msgs/GearCmd
Header header
uint8 gear

================================================================================
MSG: control_msgs/LampCmd
Header header
bool lamp_1
bool lamp_2


")



(provide :control_msgs/SendECUCmd "a1e81f44c70f667d2029e766d93f8169")


