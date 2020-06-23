; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude EngineReport.msg.html

(cl:defclass <EngineReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (engine_rpm
    :reader engine_rpm
    :initarg :engine_rpm
    :type cl:float
    :initform 0.0)
   (engine_load
    :reader engine_load
    :initarg :engine_load
    :type cl:float
    :initform 0.0))
)

(cl:defclass EngineReport (<EngineReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EngineReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EngineReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<EngineReport> is deprecated: use control_msgs-msg:EngineReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EngineReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'engine_rpm-val :lambda-list '(m))
(cl:defmethod engine_rpm-val ((m <EngineReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:engine_rpm-val is deprecated.  Use control_msgs-msg:engine_rpm instead.")
  (engine_rpm m))

(cl:ensure-generic-function 'engine_load-val :lambda-list '(m))
(cl:defmethod engine_load-val ((m <EngineReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:engine_load-val is deprecated.  Use control_msgs-msg:engine_load instead.")
  (engine_load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EngineReport>) ostream)
  "Serializes a message object of type '<EngineReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engine_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engine_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EngineReport>) istream)
  "Deserializes a message object of type '<EngineReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_load) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EngineReport>)))
  "Returns string type for a message object of type '<EngineReport>"
  "control_msgs/EngineReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EngineReport)))
  "Returns string type for a message object of type 'EngineReport"
  "control_msgs/EngineReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EngineReport>)))
  "Returns md5sum for a message object of type '<EngineReport>"
  "af4e629629447104d3249e23f4f8884b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EngineReport)))
  "Returns md5sum for a message object of type 'EngineReport"
  "af4e629629447104d3249e23f4f8884b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EngineReport>)))
  "Returns full string definition for message of type '<EngineReport>"
  (cl:format cl:nil "Header header~%float32 engine_rpm~%float32 engine_load~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EngineReport)))
  "Returns full string definition for message of type 'EngineReport"
  (cl:format cl:nil "Header header~%float32 engine_rpm~%float32 engine_load~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EngineReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EngineReport>))
  "Converts a ROS message object to a list"
  (cl:list 'EngineReport
    (cl:cons ':header (header msg))
    (cl:cons ':engine_rpm (engine_rpm msg))
    (cl:cons ':engine_load (engine_load msg))
))
