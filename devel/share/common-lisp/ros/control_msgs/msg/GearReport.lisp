; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude GearReport.msg.html

(cl:defclass <GearReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GearReport (<GearReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<GearReport> is deprecated: use control_msgs-msg:GearReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GearReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <GearReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear-val is deprecated.  Use control_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearReport>) ostream)
  "Serializes a message object of type '<GearReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearReport>) istream)
  "Deserializes a message object of type '<GearReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearReport>)))
  "Returns string type for a message object of type '<GearReport>"
  "control_msgs/GearReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearReport)))
  "Returns string type for a message object of type 'GearReport"
  "control_msgs/GearReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearReport>)))
  "Returns md5sum for a message object of type '<GearReport>"
  "430b7d2eb6dc2833d0e239c29e9bbff1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearReport)))
  "Returns md5sum for a message object of type 'GearReport"
  "430b7d2eb6dc2833d0e239c29e9bbff1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearReport>)))
  "Returns full string definition for message of type '<GearReport>"
  (cl:format cl:nil "Header header~%uint8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearReport)))
  "Returns full string definition for message of type 'GearReport"
  (cl:format cl:nil "Header header~%uint8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearReport>))
  "Converts a ROS message object to a list"
  (cl:list 'GearReport
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
))
