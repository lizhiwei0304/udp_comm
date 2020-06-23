; Auto-generated. Do not edit!


(cl:in-package lanelet_map_msgs-msg)


;//! \htmlinclude Regulatory.msg.html

(cl:defclass <Regulatory> (roslisp-msg-protocol:ros-message)
  ((special_nodes
    :reader special_nodes
    :initarg :special_nodes
    :type (cl:vector lanelet_map_msgs-msg:Node)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Node :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Node)))
   (special_ways
    :reader special_ways
    :initarg :special_ways
    :type (cl:vector lanelet_map_msgs-msg:Way)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Way :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Way))))
)

(cl:defclass Regulatory (<Regulatory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Regulatory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Regulatory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lanelet_map_msgs-msg:<Regulatory> is deprecated: use lanelet_map_msgs-msg:Regulatory instead.")))

(cl:ensure-generic-function 'special_nodes-val :lambda-list '(m))
(cl:defmethod special_nodes-val ((m <Regulatory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:special_nodes-val is deprecated.  Use lanelet_map_msgs-msg:special_nodes instead.")
  (special_nodes m))

(cl:ensure-generic-function 'special_ways-val :lambda-list '(m))
(cl:defmethod special_ways-val ((m <Regulatory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:special_ways-val is deprecated.  Use lanelet_map_msgs-msg:special_ways instead.")
  (special_ways m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Regulatory>) ostream)
  "Serializes a message object of type '<Regulatory>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'special_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'special_nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'special_ways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'special_ways))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Regulatory>) istream)
  "Deserializes a message object of type '<Regulatory>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'special_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'special_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Node))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'special_ways) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'special_ways)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Way))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Regulatory>)))
  "Returns string type for a message object of type '<Regulatory>"
  "lanelet_map_msgs/Regulatory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Regulatory)))
  "Returns string type for a message object of type 'Regulatory"
  "lanelet_map_msgs/Regulatory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Regulatory>)))
  "Returns md5sum for a message object of type '<Regulatory>"
  "6181abd984439c0ed4c1b41afc66d563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Regulatory)))
  "Returns md5sum for a message object of type 'Regulatory"
  "6181abd984439c0ed4c1b41afc66d563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Regulatory>)))
  "Returns full string definition for message of type '<Regulatory>"
  (cl:format cl:nil "Node[] special_nodes~%Way[] special_ways~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Regulatory)))
  "Returns full string definition for message of type 'Regulatory"
  (cl:format cl:nil "Node[] special_nodes~%Way[] special_ways~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Regulatory>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'special_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'special_ways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Regulatory>))
  "Converts a ROS message object to a list"
  (cl:list 'Regulatory
    (cl:cons ':special_nodes (special_nodes msg))
    (cl:cons ':special_ways (special_ways msg))
))
