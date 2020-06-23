; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude HMIReport.msg.html

(cl:defclass <HMIReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (manual_estop
    :reader manual_estop
    :initarg :manual_estop
    :type cl:boolean
    :initform cl:nil)
   (is_human_brake
    :reader is_human_brake
    :initarg :is_human_brake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HMIReport (<HMIReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<HMIReport> is deprecated: use control_msgs-msg:HMIReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'manual_estop-val :lambda-list '(m))
(cl:defmethod manual_estop-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:manual_estop-val is deprecated.  Use control_msgs-msg:manual_estop instead.")
  (manual_estop m))

(cl:ensure-generic-function 'is_human_brake-val :lambda-list '(m))
(cl:defmethod is_human_brake-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:is_human_brake-val is deprecated.  Use control_msgs-msg:is_human_brake instead.")
  (is_human_brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIReport>) ostream)
  "Serializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_human_brake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIReport>) istream)
  "Deserializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'manual_estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_human_brake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIReport>)))
  "Returns string type for a message object of type '<HMIReport>"
  "control_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIReport)))
  "Returns string type for a message object of type 'HMIReport"
  "control_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIReport>)))
  "Returns md5sum for a message object of type '<HMIReport>"
  "ee8fa796b8ba44bce25e3586e968c27d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIReport)))
  "Returns md5sum for a message object of type 'HMIReport"
  "ee8fa796b8ba44bce25e3586e968c27d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIReport>)))
  "Returns full string definition for message of type '<HMIReport>"
  (cl:format cl:nil "Header header~%~%bool manual_estop~%bool is_human_brake ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIReport)))
  "Returns full string definition for message of type 'HMIReport"
  (cl:format cl:nil "Header header~%~%bool manual_estop~%bool is_human_brake ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIReport
    (cl:cons ':header (header msg))
    (cl:cons ':manual_estop (manual_estop msg))
    (cl:cons ':is_human_brake (is_human_brake msg))
))
