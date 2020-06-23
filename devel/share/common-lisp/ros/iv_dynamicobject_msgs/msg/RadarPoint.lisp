; Auto-generated. Do not edit!


(cl:in-package iv_dynamicobject_msgs-msg)


;//! \htmlinclude RadarPoint.msg.html

(cl:defclass <RadarPoint> (roslisp-msg-protocol:ros-message)
  ((target_ID
    :reader target_ID
    :initarg :target_ID
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
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
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (moving
    :reader moving
    :initarg :moving
    :type cl:fixnum
    :initform 0)
   (moving_fast
    :reader moving_fast
    :initarg :moving_fast
    :type cl:boolean
    :initform cl:nil)
   (moving_slow
    :reader moving_slow
    :initarg :moving_slow
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RadarPoint (<RadarPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_dynamicobject_msgs-msg:<RadarPoint> is deprecated: use iv_dynamicobject_msgs-msg:RadarPoint instead.")))

(cl:ensure-generic-function 'target_ID-val :lambda-list '(m))
(cl:defmethod target_ID-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:target_ID-val is deprecated.  Use iv_dynamicobject_msgs-msg:target_ID instead.")
  (target_ID m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:range-val is deprecated.  Use iv_dynamicobject_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:v-val is deprecated.  Use iv_dynamicobject_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:angle-val is deprecated.  Use iv_dynamicobject_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:x-val is deprecated.  Use iv_dynamicobject_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:y-val is deprecated.  Use iv_dynamicobject_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:valid-val is deprecated.  Use iv_dynamicobject_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:status-val is deprecated.  Use iv_dynamicobject_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:moving-val is deprecated.  Use iv_dynamicobject_msgs-msg:moving instead.")
  (moving m))

(cl:ensure-generic-function 'moving_fast-val :lambda-list '(m))
(cl:defmethod moving_fast-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:moving_fast-val is deprecated.  Use iv_dynamicobject_msgs-msg:moving_fast instead.")
  (moving_fast m))

(cl:ensure-generic-function 'moving_slow-val :lambda-list '(m))
(cl:defmethod moving_slow-val ((m <RadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:moving_slow-val is deprecated.  Use iv_dynamicobject_msgs-msg:moving_slow instead.")
  (moving_slow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarPoint>) ostream)
  "Serializes a message object of type '<RadarPoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving_fast) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving_slow) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarPoint>) istream)
  "Deserializes a message object of type '<RadarPoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'moving_fast) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'moving_slow) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarPoint>)))
  "Returns string type for a message object of type '<RadarPoint>"
  "iv_dynamicobject_msgs/RadarPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPoint)))
  "Returns string type for a message object of type 'RadarPoint"
  "iv_dynamicobject_msgs/RadarPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarPoint>)))
  "Returns md5sum for a message object of type '<RadarPoint>"
  "cba5c3ffed2f8ad0288b366e555ab33f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarPoint)))
  "Returns md5sum for a message object of type 'RadarPoint"
  "cba5c3ffed2f8ad0288b366e555ab33f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarPoint>)))
  "Returns full string definition for message of type '<RadarPoint>"
  (cl:format cl:nil "uint8 target_ID~%float32 range~%float32 v~%float32 angle~%float32 x~%float32 y~%bool valid~%uint8 status~%uint8 moving~%bool moving_fast~%bool moving_slow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarPoint)))
  "Returns full string definition for message of type 'RadarPoint"
  (cl:format cl:nil "uint8 target_ID~%float32 range~%float32 v~%float32 angle~%float32 x~%float32 y~%bool valid~%uint8 status~%uint8 moving~%bool moving_fast~%bool moving_slow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarPoint>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarPoint
    (cl:cons ':target_ID (target_ID msg))
    (cl:cons ':range (range msg))
    (cl:cons ':v (v msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':status (status msg))
    (cl:cons ':moving (moving msg))
    (cl:cons ':moving_fast (moving_fast msg))
    (cl:cons ':moving_slow (moving_slow msg))
))
