; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude LampCmd.msg.html

(cl:defclass <LampCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lamp_1
    :reader lamp_1
    :initarg :lamp_1
    :type cl:boolean
    :initform cl:nil)
   (lamp_2
    :reader lamp_2
    :initarg :lamp_2
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LampCmd (<LampCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LampCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LampCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<LampCmd> is deprecated: use control_msgs-msg:LampCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LampCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lamp_1-val :lambda-list '(m))
(cl:defmethod lamp_1-val ((m <LampCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lamp_1-val is deprecated.  Use control_msgs-msg:lamp_1 instead.")
  (lamp_1 m))

(cl:ensure-generic-function 'lamp_2-val :lambda-list '(m))
(cl:defmethod lamp_2-val ((m <LampCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lamp_2-val is deprecated.  Use control_msgs-msg:lamp_2 instead.")
  (lamp_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LampCmd>) ostream)
  "Serializes a message object of type '<LampCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lamp_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lamp_2) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LampCmd>) istream)
  "Deserializes a message object of type '<LampCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'lamp_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lamp_2) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LampCmd>)))
  "Returns string type for a message object of type '<LampCmd>"
  "control_msgs/LampCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LampCmd)))
  "Returns string type for a message object of type 'LampCmd"
  "control_msgs/LampCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LampCmd>)))
  "Returns md5sum for a message object of type '<LampCmd>"
  "b5d7ffb50b153f2bd203104ec5d6fe13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LampCmd)))
  "Returns md5sum for a message object of type 'LampCmd"
  "b5d7ffb50b153f2bd203104ec5d6fe13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LampCmd>)))
  "Returns full string definition for message of type '<LampCmd>"
  (cl:format cl:nil "Header header~%bool lamp_1~%bool lamp_2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LampCmd)))
  "Returns full string definition for message of type 'LampCmd"
  (cl:format cl:nil "Header header~%bool lamp_1~%bool lamp_2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LampCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LampCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LampCmd
    (cl:cons ':header (header msg))
    (cl:cons ':lamp_1 (lamp_1 msg))
    (cl:cons ':lamp_2 (lamp_2 msg))
))
