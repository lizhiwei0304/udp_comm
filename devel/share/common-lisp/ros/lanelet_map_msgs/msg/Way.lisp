; Auto-generated. Do not edit!


(cl:in-package lanelet_map_msgs-msg)


;//! \htmlinclude Way.msg.html

(cl:defclass <Way> (roslisp-msg-protocol:ros-message)
  ((task_area
    :reader task_area
    :initarg :task_area
    :type cl:string
    :initform "")
   (is_forward
    :reader is_forward
    :initarg :is_forward
    :type cl:fixnum
    :initform 0)
   (open_concave_obs_det
    :reader open_concave_obs_det
    :initarg :open_concave_obs_det
    :type cl:fixnum
    :initform 0)
   (open_dynamic_obs_det
    :reader open_dynamic_obs_det
    :initarg :open_dynamic_obs_det
    :type cl:fixnum
    :initform 0)
   (open_foggy_det
    :reader open_foggy_det
    :initarg :open_foggy_det
    :type cl:fixnum
    :initform 0)
   (open_water_det
    :reader open_water_det
    :initarg :open_water_det
    :type cl:fixnum
    :initform 0)
   (foggy_area
    :reader foggy_area
    :initarg :foggy_area
    :type cl:fixnum
    :initform 0)
   (lawn_area
    :reader lawn_area
    :initarg :lawn_area
    :type cl:fixnum
    :initform 0)
   (water_area
    :reader water_area
    :initarg :water_area
    :type cl:fixnum
    :initform 0)
   (vel_limit
    :reader vel_limit
    :initarg :vel_limit
    :type cl:float
    :initform 0.0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector lanelet_map_msgs-msg:Node)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Node :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Node))))
)

(cl:defclass Way (<Way>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Way>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Way)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lanelet_map_msgs-msg:<Way> is deprecated: use lanelet_map_msgs-msg:Way instead.")))

(cl:ensure-generic-function 'task_area-val :lambda-list '(m))
(cl:defmethod task_area-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:task_area-val is deprecated.  Use lanelet_map_msgs-msg:task_area instead.")
  (task_area m))

(cl:ensure-generic-function 'is_forward-val :lambda-list '(m))
(cl:defmethod is_forward-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:is_forward-val is deprecated.  Use lanelet_map_msgs-msg:is_forward instead.")
  (is_forward m))

(cl:ensure-generic-function 'open_concave_obs_det-val :lambda-list '(m))
(cl:defmethod open_concave_obs_det-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:open_concave_obs_det-val is deprecated.  Use lanelet_map_msgs-msg:open_concave_obs_det instead.")
  (open_concave_obs_det m))

(cl:ensure-generic-function 'open_dynamic_obs_det-val :lambda-list '(m))
(cl:defmethod open_dynamic_obs_det-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:open_dynamic_obs_det-val is deprecated.  Use lanelet_map_msgs-msg:open_dynamic_obs_det instead.")
  (open_dynamic_obs_det m))

(cl:ensure-generic-function 'open_foggy_det-val :lambda-list '(m))
(cl:defmethod open_foggy_det-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:open_foggy_det-val is deprecated.  Use lanelet_map_msgs-msg:open_foggy_det instead.")
  (open_foggy_det m))

(cl:ensure-generic-function 'open_water_det-val :lambda-list '(m))
(cl:defmethod open_water_det-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:open_water_det-val is deprecated.  Use lanelet_map_msgs-msg:open_water_det instead.")
  (open_water_det m))

(cl:ensure-generic-function 'foggy_area-val :lambda-list '(m))
(cl:defmethod foggy_area-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:foggy_area-val is deprecated.  Use lanelet_map_msgs-msg:foggy_area instead.")
  (foggy_area m))

(cl:ensure-generic-function 'lawn_area-val :lambda-list '(m))
(cl:defmethod lawn_area-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:lawn_area-val is deprecated.  Use lanelet_map_msgs-msg:lawn_area instead.")
  (lawn_area m))

(cl:ensure-generic-function 'water_area-val :lambda-list '(m))
(cl:defmethod water_area-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:water_area-val is deprecated.  Use lanelet_map_msgs-msg:water_area instead.")
  (water_area m))

(cl:ensure-generic-function 'vel_limit-val :lambda-list '(m))
(cl:defmethod vel_limit-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:vel_limit-val is deprecated.  Use lanelet_map_msgs-msg:vel_limit instead.")
  (vel_limit m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:points-val is deprecated.  Use lanelet_map_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Way>) ostream)
  "Serializes a message object of type '<Way>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_area))
  (cl:let* ((signed (cl:slot-value msg 'is_forward)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_concave_obs_det)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_dynamic_obs_det)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_foggy_det)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_water_det)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'foggy_area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lawn_area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'water_area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Way>) istream)
  "Deserializes a message object of type '<Way>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_area) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_area) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_forward) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_concave_obs_det) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_dynamic_obs_det) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_foggy_det) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_water_det) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'foggy_area) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lawn_area) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'water_area) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_limit) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Node))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Way>)))
  "Returns string type for a message object of type '<Way>"
  "lanelet_map_msgs/Way")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Way)))
  "Returns string type for a message object of type 'Way"
  "lanelet_map_msgs/Way")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Way>)))
  "Returns md5sum for a message object of type '<Way>"
  "3097cc04a1c9c7fa806bc8a9fb7f37c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Way)))
  "Returns md5sum for a message object of type 'Way"
  "3097cc04a1c9c7fa806bc8a9fb7f37c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Way>)))
  "Returns full string definition for message of type '<Way>"
  (cl:format cl:nil "string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Way)))
  "Returns full string definition for message of type 'Way"
  (cl:format cl:nil "string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Way>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_area))
     1
     1
     1
     1
     1
     1
     1
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Way>))
  "Converts a ROS message object to a list"
  (cl:list 'Way
    (cl:cons ':task_area (task_area msg))
    (cl:cons ':is_forward (is_forward msg))
    (cl:cons ':open_concave_obs_det (open_concave_obs_det msg))
    (cl:cons ':open_dynamic_obs_det (open_dynamic_obs_det msg))
    (cl:cons ':open_foggy_det (open_foggy_det msg))
    (cl:cons ':open_water_det (open_water_det msg))
    (cl:cons ':foggy_area (foggy_area msg))
    (cl:cons ':lawn_area (lawn_area msg))
    (cl:cons ':water_area (water_area msg))
    (cl:cons ':vel_limit (vel_limit msg))
    (cl:cons ':points (points msg))
))
