; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude speed_issue.msg.html

(cl:defclass <speed_issue> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass speed_issue (<speed_issue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_issue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_issue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<speed_issue> is deprecated: use speed_debug_msgs-msg:speed_issue instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <speed_issue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:v-val is deprecated.  Use speed_debug_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <speed_issue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:acc-val is deprecated.  Use speed_debug_msgs-msg:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_issue>) ostream)
  "Serializes a message object of type '<speed_issue>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_issue>) istream)
  "Deserializes a message object of type '<speed_issue>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_issue>)))
  "Returns string type for a message object of type '<speed_issue>"
  "speed_debug_msgs/speed_issue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_issue)))
  "Returns string type for a message object of type 'speed_issue"
  "speed_debug_msgs/speed_issue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_issue>)))
  "Returns md5sum for a message object of type '<speed_issue>"
  "ce1fb38e727855ee90e2d74b8df8c7ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_issue)))
  "Returns md5sum for a message object of type 'speed_issue"
  "ce1fb38e727855ee90e2d74b8df8c7ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_issue>)))
  "Returns full string definition for message of type '<speed_issue>"
  (cl:format cl:nil "float64 v~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_issue)))
  "Returns full string definition for message of type 'speed_issue"
  (cl:format cl:nil "float64 v~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_issue>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_issue>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_issue
    (cl:cons ':v (v msg))
    (cl:cons ':acc (acc msg))
))
