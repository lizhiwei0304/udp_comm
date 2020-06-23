;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::RadarData)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'RadarData (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::RADARDATA")
  (make-package "IV_DYNAMICOBJECT_MSGS::RADARDATA"))

(in-package "ROS")
;;//! \htmlinclude RadarData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iv_dynamicobject_msgs::RadarData
  :super ros::object
  :slots (_header _delphi_detection_array _ACC_Target_ID ))

(defmethod iv_dynamicobject_msgs::RadarData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:delphi_detection_array __delphi_detection_array) (let (r) (dotimes (i 64) (push (instance iv_dynamicobject_msgs::RadarPoint :init) r)) r))
    ((:ACC_Target_ID __ACC_Target_ID) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _delphi_detection_array __delphi_detection_array)
   (setq _ACC_Target_ID (round __ACC_Target_ID))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:delphi_detection_array
   (&rest __delphi_detection_array)
   (if (keywordp (car __delphi_detection_array))
       (send* _delphi_detection_array __delphi_detection_array)
     (progn
       (if __delphi_detection_array (setq _delphi_detection_array (car __delphi_detection_array)))
       _delphi_detection_array)))
  (:ACC_Target_ID
   (&optional __ACC_Target_ID)
   (if __ACC_Target_ID (setq _ACC_Target_ID __ACC_Target_ID)) _ACC_Target_ID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; iv_dynamicobject_msgs/RadarPoint[64] _delphi_detection_array
    (apply #'+ (send-all _delphi_detection_array :serialization-length))
    ;; uint8 _ACC_Target_ID
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; iv_dynamicobject_msgs/RadarPoint[64] _delphi_detection_array
     (dolist (elem _delphi_detection_array)
       (send elem :serialize s)
       )
     ;; uint8 _ACC_Target_ID
       (write-byte _ACC_Target_ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; iv_dynamicobject_msgs/RadarPoint[64] _delphi_detection_array
   (dotimes (i 64)
     (send (elt _delphi_detection_array i) :deserialize buf ptr-) (incf ptr- (send (elt _delphi_detection_array i) :serialization-length))
     )
   ;; uint8 _ACC_Target_ID
     (setq _ACC_Target_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::RadarData :md5sum-) "11cc650889f4145ca7db11cb95c6e9cb")
(setf (get iv_dynamicobject_msgs::RadarData :datatype-) "iv_dynamicobject_msgs/RadarData")
(setf (get iv_dynamicobject_msgs::RadarData :definition-)
      "std_msgs/Header header
RadarPoint[64] delphi_detection_array
uint8 ACC_Target_ID

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
MSG: iv_dynamicobject_msgs/RadarPoint
uint8 target_ID
float32 range
float32 v
float32 angle
float32 x
float32 y
bool valid
uint8 status
uint8 moving
bool moving_fast
bool moving_slow

")



(provide :iv_dynamicobject_msgs/RadarData "11cc650889f4145ca7db11cb95c6e9cb")


