; Auto-generated. Do not edit!


(cl:in-package speed_debug_msgs-msg)


;//! \htmlinclude speed_debug.msg.html

(cl:defclass <speed_debug> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector speed_debug_msgs-msg:super_point)
   :initform (cl:make-array 0 :element-type 'speed_debug_msgs-msg:super_point :initial-element (cl:make-instance 'speed_debug_msgs-msg:super_point)))
   (cur_steer
    :reader cur_steer
    :initarg :cur_steer
    :type speed_debug_msgs-msg:cur_steer
    :initform (cl:make-instance 'speed_debug_msgs-msg:cur_steer))
   (issue
    :reader issue
    :initarg :issue
    :type speed_debug_msgs-msg:speed_issue
    :initform (cl:make-instance 'speed_debug_msgs-msg:speed_issue))
   (pub_ros_time
    :reader pub_ros_time
    :initarg :pub_ros_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass speed_debug (<speed_debug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_debug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_debug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_debug_msgs-msg:<speed_debug> is deprecated: use speed_debug_msgs-msg:speed_debug instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <speed_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:points-val is deprecated.  Use speed_debug_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'cur_steer-val :lambda-list '(m))
(cl:defmethod cur_steer-val ((m <speed_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:cur_steer-val is deprecated.  Use speed_debug_msgs-msg:cur_steer instead.")
  (cur_steer m))

(cl:ensure-generic-function 'issue-val :lambda-list '(m))
(cl:defmethod issue-val ((m <speed_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:issue-val is deprecated.  Use speed_debug_msgs-msg:issue instead.")
  (issue m))

(cl:ensure-generic-function 'pub_ros_time-val :lambda-list '(m))
(cl:defmethod pub_ros_time-val ((m <speed_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_debug_msgs-msg:pub_ros_time-val is deprecated.  Use speed_debug_msgs-msg:pub_ros_time instead.")
  (pub_ros_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_debug>) ostream)
  "Serializes a message object of type '<speed_debug>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_steer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'issue) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pub_ros_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_debug>) istream)
  "Deserializes a message object of type '<speed_debug>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'speed_debug_msgs-msg:super_point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_steer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'issue) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pub_ros_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_debug>)))
  "Returns string type for a message object of type '<speed_debug>"
  "speed_debug_msgs/speed_debug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_debug)))
  "Returns string type for a message object of type 'speed_debug"
  "speed_debug_msgs/speed_debug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_debug>)))
  "Returns md5sum for a message object of type '<speed_debug>"
  "d834a9927e9daa0494e9fa3070e36b02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_debug)))
  "Returns md5sum for a message object of type 'speed_debug"
  "d834a9927e9daa0494e9fa3070e36b02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_debug>)))
  "Returns full string definition for message of type '<speed_debug>"
  (cl:format cl:nil "super_point[] points~%cur_steer cur_steer~%speed_issue issue~%float64 pub_ros_time~%================================================================================~%MSG: speed_debug_msgs/super_point~%v v~%curv curv~%speed_time time~%float64 x~%float64 y~%float64 s~%float64 acc~%================================================================================~%MSG: speed_debug_msgs/v~%float64 v_max_dynamic~%float64 v_lat_acc~%float64 v_lon_acc~%float64 v_slide_dec~%float64 v_lon_dec~%float64 v_jerk~%float64 v_blind~%float64 v_constrained~%================================================================================~%MSG: speed_debug_msgs/curv~%float64 curv_final~%================================================================================~%MSG: speed_debug_msgs/speed_time~%float64 time~%================================================================================~%MSG: speed_debug_msgs/cur_steer~%float64 steer~%================================================================================~%MSG: speed_debug_msgs/speed_issue~%float64 v~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_debug)))
  "Returns full string definition for message of type 'speed_debug"
  (cl:format cl:nil "super_point[] points~%cur_steer cur_steer~%speed_issue issue~%float64 pub_ros_time~%================================================================================~%MSG: speed_debug_msgs/super_point~%v v~%curv curv~%speed_time time~%float64 x~%float64 y~%float64 s~%float64 acc~%================================================================================~%MSG: speed_debug_msgs/v~%float64 v_max_dynamic~%float64 v_lat_acc~%float64 v_lon_acc~%float64 v_slide_dec~%float64 v_lon_dec~%float64 v_jerk~%float64 v_blind~%float64 v_constrained~%================================================================================~%MSG: speed_debug_msgs/curv~%float64 curv_final~%================================================================================~%MSG: speed_debug_msgs/speed_time~%float64 time~%================================================================================~%MSG: speed_debug_msgs/cur_steer~%float64 steer~%================================================================================~%MSG: speed_debug_msgs/speed_issue~%float64 v~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_debug>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_steer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'issue))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_debug>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_debug
    (cl:cons ':points (points msg))
    (cl:cons ':cur_steer (cur_steer msg))
    (cl:cons ':issue (issue msg))
    (cl:cons ':pub_ros_time (pub_ros_time msg))
))
