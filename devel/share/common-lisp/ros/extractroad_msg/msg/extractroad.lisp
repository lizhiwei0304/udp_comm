; Auto-generated. Do not edit!


(cl:in-package extractroad_msg-msg)


;//! \htmlinclude extractroad.msg.html

(cl:defclass <extractroad> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roadcount
    :reader roadcount
    :initarg :roadcount
    :type cl:fixnum
    :initform 0)
   (vehicle_point
    :reader vehicle_point
    :initarg :vehicle_point
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (leadpoints
    :reader leadpoints
    :initarg :leadpoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass extractroad (<extractroad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <extractroad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'extractroad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extractroad_msg-msg:<extractroad> is deprecated: use extractroad_msg-msg:extractroad instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <extractroad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extractroad_msg-msg:header-val is deprecated.  Use extractroad_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roadcount-val :lambda-list '(m))
(cl:defmethod roadcount-val ((m <extractroad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extractroad_msg-msg:roadcount-val is deprecated.  Use extractroad_msg-msg:roadcount instead.")
  (roadcount m))

(cl:ensure-generic-function 'vehicle_point-val :lambda-list '(m))
(cl:defmethod vehicle_point-val ((m <extractroad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extractroad_msg-msg:vehicle_point-val is deprecated.  Use extractroad_msg-msg:vehicle_point instead.")
  (vehicle_point m))

(cl:ensure-generic-function 'leadpoints-val :lambda-list '(m))
(cl:defmethod leadpoints-val ((m <extractroad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extractroad_msg-msg:leadpoints-val is deprecated.  Use extractroad_msg-msg:leadpoints instead.")
  (leadpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <extractroad>) ostream)
  "Serializes a message object of type '<extractroad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'roadcount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'vehicle_point))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'leadpoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'leadpoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <extractroad>) istream)
  "Deserializes a message object of type '<extractroad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roadcount) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'vehicle_point) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'vehicle_point)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'leadpoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'leadpoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<extractroad>)))
  "Returns string type for a message object of type '<extractroad>"
  "extractroad_msg/extractroad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'extractroad)))
  "Returns string type for a message object of type 'extractroad"
  "extractroad_msg/extractroad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<extractroad>)))
  "Returns md5sum for a message object of type '<extractroad>"
  "cc64a4728149eec5d7e18874d8617290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'extractroad)))
  "Returns md5sum for a message object of type 'extractroad"
  "cc64a4728149eec5d7e18874d8617290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<extractroad>)))
  "Returns full string definition for message of type '<extractroad>"
  (cl:format cl:nil "~%std_msgs/Header header~%int16 roadcount~%float64[2] vehicle_point~%float64[] leadpoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'extractroad)))
  "Returns full string definition for message of type 'extractroad"
  (cl:format cl:nil "~%std_msgs/Header header~%int16 roadcount~%float64[2] vehicle_point~%float64[] leadpoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <extractroad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'leadpoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <extractroad>))
  "Converts a ROS message object to a list"
  (cl:list 'extractroad
    (cl:cons ':header (header msg))
    (cl:cons ':roadcount (roadcount msg))
    (cl:cons ':vehicle_point (vehicle_point msg))
    (cl:cons ':leadpoints (leadpoints msg))
))
