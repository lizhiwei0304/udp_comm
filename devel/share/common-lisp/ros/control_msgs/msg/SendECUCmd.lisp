; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude SendECUCmd.msg.html

(cl:defclass <SendECUCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type control_msgs-msg:ModeCmd
    :initform (cl:make-instance 'control_msgs-msg:ModeCmd))
   (throttle_cmd
    :reader throttle_cmd
    :initarg :throttle_cmd
    :type control_msgs-msg:ThrottleCmd
    :initform (cl:make-instance 'control_msgs-msg:ThrottleCmd))
   (brake_cmd
    :reader brake_cmd
    :initarg :brake_cmd
    :type control_msgs-msg:BrakeCmd
    :initform (cl:make-instance 'control_msgs-msg:BrakeCmd))
   (steer_cmd
    :reader steer_cmd
    :initarg :steer_cmd
    :type control_msgs-msg:SteerCmd
    :initform (cl:make-instance 'control_msgs-msg:SteerCmd))
   (gear_cmd
    :reader gear_cmd
    :initarg :gear_cmd
    :type control_msgs-msg:GearCmd
    :initform (cl:make-instance 'control_msgs-msg:GearCmd))
   (lamp_cmd
    :reader lamp_cmd
    :initarg :lamp_cmd
    :type control_msgs-msg:LampCmd
    :initform (cl:make-instance 'control_msgs-msg:LampCmd))
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendECUCmd (<SendECUCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendECUCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendECUCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<SendECUCmd> is deprecated: use control_msgs-msg:SendECUCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:mode-val is deprecated.  Use control_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'throttle_cmd-val :lambda-list '(m))
(cl:defmethod throttle_cmd-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_cmd-val is deprecated.  Use control_msgs-msg:throttle_cmd instead.")
  (throttle_cmd m))

(cl:ensure-generic-function 'brake_cmd-val :lambda-list '(m))
(cl:defmethod brake_cmd-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_cmd-val is deprecated.  Use control_msgs-msg:brake_cmd instead.")
  (brake_cmd m))

(cl:ensure-generic-function 'steer_cmd-val :lambda-list '(m))
(cl:defmethod steer_cmd-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_cmd-val is deprecated.  Use control_msgs-msg:steer_cmd instead.")
  (steer_cmd m))

(cl:ensure-generic-function 'gear_cmd-val :lambda-list '(m))
(cl:defmethod gear_cmd-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear_cmd-val is deprecated.  Use control_msgs-msg:gear_cmd instead.")
  (gear_cmd m))

(cl:ensure-generic-function 'lamp_cmd-val :lambda-list '(m))
(cl:defmethod lamp_cmd-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lamp_cmd-val is deprecated.  Use control_msgs-msg:lamp_cmd instead.")
  (lamp_cmd m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <SendECUCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:emergency-val is deprecated.  Use control_msgs-msg:emergency instead.")
  (emergency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendECUCmd>) ostream)
  "Serializes a message object of type '<SendECUCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steer_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lamp_cmd) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendECUCmd>) istream)
  "Deserializes a message object of type '<SendECUCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steer_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lamp_cmd) istream)
    (cl:setf (cl:slot-value msg 'emergency) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendECUCmd>)))
  "Returns string type for a message object of type '<SendECUCmd>"
  "control_msgs/SendECUCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendECUCmd)))
  "Returns string type for a message object of type 'SendECUCmd"
  "control_msgs/SendECUCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendECUCmd>)))
  "Returns md5sum for a message object of type '<SendECUCmd>"
  "a1e81f44c70f667d2029e766d93f8169")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendECUCmd)))
  "Returns md5sum for a message object of type 'SendECUCmd"
  "a1e81f44c70f667d2029e766d93f8169")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendECUCmd>)))
  "Returns full string definition for message of type '<SendECUCmd>"
  (cl:format cl:nil "Header header~%~%control_msgs/ModeCmd mode~%~%control_msgs/ThrottleCmd throttle_cmd~%control_msgs/BrakeCmd brake_cmd~%control_msgs/SteerCmd steer_cmd~%control_msgs/GearCmd gear_cmd~%control_msgs/LampCmd lamp_cmd~%~%bool emergency~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ModeCmd~%Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: control_msgs/ThrottleCmd~%Header header~%float32 throttle~%~%~%~%================================================================================~%MSG: control_msgs/BrakeCmd~%Header header~%float32 brake~%~%~%================================================================================~%MSG: control_msgs/SteerCmd~%Header header~%float32 steer~%float32 direction~%float32 vel_six~%~%================================================================================~%MSG: control_msgs/GearCmd~%Header header~%uint8 gear~%~%================================================================================~%MSG: control_msgs/LampCmd~%Header header~%bool lamp_1~%bool lamp_2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendECUCmd)))
  "Returns full string definition for message of type 'SendECUCmd"
  (cl:format cl:nil "Header header~%~%control_msgs/ModeCmd mode~%~%control_msgs/ThrottleCmd throttle_cmd~%control_msgs/BrakeCmd brake_cmd~%control_msgs/SteerCmd steer_cmd~%control_msgs/GearCmd gear_cmd~%control_msgs/LampCmd lamp_cmd~%~%bool emergency~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ModeCmd~%Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: control_msgs/ThrottleCmd~%Header header~%float32 throttle~%~%~%~%================================================================================~%MSG: control_msgs/BrakeCmd~%Header header~%float32 brake~%~%~%================================================================================~%MSG: control_msgs/SteerCmd~%Header header~%float32 steer~%float32 direction~%float32 vel_six~%~%================================================================================~%MSG: control_msgs/GearCmd~%Header header~%uint8 gear~%~%================================================================================~%MSG: control_msgs/LampCmd~%Header header~%bool lamp_1~%bool lamp_2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendECUCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steer_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lamp_cmd))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendECUCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SendECUCmd
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':throttle_cmd (throttle_cmd msg))
    (cl:cons ':brake_cmd (brake_cmd msg))
    (cl:cons ':steer_cmd (steer_cmd msg))
    (cl:cons ':gear_cmd (gear_cmd msg))
    (cl:cons ':lamp_cmd (lamp_cmd msg))
    (cl:cons ':emergency (emergency msg))
))
