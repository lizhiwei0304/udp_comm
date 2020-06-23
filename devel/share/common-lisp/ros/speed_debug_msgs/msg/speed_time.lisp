; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude speed_time.msg.html

(cl:defclass <speed_time> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass speed_time (<speed_time>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_time>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_time)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<speed_time> is deprecated: use speed_debug_msgs-msg:speed_time instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <speed_time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:time-val is deprecated.  Use speed_debug_msgs-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_time>) ostream)
  "Serializes a message object of type '<speed_time>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_time>) istream)
  "Deserializes a message object of type '<speed_time>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_time>)))
  "Returns string type for a message object of type '<speed_time>"
  "speed_debug_msgs/speed_time")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_time)))
  "Returns string type for a message object of type 'speed_time"
  "speed_debug_msgs/speed_time")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_time>)))
  "Returns md5sum for a message object of type '<speed_time>"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_time)))
  "Returns md5sum for a message object of type 'speed_time"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_time>)))
  "Returns full string definition for message of type '<speed_time>"
  (cl:format cl:nil "float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_time)))
  "Returns full string definition for message of type 'speed_time"
  (cl:format cl:nil "float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_time>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_time>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_time
    (cl:cons ':time (time msg))
))
