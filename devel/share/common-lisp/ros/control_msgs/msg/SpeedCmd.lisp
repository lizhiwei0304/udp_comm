; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude SpeedCmd.msg.html

(cl:defclass <SpeedCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_cmd
    :reader throttle_cmd
    :initarg :throttle_cmd
    :type control_msgs-msg:ThrottleCmd
    :initform (cl:make-instance 'control_msgs-msg:ThrottleCmd))
   (brake_cmd
    :reader brake_cmd
    :initarg :brake_cmd
    :type control_msgs-msg:BrakeCmd
    :initform (cl:make-instance 'control_msgs-msg:BrakeCmd)))
)

(cl:defclass SpeedCmd (<SpeedCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<SpeedCmd> is deprecated: use control_msgs-msg:SpeedCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_cmd-val :lambda-list '(m))
(cl:defmethod throttle_cmd-val ((m <SpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_cmd-val is deprecated.  Use control_msgs-msg:throttle_cmd instead.")
  (throttle_cmd m))

(cl:ensure-generic-function 'brake_cmd-val :lambda-list '(m))
(cl:defmethod brake_cmd-val ((m <SpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_cmd-val is deprecated.  Use control_msgs-msg:brake_cmd instead.")
  (brake_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedCmd>) ostream)
  "Serializes a message object of type '<SpeedCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedCmd>) istream)
  "Deserializes a message object of type '<SpeedCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedCmd>)))
  "Returns string type for a message object of type '<SpeedCmd>"
  "control_msgs/SpeedCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedCmd)))
  "Returns string type for a message object of type 'SpeedCmd"
  "control_msgs/SpeedCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedCmd>)))
  "Returns md5sum for a message object of type '<SpeedCmd>"
  "351e584fbda2b6662ef82b45d8c46b5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedCmd)))
  "Returns md5sum for a message object of type 'SpeedCmd"
  "351e584fbda2b6662ef82b45d8c46b5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedCmd>)))
  "Returns full string definition for message of type '<SpeedCmd>"
  (cl:format cl:nil "Header header~%control_msgs/ThrottleCmd throttle_cmd~%control_msgs/BrakeCmd brake_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ThrottleCmd~%Header header~%float32 throttle~%~%~%~%================================================================================~%MSG: control_msgs/BrakeCmd~%Header header~%float32 brake~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedCmd)))
  "Returns full string definition for message of type 'SpeedCmd"
  (cl:format cl:nil "Header header~%control_msgs/ThrottleCmd throttle_cmd~%control_msgs/BrakeCmd brake_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ThrottleCmd~%Header header~%float32 throttle~%~%~%~%================================================================================~%MSG: control_msgs/BrakeCmd~%Header header~%float32 brake~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedCmd
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_cmd (throttle_cmd msg))
    (cl:cons ':brake_cmd (brake_cmd msg))
))
