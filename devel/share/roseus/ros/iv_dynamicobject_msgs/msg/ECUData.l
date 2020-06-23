;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::ECUData)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'ECUData (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::ECUDATA")
  (make-package "IV_DYNAMICOBJECT_MSGS::ECUDATA"))

(in-package "ROS")
;;//! \htmlinclude ECUData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iv_dynamicobject_msgs::ECUData
  :super ros::object
  :slots (_header _fDeForwardVel _fFLRWheelAverAngle _fForwardVel _petral_pressure _pressure_back _FrontLeftWheelSpeed _FrontRightWheelSpeed _BackLeftWheelSpeed _BackRightWheelSpeed ))

(defmethod iv_dynamicobject_msgs::ECUData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fDeForwardVel __fDeForwardVel) 0.0)
    ((:fFLRWheelAverAngle __fFLRWheelAverAngle) 0.0)
    ((:fForwardVel __fForwardVel) 0.0)
    ((:petral_pressure __petral_pressure) 0.0)
    ((:pressure_back __pressure_back) 0.0)
    ((:FrontLeftWheelSpeed __FrontLeftWheelSpeed) 0.0)
    ((:FrontRightWheelSpeed __FrontRightWheelSpeed) 0.0)
    ((:BackLeftWheelSpeed __BackLeftWheelSpeed) 0.0)
    ((:BackRightWheelSpeed __BackRightWheelSpeed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fDeForwardVel (float __fDeForwardVel))
   (setq _fFLRWheelAverAngle (float __fFLRWheelAverAngle))
   (setq _fForwardVel (float __fForwardVel))
   (setq _petral_pressure (float __petral_pressure))
   (setq _pressure_back (float __pressure_back))
   (setq _FrontLeftWheelSpeed (float __FrontLeftWheelSpeed))
   (setq _FrontRightWheelSpeed (float __FrontRightWheelSpeed))
   (setq _BackLeftWheelSpeed (float __BackLeftWheelSpeed))
   (setq _BackRightWheelSpeed (float __BackRightWheelSpeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fDeForwardVel
   (&optional __fDeForwardVel)
   (if __fDeForwardVel (setq _fDeForwardVel __fDeForwardVel)) _fDeForwardVel)
  (:fFLRWheelAverAngle
   (&optional __fFLRWheelAverAngle)
   (if __fFLRWheelAverAngle (setq _fFLRWheelAverAngle __fFLRWheelAverAngle)) _fFLRWheelAverAngle)
  (:fForwardVel
   (&optional __fForwardVel)
   (if __fForwardVel (setq _fForwardVel __fForwardVel)) _fForwardVel)
  (:petral_pressure
   (&optional __petral_pressure)
   (if __petral_pressure (setq _petral_pressure __petral_pressure)) _petral_pressure)
  (:pressure_back
   (&optional __pressure_back)
   (if __pressure_back (setq _pressure_back __pressure_back)) _pressure_back)
  (:FrontLeftWheelSpeed
   (&optional __FrontLeftWheelSpeed)
   (if __FrontLeftWheelSpeed (setq _FrontLeftWheelSpeed __FrontLeftWheelSpeed)) _FrontLeftWheelSpeed)
  (:FrontRightWheelSpeed
   (&optional __FrontRightWheelSpeed)
   (if __FrontRightWheelSpeed (setq _FrontRightWheelSpeed __FrontRightWheelSpeed)) _FrontRightWheelSpeed)
  (:BackLeftWheelSpeed
   (&optional __BackLeftWheelSpeed)
   (if __BackLeftWheelSpeed (setq _BackLeftWheelSpeed __BackLeftWheelSpeed)) _BackLeftWheelSpeed)
  (:BackRightWheelSpeed
   (&optional __BackRightWheelSpeed)
   (if __BackRightWheelSpeed (setq _BackRightWheelSpeed __BackRightWheelSpeed)) _BackRightWheelSpeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _fDeForwardVel
    8
    ;; float64 _fFLRWheelAverAngle
    8
    ;; float64 _fForwardVel
    8
    ;; float64 _petral_pressure
    8
    ;; float64 _pressure_back
    8
    ;; float64 _FrontLeftWheelSpeed
    8
    ;; float64 _FrontRightWheelSpeed
    8
    ;; float64 _BackLeftWheelSpeed
    8
    ;; float64 _BackRightWheelSpeed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _fDeForwardVel
       (sys::poke _fDeForwardVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fFLRWheelAverAngle
       (sys::poke _fFLRWheelAverAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fForwardVel
       (sys::poke _fForwardVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _petral_pressure
       (sys::poke _petral_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure_back
       (sys::poke _pressure_back (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _FrontLeftWheelSpeed
       (sys::poke _FrontLeftWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _FrontRightWheelSpeed
       (sys::poke _FrontRightWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BackLeftWheelSpeed
       (sys::poke _BackLeftWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BackRightWheelSpeed
       (sys::poke _BackRightWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _fDeForwardVel
     (setq _fDeForwardVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fFLRWheelAverAngle
     (setq _fFLRWheelAverAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fForwardVel
     (setq _fForwardVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _petral_pressure
     (setq _petral_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure_back
     (setq _pressure_back (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _FrontLeftWheelSpeed
     (setq _FrontLeftWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _FrontRightWheelSpeed
     (setq _FrontRightWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BackLeftWheelSpeed
     (setq _BackLeftWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BackRightWheelSpeed
     (setq _BackRightWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::ECUData :md5sum-) "0aea8dada7af9f1ea02824320b82f004")
(setf (get iv_dynamicobject_msgs::ECUData :datatype-) "iv_dynamicobject_msgs/ECUData")
(setf (get iv_dynamicobject_msgs::ECUData :definition-)
      "std_msgs/Header header

float64 fDeForwardVel
float64 fFLRWheelAverAngle

#vehicle speed
float64 fForwardVel

float64 petral_pressure
float64 pressure_back
float64 FrontLeftWheelSpeed
float64 FrontRightWheelSpeed
float64 BackLeftWheelSpeed
float64 BackRightWheelSpeed

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



(provide :iv_dynamicobject_msgs/ECUData "0aea8dada7af9f1ea02824320b82f004")


