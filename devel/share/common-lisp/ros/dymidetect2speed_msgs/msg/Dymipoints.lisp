; Auto-generated. Do not edit!


(cl:in-package dymidetect2speed_msgs-msg)


;//! \htmlinclude Dymipoints.msg.html

(cl:defclass <Dymipoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dymipoints
    :reader dymipoints
    :initarg :dymipoints
    :type (cl:vector dymidetect2speed_msgs-msg:Dymipoint)
   :initform (cl:make-array 0 :element-type 'dymidetect2speed_msgs-msg:Dymipoint :initial-element (cl:make-instance 'dymidetect2speed_msgs-msg:Dymipoint))))
)

(cl:defclass Dymipoints (<Dymipoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dymipoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dymipoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dymidetect2speed_msgs-msg:<Dymipoints> is deprecated: use dymidetect2speed_msgs-msg:Dymipoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Dymipoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:header-val is deprecated.  Use dymidetect2speed_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dymipoints-val :lambda-list '(m))
(cl:defmethod dymipoints-val ((m <Dymipoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:dymipoints-val is deprecated.  Use dymidetect2speed_msgs-msg:dymipoints instead.")
  (dymipoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dymipoints>) ostream)
  "Serializes a message object of type '<Dymipoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dymipoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dymipoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dymipoints>) istream)
  "Deserializes a message object of type '<Dymipoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dymipoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dymipoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dymidetect2speed_msgs-msg:Dymipoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dymipoints>)))
  "Returns string type for a message object of type '<Dymipoints>"
  "dymidetect2speed_msgs/Dymipoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dymipoints)))
  "Returns string type for a message object of type 'Dymipoints"
  "dymidetect2speed_msgs/Dymipoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dymipoints>)))
  "Returns md5sum for a message object of type '<Dymipoints>"
  "f332c1b2f057ff022a7fac3fdfcee363")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dymipoints)))
  "Returns md5sum for a message object of type 'Dymipoints"
  "f332c1b2f057ff022a7fac3fdfcee363")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dymipoints>)))
  "Returns full string definition for message of type '<Dymipoints>"
  (cl:format cl:nil "std_msgs/Header header~%Dymipoint[] dymipoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dymidetect2speed_msgs/Dymipoint~%geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dymipoints)))
  "Returns full string definition for message of type 'Dymipoints"
  (cl:format cl:nil "std_msgs/Header header~%Dymipoint[] dymipoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dymidetect2speed_msgs/Dymipoint~%geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dymipoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dymipoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dymipoints>))
  "Converts a ROS message object to a list"
  (cl:list 'Dymipoints
    (cl:cons ':header (header msg))
    (cl:cons ':dymipoints (dymipoints msg))
))
