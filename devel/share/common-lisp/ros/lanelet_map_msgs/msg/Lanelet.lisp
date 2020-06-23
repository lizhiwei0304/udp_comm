; Auto-generated. Do not edit!


(cl:in-package lanelet_map_msgs-msg)


;//! \htmlinclude Lanelet.msg.html

(cl:defclass <Lanelet> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (left_bound
    :reader left_bound
    :initarg :left_bound
    :type lanelet_map_msgs-msg:Way
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Way))
   (right_bound
    :reader right_bound
    :initarg :right_bound
    :type lanelet_map_msgs-msg:Way
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Way))
   (centerline
    :reader centerline
    :initarg :centerline
    :type lanelet_map_msgs-msg:Way
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Way))
   (regulatory_elements
    :reader regulatory_elements
    :initarg :regulatory_elements
    :type lanelet_map_msgs-msg:Regulatory
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Regulatory)))
)

(cl:defclass Lanelet (<Lanelet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lanelet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lanelet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lanelet_map_msgs-msg:<Lanelet> is deprecated: use lanelet_map_msgs-msg:Lanelet instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Lanelet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:id-val is deprecated.  Use lanelet_map_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'left_bound-val :lambda-list '(m))
(cl:defmethod left_bound-val ((m <Lanelet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:left_bound-val is deprecated.  Use lanelet_map_msgs-msg:left_bound instead.")
  (left_bound m))

(cl:ensure-generic-function 'right_bound-val :lambda-list '(m))
(cl:defmethod right_bound-val ((m <Lanelet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:right_bound-val is deprecated.  Use lanelet_map_msgs-msg:right_bound instead.")
  (right_bound m))

(cl:ensure-generic-function 'centerline-val :lambda-list '(m))
(cl:defmethod centerline-val ((m <Lanelet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:centerline-val is deprecated.  Use lanelet_map_msgs-msg:centerline instead.")
  (centerline m))

(cl:ensure-generic-function 'regulatory_elements-val :lambda-list '(m))
(cl:defmethod regulatory_elements-val ((m <Lanelet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:regulatory_elements-val is deprecated.  Use lanelet_map_msgs-msg:regulatory_elements instead.")
  (regulatory_elements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lanelet>) ostream)
  "Serializes a message object of type '<Lanelet>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_bound) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_bound) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'regulatory_elements) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lanelet>) istream)
  "Deserializes a message object of type '<Lanelet>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_bound) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_bound) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'regulatory_elements) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lanelet>)))
  "Returns string type for a message object of type '<Lanelet>"
  "lanelet_map_msgs/Lanelet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lanelet)))
  "Returns string type for a message object of type 'Lanelet"
  "lanelet_map_msgs/Lanelet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lanelet>)))
  "Returns md5sum for a message object of type '<Lanelet>"
  "79efb21963470ed788ab90e3dd311d0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lanelet)))
  "Returns md5sum for a message object of type 'Lanelet"
  "79efb21963470ed788ab90e3dd311d0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lanelet>)))
  "Returns full string definition for message of type '<Lanelet>"
  (cl:format cl:nil "int32 id~%Way left_bound~%Way right_bound~%Way centerline~%Regulatory regulatory_elements~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Regulatory~%Node[] special_nodes~%Way[] special_ways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lanelet)))
  "Returns full string definition for message of type 'Lanelet"
  (cl:format cl:nil "int32 id~%Way left_bound~%Way right_bound~%Way centerline~%Regulatory regulatory_elements~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Regulatory~%Node[] special_nodes~%Way[] special_ways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lanelet>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_bound))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_bound))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'regulatory_elements))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lanelet>))
  "Converts a ROS message object to a list"
  (cl:list 'Lanelet
    (cl:cons ':id (id msg))
    (cl:cons ':left_bound (left_bound msg))
    (cl:cons ':right_bound (right_bound msg))
    (cl:cons ':centerline (centerline msg))
    (cl:cons ':regulatory_elements (regulatory_elements msg))
))
