; Auto-generated. Do not edit!


(cl:in-package dymidetect2speed_msgs-msg)


;//! \htmlinclude dymicol_point.msg.html

(cl:defclass <dymicol_point> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point_x
    :reader point_x
    :initarg :point_x
    :type cl:float
    :initform 0.0)
   (point_y
    :reader point_y
    :initarg :point_y
    :type cl:float
    :initform 0.0)
   (vel_to_dymicol
    :reader vel_to_dymicol
    :initarg :vel_to_dymicol
    :type cl:float
    :initform 0.0)
   (exp_vel
    :reader exp_vel
    :initarg :exp_vel
    :type cl:float
    :initform 0.0)
   (path_point_index
    :reader path_point_index
    :initarg :path_point_index
    :type cl:integer
    :initform 0)
   (collision
    :reader collision
    :initarg :collision
    :type cl:fixnum
    :initform 0))
)

(cl:defclass dymicol_point (<dymicol_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dymicol_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dymicol_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dymidetect2speed_msgs-msg:<dymicol_point> is deprecated: use dymidetect2speed_msgs-msg:dymicol_point instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:header-val is deprecated.  Use dymidetect2speed_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point_x-val :lambda-list '(m))
(cl:defmethod point_x-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:point_x-val is deprecated.  Use dymidetect2speed_msgs-msg:point_x instead.")
  (point_x m))

(cl:ensure-generic-function 'point_y-val :lambda-list '(m))
(cl:defmethod point_y-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:point_y-val is deprecated.  Use dymidetect2speed_msgs-msg:point_y instead.")
  (point_y m))

(cl:ensure-generic-function 'vel_to_dymicol-val :lambda-list '(m))
(cl:defmethod vel_to_dymicol-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:vel_to_dymicol-val is deprecated.  Use dymidetect2speed_msgs-msg:vel_to_dymicol instead.")
  (vel_to_dymicol m))

(cl:ensure-generic-function 'exp_vel-val :lambda-list '(m))
(cl:defmethod exp_vel-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:exp_vel-val is deprecated.  Use dymidetect2speed_msgs-msg:exp_vel instead.")
  (exp_vel m))

(cl:ensure-generic-function 'path_point_index-val :lambda-list '(m))
(cl:defmethod path_point_index-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:path_point_index-val is deprecated.  Use dymidetect2speed_msgs-msg:path_point_index instead.")
  (path_point_index m))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <dymicol_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:collision-val is deprecated.  Use dymidetect2speed_msgs-msg:collision instead.")
  (collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dymicol_point>) ostream)
  "Serializes a message object of type '<dymicol_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'point_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'point_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_to_dymicol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'exp_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'path_point_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'collision)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dymicol_point>) istream)
  "Deserializes a message object of type '<dymicol_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_to_dymicol) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exp_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_point_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'collision)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dymicol_point>)))
  "Returns string type for a message object of type '<dymicol_point>"
  "dymidetect2speed_msgs/dymicol_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dymicol_point)))
  "Returns string type for a message object of type 'dymicol_point"
  "dymidetect2speed_msgs/dymicol_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dymicol_point>)))
  "Returns md5sum for a message object of type '<dymicol_point>"
  "17116bc59d56961fa03b07a3caf2fd5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dymicol_point)))
  "Returns md5sum for a message object of type 'dymicol_point"
  "17116bc59d56961fa03b07a3caf2fd5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dymicol_point>)))
  "Returns full string definition for message of type '<dymicol_point>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 point_x~%float64 point_y~%float64 vel_to_dymicol~%float64 exp_vel~%int32 path_point_index~%uint8 collision~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dymicol_point)))
  "Returns full string definition for message of type 'dymicol_point"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 point_x~%float64 point_y~%float64 vel_to_dymicol~%float64 exp_vel~%int32 path_point_index~%uint8 collision~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dymicol_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dymicol_point>))
  "Converts a ROS message object to a list"
  (cl:list 'dymicol_point
    (cl:cons ':header (header msg))
    (cl:cons ':point_x (point_x msg))
    (cl:cons ':point_y (point_y msg))
    (cl:cons ':vel_to_dymicol (vel_to_dymicol msg))
    (cl:cons ':exp_vel (exp_vel msg))
    (cl:cons ':path_point_index (path_point_index msg))
    (cl:cons ':collision (collision msg))
))
