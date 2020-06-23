; Auto-generated. Do not edit!


(cl:in-package lanelet_map_msgs-msg)


;//! \htmlinclude LaneletMap.msg.html

(cl:defclass <LaneletMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_lane
    :reader current_lane
    :initarg :current_lane
    :type (cl:vector lanelet_map_msgs-msg:Lanelet)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Lanelet :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Lanelet)))
   (left_beside
    :reader left_beside
    :initarg :left_beside
    :type lanelet_map_msgs-msg:Lanelet
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
   (right_beside
    :reader right_beside
    :initarg :right_beside
    :type lanelet_map_msgs-msg:Lanelet
    :initform (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
   (forward_following
    :reader forward_following
    :initarg :forward_following
    :type (cl:vector lanelet_map_msgs-msg:Lanelet)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Lanelet :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Lanelet)))
   (forward_right
    :reader forward_right
    :initarg :forward_right
    :type (cl:vector lanelet_map_msgs-msg:Lanelet)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Lanelet :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Lanelet)))
   (forward_left
    :reader forward_left
    :initarg :forward_left
    :type (cl:vector lanelet_map_msgs-msg:Lanelet)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Lanelet :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))))
)

(cl:defclass LaneletMap (<LaneletMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneletMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneletMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lanelet_map_msgs-msg:<LaneletMap> is deprecated: use lanelet_map_msgs-msg:LaneletMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:header-val is deprecated.  Use lanelet_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_lane-val :lambda-list '(m))
(cl:defmethod current_lane-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:current_lane-val is deprecated.  Use lanelet_map_msgs-msg:current_lane instead.")
  (current_lane m))

(cl:ensure-generic-function 'left_beside-val :lambda-list '(m))
(cl:defmethod left_beside-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:left_beside-val is deprecated.  Use lanelet_map_msgs-msg:left_beside instead.")
  (left_beside m))

(cl:ensure-generic-function 'right_beside-val :lambda-list '(m))
(cl:defmethod right_beside-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:right_beside-val is deprecated.  Use lanelet_map_msgs-msg:right_beside instead.")
  (right_beside m))

(cl:ensure-generic-function 'forward_following-val :lambda-list '(m))
(cl:defmethod forward_following-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:forward_following-val is deprecated.  Use lanelet_map_msgs-msg:forward_following instead.")
  (forward_following m))

(cl:ensure-generic-function 'forward_right-val :lambda-list '(m))
(cl:defmethod forward_right-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:forward_right-val is deprecated.  Use lanelet_map_msgs-msg:forward_right instead.")
  (forward_right m))

(cl:ensure-generic-function 'forward_left-val :lambda-list '(m))
(cl:defmethod forward_left-val ((m <LaneletMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:forward_left-val is deprecated.  Use lanelet_map_msgs-msg:forward_left instead.")
  (forward_left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneletMap>) ostream)
  "Serializes a message object of type '<LaneletMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'current_lane))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_beside) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_beside) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'forward_following))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'forward_following))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'forward_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'forward_right))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'forward_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'forward_left))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneletMap>) istream)
  "Deserializes a message object of type '<LaneletMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_beside) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_beside) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'forward_following) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'forward_following)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'forward_right) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'forward_right)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'forward_left) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'forward_left)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Lanelet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneletMap>)))
  "Returns string type for a message object of type '<LaneletMap>"
  "lanelet_map_msgs/LaneletMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneletMap)))
  "Returns string type for a message object of type 'LaneletMap"
  "lanelet_map_msgs/LaneletMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneletMap>)))
  "Returns md5sum for a message object of type '<LaneletMap>"
  "3579fead11f7e76167ff825b6fd746c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneletMap)))
  "Returns md5sum for a message object of type 'LaneletMap"
  "3579fead11f7e76167ff825b6fd746c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneletMap>)))
  "Returns full string definition for message of type '<LaneletMap>"
  (cl:format cl:nil "Header header~%Lanelet[] current_lane~%Lanelet left_beside~%Lanelet right_beside~%Lanelet[] forward_following~%Lanelet[] forward_right~%Lanelet[] forward_left~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lanelet_map_msgs/Lanelet~%int32 id~%Way left_bound~%Way right_bound~%Way centerline~%Regulatory regulatory_elements~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Regulatory~%Node[] special_nodes~%Way[] special_ways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneletMap)))
  "Returns full string definition for message of type 'LaneletMap"
  (cl:format cl:nil "Header header~%Lanelet[] current_lane~%Lanelet left_beside~%Lanelet right_beside~%Lanelet[] forward_following~%Lanelet[] forward_right~%Lanelet[] forward_left~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lanelet_map_msgs/Lanelet~%int32 id~%Way left_bound~%Way right_bound~%Way centerline~%Regulatory regulatory_elements~%~%================================================================================~%MSG: lanelet_map_msgs/Way~%string task_area~%int8 is_forward~%int8 open_concave_obs_det~%int8 open_dynamic_obs_det~%int8 open_foggy_det~%int8 open_water_det~%int8 foggy_area~%int8 lawn_area~%int8 water_area~%float64 vel_limit~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%float64 vlimit~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lanelet_map_msgs/Regulatory~%Node[] special_nodes~%Way[] special_ways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneletMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_beside))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_beside))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'forward_following) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'forward_right) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'forward_left) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneletMap>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneletMap
    (cl:cons ':header (header msg))
    (cl:cons ':current_lane (current_lane msg))
    (cl:cons ':left_beside (left_beside msg))
    (cl:cons ':right_beside (right_beside msg))
    (cl:cons ':forward_following (forward_following msg))
    (cl:cons ':forward_right (forward_right msg))
    (cl:cons ':forward_left (forward_left msg))
))
