; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude ModeReport.msg.html

(cl:defclass <ModeReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:integer
    :initform 0)
   (speed_mode
    :reader speed_mode
    :initarg :speed_mode
    :type cl:integer
    :initform 0)
   (throttle_enable
    :reader throttle_enable
    :initarg :throttle_enable
    :type cl:boolean
    :initform cl:nil)
   (brake_enable
    :reader brake_enable
    :initarg :brake_enable
    :type cl:boolean
    :initform cl:nil)
   (steer_mode
    :reader steer_mode
    :initarg :steer_mode
    :type cl:integer
    :initform 0)
   (gear_mode
    :reader gear_mode
    :initarg :gear_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass ModeReport (<ModeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<ModeReport> is deprecated: use control_msgs-msg:ModeReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:auto_mode-val is deprecated.  Use control_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'speed_mode-val :lambda-list '(m))
(cl:defmethod speed_mode-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:speed_mode-val is deprecated.  Use control_msgs-msg:speed_mode instead.")
  (speed_mode m))

(cl:ensure-generic-function 'throttle_enable-val :lambda-list '(m))
(cl:defmethod throttle_enable-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_enable-val is deprecated.  Use control_msgs-msg:throttle_enable instead.")
  (throttle_enable m))

(cl:ensure-generic-function 'brake_enable-val :lambda-list '(m))
(cl:defmethod brake_enable-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_enable-val is deprecated.  Use control_msgs-msg:brake_enable instead.")
  (brake_enable m))

(cl:ensure-generic-function 'steer_mode-val :lambda-list '(m))
(cl:defmethod steer_mode-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_mode-val is deprecated.  Use control_msgs-msg:steer_mode instead.")
  (steer_mode m))

(cl:ensure-generic-function 'gear_mode-val :lambda-list '(m))
(cl:defmethod gear_mode-val ((m <ModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear_mode-val is deprecated.  Use control_msgs-msg:gear_mode instead.")
  (gear_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeReport>) ostream)
  "Serializes a message object of type '<ModeReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'auto_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'steer_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeReport>) istream)
  "Deserializes a message object of type '<ModeReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auto_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'throttle_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeReport>)))
  "Returns string type for a message object of type '<ModeReport>"
  "control_msgs/ModeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeReport)))
  "Returns string type for a message object of type 'ModeReport"
  "control_msgs/ModeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeReport>)))
  "Returns md5sum for a message object of type '<ModeReport>"
  "c77a6f2a30cb70e9beb64929e4a2227b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeReport)))
  "Returns md5sum for a message object of type 'ModeReport"
  "c77a6f2a30cb70e9beb64929e4a2227b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeReport>)))
  "Returns full string definition for message of type '<ModeReport>"
  (cl:format cl:nil "Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeReport)))
  "Returns full string definition for message of type 'ModeReport"
  (cl:format cl:nil "Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeReport
    (cl:cons ':header (header msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':speed_mode (speed_mode msg))
    (cl:cons ':throttle_enable (throttle_enable msg))
    (cl:cons ':brake_enable (brake_enable msg))
    (cl:cons ':steer_mode (steer_mode msg))
    (cl:cons ':gear_mode (gear_mode msg))
))
