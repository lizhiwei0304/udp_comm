; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude curv.msg.html

(cl:defclass <curv> (roslisp-msg-protocol:ros-message)
  ((curv_final
    :reader curv_final
    :initarg :curv_final
    :type cl:float
    :initform 0.0))
)

(cl:defclass curv (<curv>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <curv>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'curv)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<curv> is deprecated: use speed_debug_msgs-msg:curv instead.")))

(cl:ensure-generic-function 'curv_final-val :lambda-list '(m))
(cl:defmethod curv_final-val ((m <curv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:curv_final-val is deprecated.  Use speed_debug_msgs-msg:curv_final instead.")
  (curv_final m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <curv>) ostream)
  "Serializes a message object of type '<curv>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curv_final))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <curv>) istream)
  "Deserializes a message object of type '<curv>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curv_final) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<curv>)))
  "Returns string type for a message object of type '<curv>"
  "speed_debug_msgs/curv")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'curv)))
  "Returns string type for a message object of type 'curv"
  "speed_debug_msgs/curv")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<curv>)))
  "Returns md5sum for a message object of type '<curv>"
  "097b555501edfa9e055b8ced874a3825")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'curv)))
  "Returns md5sum for a message object of type 'curv"
  "097b555501edfa9e055b8ced874a3825")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<curv>)))
  "Returns full string definition for message of type '<curv>"
  (cl:format cl:nil "float64 curv_final~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'curv)))
  "Returns full string definition for message of type 'curv"
  (cl:format cl:nil "float64 curv_final~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <curv>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <curv>))
  "Converts a ROS message object to a list"
  (cl:list 'curv
    (cl:cons ':curv_final (curv_final msg))
))
