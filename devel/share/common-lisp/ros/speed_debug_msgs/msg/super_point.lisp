; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude super_point.msg.html

(cl:defclass <super_point> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type speed_debug_msgs-msg:v
    :initform (cl:make-instance 'speed_debug_msgs-msg:v))
   (curv
    :reader curv
    :initarg :curv
    :type speed_debug_msgs-msg:curv
    :initform (cl:make-instance 'speed_debug_msgs-msg:curv))
   (time
    :reader time
    :initarg :time
    :type speed_debug_msgs-msg:speed_time
    :initform (cl:make-instance 'speed_debug_msgs-msg:speed_time))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass super_point (<super_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <super_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'super_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<super_point> is deprecated: use speed_debug_msgs-msg:super_point instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:v-val is deprecated.  Use speed_debug_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'curv-val :lambda-list '(m))
(cl:defmethod curv-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:curv-val is deprecated.  Use speed_debug_msgs-msg:curv instead.")
  (curv m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:time-val is deprecated.  Use speed_debug_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:x-val is deprecated.  Use speed_debug_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:y-val is deprecated.  Use speed_debug_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:s-val is deprecated.  Use speed_debug_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <super_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:acc-val is deprecated.  Use speed_debug_msgs-msg:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <super_point>) ostream)
  "Serializes a message object of type '<super_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <super_point>) istream)
  "Deserializes a message object of type '<super_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<super_point>)))
  "Returns string type for a message object of type '<super_point>"
  "speed_debug_msgs/super_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'super_point)))
  "Returns string type for a message object of type 'super_point"
  "speed_debug_msgs/super_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<super_point>)))
  "Returns md5sum for a message object of type '<super_point>"
  "fdc128084915a3dc47e2491ff229fb45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'super_point)))
  "Returns md5sum for a message object of type 'super_point"
  "fdc128084915a3dc47e2491ff229fb45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<super_point>)))
  "Returns full string definition for message of type '<super_point>"
  (cl:format cl:nil "v v~%curv curv~%speed_time time~%float64 x~%float64 y~%float64 s~%float64 acc~%================================================================================~%MSG: speed_debug_msgs/v~%float64 v_max_dynamic~%float64 v_lat_acc~%float64 v_lon_acc~%float64 v_slide_dec~%float64 v_lon_dec~%float64 v_jerk~%float64 v_blind~%float64 v_constrained~%================================================================================~%MSG: speed_debug_msgs/curv~%float64 curv_final~%================================================================================~%MSG: speed_debug_msgs/speed_time~%float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'super_point)))
  "Returns full string definition for message of type 'super_point"
  (cl:format cl:nil "v v~%curv curv~%speed_time time~%float64 x~%float64 y~%float64 s~%float64 acc~%================================================================================~%MSG: speed_debug_msgs/v~%float64 v_max_dynamic~%float64 v_lat_acc~%float64 v_lon_acc~%float64 v_slide_dec~%float64 v_lon_dec~%float64 v_jerk~%float64 v_blind~%float64 v_constrained~%================================================================================~%MSG: speed_debug_msgs/curv~%float64 curv_final~%================================================================================~%MSG: speed_debug_msgs/speed_time~%float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <super_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <super_point>))
  "Converts a ROS message object to a list"
  (cl:list 'super_point
    (cl:cons ':v (v msg))
    (cl:cons ':curv (curv msg))
    (cl:cons ':time (time msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':s (s msg))
    (cl:cons ':acc (acc msg))
))
