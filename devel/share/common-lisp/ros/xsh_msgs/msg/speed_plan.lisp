; Auto-generated. Do not edit!


(cl:in-package xsh_msgs-msg)


;//! \htmlinclude speed_plan.msg.html

(cl:defclass <speed_plan> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (point_num
    :reader point_num
    :initarg :point_num
    :type cl:fixnum
    :initform 0)
   (plan_time
    :reader plan_time
    :initarg :plan_time
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (plan_speed
    :reader plan_speed
    :initarg :plan_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass speed_plan (<speed_plan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_plan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_plan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xsh_msgs-msg:<speed_plan> is deprecated: use xsh_msgs-msg:speed_plan instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <speed_plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xsh_msgs-msg:time-val is deprecated.  Use xsh_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'point_num-val :lambda-list '(m))
(cl:defmethod point_num-val ((m <speed_plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xsh_msgs-msg:point_num-val is deprecated.  Use xsh_msgs-msg:point_num instead.")
  (point_num m))

(cl:ensure-generic-function 'plan_time-val :lambda-list '(m))
(cl:defmethod plan_time-val ((m <speed_plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xsh_msgs-msg:plan_time-val is deprecated.  Use xsh_msgs-msg:plan_time instead.")
  (plan_time m))

(cl:ensure-generic-function 'plan_speed-val :lambda-list '(m))
(cl:defmethod plan_speed-val ((m <speed_plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xsh_msgs-msg:plan_speed-val is deprecated.  Use xsh_msgs-msg:plan_speed instead.")
  (plan_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_plan>) ostream)
  "Serializes a message object of type '<speed_plan>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'point_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan_time))))
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
   (cl:slot-value msg 'plan_time))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan_speed))))
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
   (cl:slot-value msg 'plan_speed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_plan>) istream)
  "Deserializes a message object of type '<speed_plan>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan_time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan_time)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan_speed)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_plan>)))
  "Returns string type for a message object of type '<speed_plan>"
  "xsh_msgs/speed_plan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_plan)))
  "Returns string type for a message object of type 'speed_plan"
  "xsh_msgs/speed_plan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_plan>)))
  "Returns md5sum for a message object of type '<speed_plan>"
  "e3e98dffdc5b35d04daac2e24f81e4f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_plan)))
  "Returns md5sum for a message object of type 'speed_plan"
  "e3e98dffdc5b35d04daac2e24f81e4f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_plan>)))
  "Returns full string definition for message of type '<speed_plan>"
  (cl:format cl:nil "float64 time~%int16 point_num~%float64[] plan_time~%float64[] plan_speed~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_plan)))
  "Returns full string definition for message of type 'speed_plan"
  (cl:format cl:nil "float64 time~%int16 point_num~%float64[] plan_time~%float64[] plan_speed~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_plan>))
  (cl:+ 0
     8
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan_time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_plan>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_plan
    (cl:cons ':time (time msg))
    (cl:cons ':point_num (point_num msg))
    (cl:cons ':plan_time (plan_time msg))
    (cl:cons ':plan_speed (plan_speed msg))
))
