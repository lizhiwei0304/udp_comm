; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude BrakeCmd.msg.html

(cl:defclass <BrakeCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0))
)

(cl:defclass BrakeCmd (<BrakeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<BrakeCmd> is deprecated: use control_msgs-msg:BrakeCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake-val is deprecated.  Use control_msgs-msg:brake instead.")
  (brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeCmd>) ostream)
  "Serializes a message object of type '<BrakeCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeCmd>) istream)
  "Deserializes a message object of type '<BrakeCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeCmd>)))
  "Returns string type for a message object of type '<BrakeCmd>"
  "control_msgs/BrakeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeCmd)))
  "Returns string type for a message object of type 'BrakeCmd"
  "control_msgs/BrakeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeCmd>)))
  "Returns md5sum for a message object of type '<BrakeCmd>"
  "c5f1e634be0f890e31f3692497a137c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeCmd)))
  "Returns md5sum for a message object of type 'BrakeCmd"
  "c5f1e634be0f890e31f3692497a137c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeCmd>)))
  "Returns full string definition for message of type '<BrakeCmd>"
  (cl:format cl:nil "Header header~%float32 brake~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeCmd)))
  "Returns full string definition for message of type 'BrakeCmd"
  (cl:format cl:nil "Header header~%float32 brake~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeCmd
    (cl:cons ':header (header msg))
    (cl:cons ':brake (brake msg))
))
