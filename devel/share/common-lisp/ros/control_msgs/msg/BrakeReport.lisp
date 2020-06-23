; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude BrakeReport.msg.html

(cl:defclass <BrakeReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake_ESC_left
    :reader brake_ESC_left
    :initarg :brake_ESC_left
    :type cl:float
    :initform 0.0)
   (brake_ESC_right
    :reader brake_ESC_right
    :initarg :brake_ESC_right
    :type cl:float
    :initform 0.0)
   (brake_wheel
    :reader brake_wheel
    :initarg :brake_wheel
    :type control_msgs-msg:WheelStateReport
    :initform (cl:make-instance 'control_msgs-msg:WheelStateReport))
   (brake_pedal
    :reader brake_pedal
    :initarg :brake_pedal
    :type cl:float
    :initform 0.0))
)

(cl:defclass BrakeReport (<BrakeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<BrakeReport> is deprecated: use control_msgs-msg:BrakeReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake_ESC_left-val :lambda-list '(m))
(cl:defmethod brake_ESC_left-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_ESC_left-val is deprecated.  Use control_msgs-msg:brake_ESC_left instead.")
  (brake_ESC_left m))

(cl:ensure-generic-function 'brake_ESC_right-val :lambda-list '(m))
(cl:defmethod brake_ESC_right-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_ESC_right-val is deprecated.  Use control_msgs-msg:brake_ESC_right instead.")
  (brake_ESC_right m))

(cl:ensure-generic-function 'brake_wheel-val :lambda-list '(m))
(cl:defmethod brake_wheel-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_wheel-val is deprecated.  Use control_msgs-msg:brake_wheel instead.")
  (brake_wheel m))

(cl:ensure-generic-function 'brake_pedal-val :lambda-list '(m))
(cl:defmethod brake_pedal-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_pedal-val is deprecated.  Use control_msgs-msg:brake_pedal instead.")
  (brake_pedal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeReport>) ostream)
  "Serializes a message object of type '<BrakeReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_ESC_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_ESC_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_wheel) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_pedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeReport>) istream)
  "Deserializes a message object of type '<BrakeReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_ESC_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_ESC_right) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_wheel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_pedal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeReport>)))
  "Returns string type for a message object of type '<BrakeReport>"
  "control_msgs/BrakeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeReport)))
  "Returns string type for a message object of type 'BrakeReport"
  "control_msgs/BrakeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeReport>)))
  "Returns md5sum for a message object of type '<BrakeReport>"
  "5b70ede16519a0d621c3ea9bdf833527")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeReport)))
  "Returns md5sum for a message object of type 'BrakeReport"
  "5b70ede16519a0d621c3ea9bdf833527")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeReport>)))
  "Returns full string definition for message of type '<BrakeReport>"
  (cl:format cl:nil "Header header~%~%float32 brake_ESC_left~%float32 brake_ESC_right~%~%control_msgs/WheelStateReport brake_wheel~%~%float32 brake_pedal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeReport)))
  "Returns full string definition for message of type 'BrakeReport"
  (cl:format cl:nil "Header header~%~%float32 brake_ESC_left~%float32 brake_ESC_right~%~%control_msgs/WheelStateReport brake_wheel~%~%float32 brake_pedal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_wheel))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeReport
    (cl:cons ':header (header msg))
    (cl:cons ':brake_ESC_left (brake_ESC_left msg))
    (cl:cons ':brake_ESC_right (brake_ESC_right msg))
    (cl:cons ':brake_wheel (brake_wheel msg))
    (cl:cons ':brake_pedal (brake_pedal msg))
))
