; Auto-generated. Do not edit!


(cl:in-package iv_slam_ros_msgs-srv)


;//! \htmlinclude OptimizationInsertResult-request.msg.html

(cl:defclass <OptimizationInsertResult-request> (roslisp-msg-protocol:ros-message)
  ((trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (file_time_name
    :reader file_time_name
    :initarg :file_time_name
    :type cl:string
    :initform "")
   (num_submap
    :reader num_submap
    :initarg :num_submap
    :type cl:integer
    :initform 0)
   (range_data_pose
    :reader range_data_pose
    :initarg :range_data_pose
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (insertion_result
    :reader insertion_result
    :initarg :insertion_result
    :type iv_slam_ros_msgs-msg:insertion_submaps
    :initform (cl:make-instance 'iv_slam_ros_msgs-msg:insertion_submaps))
   (current_range_data_index
    :reader current_range_data_index
    :initarg :current_range_data_index
    :type cl:integer
    :initform 0))
)

(cl:defclass OptimizationInsertResult-request (<OptimizationInsertResult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimizationInsertResult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimizationInsertResult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_slam_ros_msgs-srv:<OptimizationInsertResult-request> is deprecated: use iv_slam_ros_msgs-srv:OptimizationInsertResult-request instead.")))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:trajectory_id-val is deprecated.  Use iv_slam_ros_msgs-srv:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:time-val is deprecated.  Use iv_slam_ros_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'file_time_name-val :lambda-list '(m))
(cl:defmethod file_time_name-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:file_time_name-val is deprecated.  Use iv_slam_ros_msgs-srv:file_time_name instead.")
  (file_time_name m))

(cl:ensure-generic-function 'num_submap-val :lambda-list '(m))
(cl:defmethod num_submap-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:num_submap-val is deprecated.  Use iv_slam_ros_msgs-srv:num_submap instead.")
  (num_submap m))

(cl:ensure-generic-function 'range_data_pose-val :lambda-list '(m))
(cl:defmethod range_data_pose-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:range_data_pose-val is deprecated.  Use iv_slam_ros_msgs-srv:range_data_pose instead.")
  (range_data_pose m))

(cl:ensure-generic-function 'insertion_result-val :lambda-list '(m))
(cl:defmethod insertion_result-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:insertion_result-val is deprecated.  Use iv_slam_ros_msgs-srv:insertion_result instead.")
  (insertion_result m))

(cl:ensure-generic-function 'current_range_data_index-val :lambda-list '(m))
(cl:defmethod current_range_data_index-val ((m <OptimizationInsertResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-srv:current_range_data_index-val is deprecated.  Use iv_slam_ros_msgs-srv:current_range_data_index instead.")
  (current_range_data_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimizationInsertResult-request>) ostream)
  "Serializes a message object of type '<OptimizationInsertResult-request>"
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_time_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_time_name))
  (cl:let* ((signed (cl:slot-value msg 'num_submap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'range_data_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'insertion_result) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current_range_data_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimizationInsertResult-request>) istream)
  "Deserializes a message object of type '<OptimizationInsertResult-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_time_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_time_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_submap) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'range_data_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'insertion_result) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_range_data_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimizationInsertResult-request>)))
  "Returns string type for a service object of type '<OptimizationInsertResult-request>"
  "iv_slam_ros_msgs/OptimizationInsertResultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimizationInsertResult-request)))
  "Returns string type for a service object of type 'OptimizationInsertResult-request"
  "iv_slam_ros_msgs/OptimizationInsertResultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimizationInsertResult-request>)))
  "Returns md5sum for a message object of type '<OptimizationInsertResult-request>"
  "2318c3eba77c1405411d17648da8e4ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimizationInsertResult-request)))
  "Returns md5sum for a message object of type 'OptimizationInsertResult-request"
  "2318c3eba77c1405411d17648da8e4ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimizationInsertResult-request>)))
  "Returns full string definition for message of type '<OptimizationInsertResult-request>"
  (cl:format cl:nil "int32 trajectory_id~%float64 time~%string file_time_name~%int32 num_submap~%nav_msgs/Odometry range_data_pose~%insertion_submaps insertion_result~%int32 current_range_data_index~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: iv_slam_ros_msgs/insertion_submaps~%int32 num_submap~%SubmapIndex[] submap~%~%================================================================================~%MSG: iv_slam_ros_msgs/SubmapIndex~%int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimizationInsertResult-request)))
  "Returns full string definition for message of type 'OptimizationInsertResult-request"
  (cl:format cl:nil "int32 trajectory_id~%float64 time~%string file_time_name~%int32 num_submap~%nav_msgs/Odometry range_data_pose~%insertion_submaps insertion_result~%int32 current_range_data_index~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: iv_slam_ros_msgs/insertion_submaps~%int32 num_submap~%SubmapIndex[] submap~%~%================================================================================~%MSG: iv_slam_ros_msgs/SubmapIndex~%int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimizationInsertResult-request>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'file_time_name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'range_data_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'insertion_result))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimizationInsertResult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimizationInsertResult-request
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':time (time msg))
    (cl:cons ':file_time_name (file_time_name msg))
    (cl:cons ':num_submap (num_submap msg))
    (cl:cons ':range_data_pose (range_data_pose msg))
    (cl:cons ':insertion_result (insertion_result msg))
    (cl:cons ':current_range_data_index (current_range_data_index msg))
))
;//! \htmlinclude OptimizationInsertResult-response.msg.html

(cl:defclass <OptimizationInsertResult-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OptimizationInsertResult-response (<OptimizationInsertResult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimizationInsertResult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimizationInsertResult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_slam_ros_msgs-srv:<OptimizationInsertResult-response> is deprecated: use iv_slam_ros_msgs-srv:OptimizationInsertResult-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimizationInsertResult-response>) ostream)
  "Serializes a message object of type '<OptimizationInsertResult-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimizationInsertResult-response>) istream)
  "Deserializes a message object of type '<OptimizationInsertResult-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimizationInsertResult-response>)))
  "Returns string type for a service object of type '<OptimizationInsertResult-response>"
  "iv_slam_ros_msgs/OptimizationInsertResultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimizationInsertResult-response)))
  "Returns string type for a service object of type 'OptimizationInsertResult-response"
  "iv_slam_ros_msgs/OptimizationInsertResultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimizationInsertResult-response>)))
  "Returns md5sum for a message object of type '<OptimizationInsertResult-response>"
  "2318c3eba77c1405411d17648da8e4ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimizationInsertResult-response)))
  "Returns md5sum for a message object of type 'OptimizationInsertResult-response"
  "2318c3eba77c1405411d17648da8e4ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimizationInsertResult-response>)))
  "Returns full string definition for message of type '<OptimizationInsertResult-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimizationInsertResult-response)))
  "Returns full string definition for message of type 'OptimizationInsertResult-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimizationInsertResult-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimizationInsertResult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimizationInsertResult-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OptimizationInsertResult)))
  'OptimizationInsertResult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OptimizationInsertResult)))
  'OptimizationInsertResult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimizationInsertResult)))
  "Returns string type for a service object of type '<OptimizationInsertResult>"
  "iv_slam_ros_msgs/OptimizationInsertResult")