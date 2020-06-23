; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude cur_steer.msg.html

(cl:defclass <cur_steer> (roslisp-msg-protocol:ros-message)
  ((steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass cur_steer (<cur_steer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cur_steer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cur_steer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<cur_steer> is deprecated: use speed_debug_msgs-msg:cur_steer instead.")))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <cur_steer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:steer-val is deprecated.  Use speed_debug_msgs-msg:steer instead.")
  (steer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cur_steer>) ostream)
  "Serializes a message object of type '<cur_steer>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cur_steer>) istream)
  "Deserializes a message object of type '<cur_steer>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cur_steer>)))
  "Returns string type for a message object of type '<cur_steer>"
  "speed_debug_msgs/cur_steer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cur_steer)))
  "Returns string type for a message object of type 'cur_steer"
  "speed_debug_msgs/cur_steer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cur_steer>)))
  "Returns md5sum for a message object of type '<cur_steer>"
  "d559fc901d9e414fce2d38e5b85af3e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cur_steer)))
  "Returns md5sum for a message object of type 'cur_steer"
  "d559fc901d9e414fce2d38e5b85af3e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cur_steer>)))
  "Returns full string definition for message of type '<cur_steer>"
  (cl:format cl:nil "float64 steer~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cur_steer)))
  "Returns full string definition for message of type 'cur_steer"
  (cl:format cl:nil "float64 steer~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cur_steer>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cur_steer>))
  "Converts a ROS message object to a list"
  (cl:list 'cur_steer
    (cl:cons ':steer (steer msg))
))
