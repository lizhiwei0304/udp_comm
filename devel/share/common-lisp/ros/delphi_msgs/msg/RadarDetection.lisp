; Auto-generated. Do not edit!


(cl:in-package delphi_msgs-msg)


;//! \htmlinclude RadarDetection.msg.html

(cl:defclass <RadarDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ogmwidth
    :reader ogmwidth
    :initarg :ogmwidth
    :type cl:fixnum
    :initform 0)
   (ogmheight
    :reader ogmheight
    :initarg :ogmheight
    :type cl:fixnum
    :initform 0)
   (vehicle_x
    :reader vehicle_x
    :initarg :vehicle_x
    :type cl:fixnum
    :initform 0)
   (vehicle_y
    :reader vehicle_y
    :initarg :vehicle_y
    :type cl:fixnum
    :initform 0)
   (ogmresolution
    :reader ogmresolution
    :initarg :ogmresolution
    :type cl:float
    :initform 0.0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarDetection (<RadarDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delphi_msgs-msg:<RadarDetection> is deprecated: use delphi_msgs-msg:RadarDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:header-val is deprecated.  Use delphi_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ogmwidth-val :lambda-list '(m))
(cl:defmethod ogmwidth-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:ogmwidth-val is deprecated.  Use delphi_msgs-msg:ogmwidth instead.")
  (ogmwidth m))

(cl:ensure-generic-function 'ogmheight-val :lambda-list '(m))
(cl:defmethod ogmheight-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:ogmheight-val is deprecated.  Use delphi_msgs-msg:ogmheight instead.")
  (ogmheight m))

(cl:ensure-generic-function 'vehicle_x-val :lambda-list '(m))
(cl:defmethod vehicle_x-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:vehicle_x-val is deprecated.  Use delphi_msgs-msg:vehicle_x instead.")
  (vehicle_x m))

(cl:ensure-generic-function 'vehicle_y-val :lambda-list '(m))
(cl:defmethod vehicle_y-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:vehicle_y-val is deprecated.  Use delphi_msgs-msg:vehicle_y instead.")
  (vehicle_y m))

(cl:ensure-generic-function 'ogmresolution-val :lambda-list '(m))
(cl:defmethod ogmresolution-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:ogmresolution-val is deprecated.  Use delphi_msgs-msg:ogmresolution instead.")
  (ogmresolution m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:data-val is deprecated.  Use delphi_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delphi_msgs-msg:flag-val is deprecated.  Use delphi_msgs-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarDetection>) ostream)
  "Serializes a message object of type '<RadarDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ogmwidth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ogmheight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vehicle_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vehicle_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ogmresolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarDetection>) istream)
  "Deserializes a message object of type '<RadarDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ogmwidth) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ogmheight) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ogmresolution) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarDetection>)))
  "Returns string type for a message object of type '<RadarDetection>"
  "delphi_msgs/RadarDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarDetection)))
  "Returns string type for a message object of type 'RadarDetection"
  "delphi_msgs/RadarDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarDetection>)))
  "Returns md5sum for a message object of type '<RadarDetection>"
  "d8acd0ff394da2a01341307613e90de1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarDetection)))
  "Returns md5sum for a message object of type 'RadarDetection"
  "d8acd0ff394da2a01341307613e90de1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarDetection>)))
  "Returns full string definition for message of type '<RadarDetection>"
  (cl:format cl:nil "std_msgs/Header header~%int16 ogmwidth~%int16 ogmheight~%int16 vehicle_x~%int16 vehicle_y~%float32 ogmresolution~%int16[] data~%int8 flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarDetection)))
  "Returns full string definition for message of type 'RadarDetection"
  (cl:format cl:nil "std_msgs/Header header~%int16 ogmwidth~%int16 ogmheight~%int16 vehicle_x~%int16 vehicle_y~%float32 ogmresolution~%int16[] data~%int8 flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarDetection
    (cl:cons ':header (header msg))
    (cl:cons ':ogmwidth (ogmwidth msg))
    (cl:cons ':ogmheight (ogmheight msg))
    (cl:cons ':vehicle_x (vehicle_x msg))
    (cl:cons ':vehicle_y (vehicle_y msg))
    (cl:cons ':ogmresolution (ogmresolution msg))
    (cl:cons ':data (data msg))
    (cl:cons ':flag (flag msg))
))
