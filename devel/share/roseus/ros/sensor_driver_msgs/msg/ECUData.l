;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::ECUData)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'ECUData (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::ECUDATA")
  (make-package "SENSOR_DRIVER_MSGS::ECUDATA"))

(in-package "ROS")
;;//! \htmlinclude ECUData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_driver_msgs::ECUData
  :super ros::object
  :slots (_header _f_shift _f_shift1 _fDeForwardVel _fFLRWheelAverAngle _fForwardVel _petral_pressure _pressure_back _FrontLeftWheelSpeed _FrontRightWheelSpeed _BackLeftWheelSpeed _BackRightWheelSpeed _motor_I_L _motor_I_R _motor_Torque_L _motor_Torque_R _motor_U_L _motor_U_R _motor_n_now_L _motor_n_now_R _Gear_state_now _steer_degree_now _steer_direction_now _soc_now ))

(defmethod sensor_driver_msgs::ECUData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:f_shift __f_shift) 0)
    ((:f_shift1 __f_shift1) 0)
    ((:fDeForwardVel __fDeForwardVel) 0.0)
    ((:fFLRWheelAverAngle __fFLRWheelAverAngle) 0.0)
    ((:fForwardVel __fForwardVel) 0.0)
    ((:petral_pressure __petral_pressure) 0.0)
    ((:pressure_back __pressure_back) 0.0)
    ((:FrontLeftWheelSpeed __FrontLeftWheelSpeed) 0.0)
    ((:FrontRightWheelSpeed __FrontRightWheelSpeed) 0.0)
    ((:BackLeftWheelSpeed __BackLeftWheelSpeed) 0.0)
    ((:BackRightWheelSpeed __BackRightWheelSpeed) 0.0)
    ((:motor_I_L __motor_I_L) 0.0)
    ((:motor_I_R __motor_I_R) 0.0)
    ((:motor_Torque_L __motor_Torque_L) 0.0)
    ((:motor_Torque_R __motor_Torque_R) 0.0)
    ((:motor_U_L __motor_U_L) 0.0)
    ((:motor_U_R __motor_U_R) 0.0)
    ((:motor_n_now_L __motor_n_now_L) 0.0)
    ((:motor_n_now_R __motor_n_now_R) 0.0)
    ((:Gear_state_now __Gear_state_now) 0.0)
    ((:steer_degree_now __steer_degree_now) 0.0)
    ((:steer_direction_now __steer_direction_now) 0.0)
    ((:soc_now __soc_now) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _f_shift (round __f_shift))
   (setq _f_shift1 (round __f_shift1))
   (setq _fDeForwardVel (float __fDeForwardVel))
   (setq _fFLRWheelAverAngle (float __fFLRWheelAverAngle))
   (setq _fForwardVel (float __fForwardVel))
   (setq _petral_pressure (float __petral_pressure))
   (setq _pressure_back (float __pressure_back))
   (setq _FrontLeftWheelSpeed (float __FrontLeftWheelSpeed))
   (setq _FrontRightWheelSpeed (float __FrontRightWheelSpeed))
   (setq _BackLeftWheelSpeed (float __BackLeftWheelSpeed))
   (setq _BackRightWheelSpeed (float __BackRightWheelSpeed))
   (setq _motor_I_L (float __motor_I_L))
   (setq _motor_I_R (float __motor_I_R))
   (setq _motor_Torque_L (float __motor_Torque_L))
   (setq _motor_Torque_R (float __motor_Torque_R))
   (setq _motor_U_L (float __motor_U_L))
   (setq _motor_U_R (float __motor_U_R))
   (setq _motor_n_now_L (float __motor_n_now_L))
   (setq _motor_n_now_R (float __motor_n_now_R))
   (setq _Gear_state_now (float __Gear_state_now))
   (setq _steer_degree_now (float __steer_degree_now))
   (setq _steer_direction_now (float __steer_direction_now))
   (setq _soc_now (float __soc_now))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:f_shift
   (&optional __f_shift)
   (if __f_shift (setq _f_shift __f_shift)) _f_shift)
  (:f_shift1
   (&optional __f_shift1)
   (if __f_shift1 (setq _f_shift1 __f_shift1)) _f_shift1)
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
  (:motor_I_L
   (&optional __motor_I_L)
   (if __motor_I_L (setq _motor_I_L __motor_I_L)) _motor_I_L)
  (:motor_I_R
   (&optional __motor_I_R)
   (if __motor_I_R (setq _motor_I_R __motor_I_R)) _motor_I_R)
  (:motor_Torque_L
   (&optional __motor_Torque_L)
   (if __motor_Torque_L (setq _motor_Torque_L __motor_Torque_L)) _motor_Torque_L)
  (:motor_Torque_R
   (&optional __motor_Torque_R)
   (if __motor_Torque_R (setq _motor_Torque_R __motor_Torque_R)) _motor_Torque_R)
  (:motor_U_L
   (&optional __motor_U_L)
   (if __motor_U_L (setq _motor_U_L __motor_U_L)) _motor_U_L)
  (:motor_U_R
   (&optional __motor_U_R)
   (if __motor_U_R (setq _motor_U_R __motor_U_R)) _motor_U_R)
  (:motor_n_now_L
   (&optional __motor_n_now_L)
   (if __motor_n_now_L (setq _motor_n_now_L __motor_n_now_L)) _motor_n_now_L)
  (:motor_n_now_R
   (&optional __motor_n_now_R)
   (if __motor_n_now_R (setq _motor_n_now_R __motor_n_now_R)) _motor_n_now_R)
  (:Gear_state_now
   (&optional __Gear_state_now)
   (if __Gear_state_now (setq _Gear_state_now __Gear_state_now)) _Gear_state_now)
  (:steer_degree_now
   (&optional __steer_degree_now)
   (if __steer_degree_now (setq _steer_degree_now __steer_degree_now)) _steer_degree_now)
  (:steer_direction_now
   (&optional __steer_direction_now)
   (if __steer_direction_now (setq _steer_direction_now __steer_direction_now)) _steer_direction_now)
  (:soc_now
   (&optional __soc_now)
   (if __soc_now (setq _soc_now __soc_now)) _soc_now)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _f_shift
    1
    ;; uint8 _f_shift1
    1
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
    ;; float64 _motor_I_L
    8
    ;; float64 _motor_I_R
    8
    ;; float64 _motor_Torque_L
    8
    ;; float64 _motor_Torque_R
    8
    ;; float64 _motor_U_L
    8
    ;; float64 _motor_U_R
    8
    ;; float64 _motor_n_now_L
    8
    ;; float64 _motor_n_now_R
    8
    ;; float64 _Gear_state_now
    8
    ;; float64 _steer_degree_now
    8
    ;; float64 _steer_direction_now
    8
    ;; float64 _soc_now
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _f_shift
       (write-byte _f_shift s)
     ;; uint8 _f_shift1
       (write-byte _f_shift1 s)
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
     ;; float64 _motor_I_L
       (sys::poke _motor_I_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_I_R
       (sys::poke _motor_I_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_Torque_L
       (sys::poke _motor_Torque_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_Torque_R
       (sys::poke _motor_Torque_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_U_L
       (sys::poke _motor_U_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_U_R
       (sys::poke _motor_U_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_n_now_L
       (sys::poke _motor_n_now_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_n_now_R
       (sys::poke _motor_n_now_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Gear_state_now
       (sys::poke _Gear_state_now (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_degree_now
       (sys::poke _steer_degree_now (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_direction_now
       (sys::poke _steer_direction_now (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _soc_now
       (sys::poke _soc_now (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _f_shift
     (setq _f_shift (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_shift1
     (setq _f_shift1 (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; float64 _motor_I_L
     (setq _motor_I_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_I_R
     (setq _motor_I_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_Torque_L
     (setq _motor_Torque_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_Torque_R
     (setq _motor_Torque_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_U_L
     (setq _motor_U_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_U_R
     (setq _motor_U_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_n_now_L
     (setq _motor_n_now_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_n_now_R
     (setq _motor_n_now_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Gear_state_now
     (setq _Gear_state_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_degree_now
     (setq _steer_degree_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_direction_now
     (setq _steer_direction_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _soc_now
     (setq _soc_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_driver_msgs::ECUData :md5sum-) "dc010ec4274516d39106b6b0985bf82d")
(setf (get sensor_driver_msgs::ECUData :datatype-) "sensor_driver_msgs/ECUData")
(setf (get sensor_driver_msgs::ECUData :definition-)
      "std_msgs/Header header

uint8 f_shift
uint8 f_shift1
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

float64 motor_I_L
float64 motor_I_R
float64 motor_Torque_L
float64 motor_Torque_R
float64 motor_U_L
float64 motor_U_R
float64 motor_n_now_L
float64 motor_n_now_R
float64 Gear_state_now
float64 steer_degree_now
float64 steer_direction_now
float64 soc_now

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



(provide :sensor_driver_msgs/ECUData "dc010ec4274516d39106b6b0985bf82d")


