;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::GetECUReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'GetECUReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::GETECUREPORT")
  (make-package "CONTROL_MSGS::GETECUREPORT"))

(in-package "ROS")
;;//! \htmlinclude GetECUReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::GetECUReport
  :super ros::object
  :slots (_header _mode _steer_cur _shift_cur _shift1_cur _brake_cur _throttle_cur _speed _manual _APU_U _APU_I _Battery_I _Battery_U _Power_demand _motor_I_L _motor_I_R _motor_Torque_L _motor_Torque_R _motor_U_L _motor_U_R _motor_n_now_L _motor_n_now_R _Gear_state_now_L _Gear_state_now_R _steer_degree_now _steer_direction_now _soc_now ))

(defmethod control_msgs::GetECUReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) (instance control_msgs::ModeReport :init))
    ((:steer_cur __steer_cur) (instance control_msgs::SteerReport :init))
    ((:shift_cur __shift_cur) (instance control_msgs::GearReport :init))
    ((:shift1_cur __shift1_cur) (instance control_msgs::GearReport :init))
    ((:brake_cur __brake_cur) (instance control_msgs::BrakeReport :init))
    ((:throttle_cur __throttle_cur) (instance control_msgs::ThrottleReport :init))
    ((:speed __speed) (instance control_msgs::SpeedReport :init))
    ((:manual __manual) (instance control_msgs::HMIReport :init))
    ((:APU_U __APU_U) 0.0)
    ((:APU_I __APU_I) 0.0)
    ((:Battery_I __Battery_I) 0.0)
    ((:Battery_U __Battery_U) 0.0)
    ((:Power_demand __Power_demand) 0.0)
    ((:motor_I_L __motor_I_L) 0.0)
    ((:motor_I_R __motor_I_R) 0.0)
    ((:motor_Torque_L __motor_Torque_L) 0.0)
    ((:motor_Torque_R __motor_Torque_R) 0.0)
    ((:motor_U_L __motor_U_L) 0.0)
    ((:motor_U_R __motor_U_R) 0.0)
    ((:motor_n_now_L __motor_n_now_L) 0.0)
    ((:motor_n_now_R __motor_n_now_R) 0.0)
    ((:Gear_state_now_L __Gear_state_now_L) 0.0)
    ((:Gear_state_now_R __Gear_state_now_R) 0.0)
    ((:steer_degree_now __steer_degree_now) 0.0)
    ((:steer_direction_now __steer_direction_now) 0.0)
    ((:soc_now __soc_now) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode __mode)
   (setq _steer_cur __steer_cur)
   (setq _shift_cur __shift_cur)
   (setq _shift1_cur __shift1_cur)
   (setq _brake_cur __brake_cur)
   (setq _throttle_cur __throttle_cur)
   (setq _speed __speed)
   (setq _manual __manual)
   (setq _APU_U (float __APU_U))
   (setq _APU_I (float __APU_I))
   (setq _Battery_I (float __Battery_I))
   (setq _Battery_U (float __Battery_U))
   (setq _Power_demand (float __Power_demand))
   (setq _motor_I_L (float __motor_I_L))
   (setq _motor_I_R (float __motor_I_R))
   (setq _motor_Torque_L (float __motor_Torque_L))
   (setq _motor_Torque_R (float __motor_Torque_R))
   (setq _motor_U_L (float __motor_U_L))
   (setq _motor_U_R (float __motor_U_R))
   (setq _motor_n_now_L (float __motor_n_now_L))
   (setq _motor_n_now_R (float __motor_n_now_R))
   (setq _Gear_state_now_L (float __Gear_state_now_L))
   (setq _Gear_state_now_R (float __Gear_state_now_R))
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
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:steer_cur
   (&rest __steer_cur)
   (if (keywordp (car __steer_cur))
       (send* _steer_cur __steer_cur)
     (progn
       (if __steer_cur (setq _steer_cur (car __steer_cur)))
       _steer_cur)))
  (:shift_cur
   (&rest __shift_cur)
   (if (keywordp (car __shift_cur))
       (send* _shift_cur __shift_cur)
     (progn
       (if __shift_cur (setq _shift_cur (car __shift_cur)))
       _shift_cur)))
  (:shift1_cur
   (&rest __shift1_cur)
   (if (keywordp (car __shift1_cur))
       (send* _shift1_cur __shift1_cur)
     (progn
       (if __shift1_cur (setq _shift1_cur (car __shift1_cur)))
       _shift1_cur)))
  (:brake_cur
   (&rest __brake_cur)
   (if (keywordp (car __brake_cur))
       (send* _brake_cur __brake_cur)
     (progn
       (if __brake_cur (setq _brake_cur (car __brake_cur)))
       _brake_cur)))
  (:throttle_cur
   (&rest __throttle_cur)
   (if (keywordp (car __throttle_cur))
       (send* _throttle_cur __throttle_cur)
     (progn
       (if __throttle_cur (setq _throttle_cur (car __throttle_cur)))
       _throttle_cur)))
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:manual
   (&rest __manual)
   (if (keywordp (car __manual))
       (send* _manual __manual)
     (progn
       (if __manual (setq _manual (car __manual)))
       _manual)))
  (:APU_U
   (&optional __APU_U)
   (if __APU_U (setq _APU_U __APU_U)) _APU_U)
  (:APU_I
   (&optional __APU_I)
   (if __APU_I (setq _APU_I __APU_I)) _APU_I)
  (:Battery_I
   (&optional __Battery_I)
   (if __Battery_I (setq _Battery_I __Battery_I)) _Battery_I)
  (:Battery_U
   (&optional __Battery_U)
   (if __Battery_U (setq _Battery_U __Battery_U)) _Battery_U)
  (:Power_demand
   (&optional __Power_demand)
   (if __Power_demand (setq _Power_demand __Power_demand)) _Power_demand)
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
  (:Gear_state_now_L
   (&optional __Gear_state_now_L)
   (if __Gear_state_now_L (setq _Gear_state_now_L __Gear_state_now_L)) _Gear_state_now_L)
  (:Gear_state_now_R
   (&optional __Gear_state_now_R)
   (if __Gear_state_now_R (setq _Gear_state_now_R __Gear_state_now_R)) _Gear_state_now_R)
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
    ;; control_msgs/ModeReport _mode
    (send _mode :serialization-length)
    ;; control_msgs/SteerReport _steer_cur
    (send _steer_cur :serialization-length)
    ;; control_msgs/GearReport _shift_cur
    (send _shift_cur :serialization-length)
    ;; control_msgs/GearReport _shift1_cur
    (send _shift1_cur :serialization-length)
    ;; control_msgs/BrakeReport _brake_cur
    (send _brake_cur :serialization-length)
    ;; control_msgs/ThrottleReport _throttle_cur
    (send _throttle_cur :serialization-length)
    ;; control_msgs/SpeedReport _speed
    (send _speed :serialization-length)
    ;; control_msgs/HMIReport _manual
    (send _manual :serialization-length)
    ;; float64 _APU_U
    8
    ;; float64 _APU_I
    8
    ;; float64 _Battery_I
    8
    ;; float64 _Battery_U
    8
    ;; float64 _Power_demand
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
    ;; float64 _Gear_state_now_L
    8
    ;; float64 _Gear_state_now_R
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
     ;; control_msgs/ModeReport _mode
       (send _mode :serialize s)
     ;; control_msgs/SteerReport _steer_cur
       (send _steer_cur :serialize s)
     ;; control_msgs/GearReport _shift_cur
       (send _shift_cur :serialize s)
     ;; control_msgs/GearReport _shift1_cur
       (send _shift1_cur :serialize s)
     ;; control_msgs/BrakeReport _brake_cur
       (send _brake_cur :serialize s)
     ;; control_msgs/ThrottleReport _throttle_cur
       (send _throttle_cur :serialize s)
     ;; control_msgs/SpeedReport _speed
       (send _speed :serialize s)
     ;; control_msgs/HMIReport _manual
       (send _manual :serialize s)
     ;; float64 _APU_U
       (sys::poke _APU_U (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _APU_I
       (sys::poke _APU_I (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Battery_I
       (sys::poke _Battery_I (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Battery_U
       (sys::poke _Battery_U (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Power_demand
       (sys::poke _Power_demand (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; float64 _Gear_state_now_L
       (sys::poke _Gear_state_now_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Gear_state_now_R
       (sys::poke _Gear_state_now_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; control_msgs/ModeReport _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; control_msgs/SteerReport _steer_cur
     (send _steer_cur :deserialize buf ptr-) (incf ptr- (send _steer_cur :serialization-length))
   ;; control_msgs/GearReport _shift_cur
     (send _shift_cur :deserialize buf ptr-) (incf ptr- (send _shift_cur :serialization-length))
   ;; control_msgs/GearReport _shift1_cur
     (send _shift1_cur :deserialize buf ptr-) (incf ptr- (send _shift1_cur :serialization-length))
   ;; control_msgs/BrakeReport _brake_cur
     (send _brake_cur :deserialize buf ptr-) (incf ptr- (send _brake_cur :serialization-length))
   ;; control_msgs/ThrottleReport _throttle_cur
     (send _throttle_cur :deserialize buf ptr-) (incf ptr- (send _throttle_cur :serialization-length))
   ;; control_msgs/SpeedReport _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; control_msgs/HMIReport _manual
     (send _manual :deserialize buf ptr-) (incf ptr- (send _manual :serialization-length))
   ;; float64 _APU_U
     (setq _APU_U (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _APU_I
     (setq _APU_I (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Battery_I
     (setq _Battery_I (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Battery_U
     (setq _Battery_U (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Power_demand
     (setq _Power_demand (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; float64 _Gear_state_now_L
     (setq _Gear_state_now_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Gear_state_now_R
     (setq _Gear_state_now_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_degree_now
     (setq _steer_degree_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_direction_now
     (setq _steer_direction_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _soc_now
     (setq _soc_now (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get control_msgs::GetECUReport :md5sum-) "714d4d6695952cd3ce4d56d62f609f13")
(setf (get control_msgs::GetECUReport :datatype-) "control_msgs/GetECUReport")
(setf (get control_msgs::GetECUReport :definition-)
      "Header header

control_msgs/ModeReport mode

control_msgs/SteerReport steer_cur

control_msgs/GearReport shift_cur
control_msgs/GearReport shift1_cur

control_msgs/BrakeReport brake_cur
control_msgs/ThrottleReport throttle_cur # include engine_status

control_msgs/SpeedReport speed

control_msgs/HMIReport manual

float64 APU_U
float64 APU_I
float64 Battery_I
float64 Battery_U
float64 Power_demand
float64 motor_I_L
float64 motor_I_R
float64 motor_Torque_L
float64 motor_Torque_R
float64 motor_U_L
float64 motor_U_R
float64 motor_n_now_L
float64 motor_n_now_R
float64 Gear_state_now_L
float64 Gear_state_now_R
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

================================================================================
MSG: control_msgs/ModeReport
Header header

int32 auto_mode

int32 speed_mode
bool throttle_enable
bool brake_enable

int32 steer_mode
int32 gear_mode


================================================================================
MSG: control_msgs/SteerReport
Header header
float32 steer

================================================================================
MSG: control_msgs/GearReport
Header header
uint8 gear

================================================================================
MSG: control_msgs/BrakeReport
Header header

float32 brake_ESC_left
float32 brake_ESC_right

control_msgs/WheelStateReport brake_wheel

float32 brake_pedal

================================================================================
MSG: control_msgs/WheelStateReport
Header header

float32 front_left
float32 front_right
float32 rear_left
float32 rear_right

================================================================================
MSG: control_msgs/ThrottleReport
Header header
float32 throttle
control_msgs/EngineReport engine_status
float32 throttle_pedal

================================================================================
MSG: control_msgs/EngineReport
Header header
float32 engine_rpm
float32 engine_load

================================================================================
MSG: control_msgs/SpeedReport
Header header

control_msgs/WheelStateReport speed_wheel
geometry_msgs/Twist velocity



================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: control_msgs/HMIReport
Header header

bool manual_estop
bool is_human_brake 

")



(provide :control_msgs/GetECUReport "714d4d6695952cd3ce4d56d62f609f13")


