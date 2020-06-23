; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude SteerReport.msg.html

(cl:defclass <SteerReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass SteerReport (<SteerReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<SteerReport> is deprecated: use control_msgs-msg:SteerReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteerReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <SteerReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer-val is deprecated.  Use control_msgs-msg:steer instead.")
  (steer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerReport>) ostream)
  "Serializes a message object of type '<SteerReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerReport>) istream)
  "Deserializes a message object of type '<SteerReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerReport>)))
  "Returns string type for a message object of type '<SteerReport>"
  "control_msgs/SteerReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerReport)))
  "Returns string type for a message object of type 'SteerReport"
  "control_msgs/SteerReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerReport>)))
  "Returns md5sum for a message object of type '<SteerReport>"
  "2d33f74805a9030736a4aaf233231043")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerReport)))
  "Returns md5sum for a message object of type 'SteerReport"
  "2d33f74805a9030736a4aaf233231043")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerReport>)))
  "Returns full string definition for message of type '<SteerReport>"
  (cl:format cl:nil "Header header~%float32 steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerReport)))
  "Returns full string definition for message of type 'SteerReport"
  (cl:format cl:nil "Header header~%float32 steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerReport
    (cl:cons ':header (header msg))
    (cl:cons ':steer (steer msg))
))
