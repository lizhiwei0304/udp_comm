; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude ThrottleReport.msg.html

(cl:defclass <ThrottleReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (engine_status
    :reader engine_status
    :initarg :engine_status
    :type control_msgs-msg:EngineReport
    :initform (cl:make-instance 'control_msgs-msg:EngineReport))
   (throttle_pedal
    :reader throttle_pedal
    :initarg :throttle_pedal
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrottleReport (<ThrottleReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<ThrottleReport> is deprecated: use control_msgs-msg:ThrottleReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle-val is deprecated.  Use control_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'engine_status-val :lambda-list '(m))
(cl:defmethod engine_status-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:engine_status-val is deprecated.  Use control_msgs-msg:engine_status instead.")
  (engine_status m))

(cl:ensure-generic-function 'throttle_pedal-val :lambda-list '(m))
(cl:defmethod throttle_pedal-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_pedal-val is deprecated.  Use control_msgs-msg:throttle_pedal instead.")
  (throttle_pedal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleReport>) ostream)
  "Serializes a message object of type '<ThrottleReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'engine_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_pedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleReport>) istream)
  "Deserializes a message object of type '<ThrottleReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'engine_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_pedal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleReport>)))
  "Returns string type for a message object of type '<ThrottleReport>"
  "control_msgs/ThrottleReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleReport)))
  "Returns string type for a message object of type 'ThrottleReport"
  "control_msgs/ThrottleReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleReport>)))
  "Returns md5sum for a message object of type '<ThrottleReport>"
  "daef74a19d1d312c3656ecf3c3a9c5ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleReport)))
  "Returns md5sum for a message object of type 'ThrottleReport"
  "daef74a19d1d312c3656ecf3c3a9c5ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleReport>)))
  "Returns full string definition for message of type '<ThrottleReport>"
  (cl:format cl:nil "Header header~%float32 throttle~%control_msgs/EngineReport engine_status~%float32 throttle_pedal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/EngineReport~%Header header~%float32 engine_rpm~%float32 engine_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleReport)))
  "Returns full string definition for message of type 'ThrottleReport"
  (cl:format cl:nil "Header header~%float32 throttle~%control_msgs/EngineReport engine_status~%float32 throttle_pedal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/EngineReport~%Header header~%float32 engine_rpm~%float32 engine_load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'engine_status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleReport
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':engine_status (engine_status msg))
    (cl:cons ':throttle_pedal (throttle_pedal msg))
))
