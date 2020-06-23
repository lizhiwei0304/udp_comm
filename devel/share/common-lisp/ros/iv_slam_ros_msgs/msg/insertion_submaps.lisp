; Auto-generated. Do not edit!


(cl:in-package iv_slam_ros_msgs-msg)


;//! \htmlinclude insertion_submaps.msg.html

(cl:defclass <insertion_submaps> (roslisp-msg-protocol:ros-message)
  ((num_submap
    :reader num_submap
    :initarg :num_submap
    :type cl:integer
    :initform 0)
   (submap
    :reader submap
    :initarg :submap
    :type (cl:vector iv_slam_ros_msgs-msg:SubmapIndex)
   :initform (cl:make-array 0 :element-type 'iv_slam_ros_msgs-msg:SubmapIndex :initial-element (cl:make-instance 'iv_slam_ros_msgs-msg:SubmapIndex))))
)

(cl:defclass insertion_submaps (<insertion_submaps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <insertion_submaps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'insertion_submaps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_slam_ros_msgs-msg:<insertion_submaps> is deprecated: use iv_slam_ros_msgs-msg:insertion_submaps instead.")))

(cl:ensure-generic-function 'num_submap-val :lambda-list '(m))
(cl:defmethod num_submap-val ((m <insertion_submaps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:num_submap-val is deprecated.  Use iv_slam_ros_msgs-msg:num_submap instead.")
  (num_submap m))

(cl:ensure-generic-function 'submap-val :lambda-list '(m))
(cl:defmethod submap-val ((m <insertion_submaps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:submap-val is deprecated.  Use iv_slam_ros_msgs-msg:submap instead.")
  (submap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <insertion_submaps>) ostream)
  "Serializes a message object of type '<insertion_submaps>"
  (cl:let* ((signed (cl:slot-value msg 'num_submap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'submap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'submap))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <insertion_submaps>) istream)
  "Deserializes a message object of type '<insertion_submaps>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_submap) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'submap) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'submap)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_slam_ros_msgs-msg:SubmapIndex))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<insertion_submaps>)))
  "Returns string type for a message object of type '<insertion_submaps>"
  "iv_slam_ros_msgs/insertion_submaps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'insertion_submaps)))
  "Returns string type for a message object of type 'insertion_submaps"
  "iv_slam_ros_msgs/insertion_submaps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<insertion_submaps>)))
  "Returns md5sum for a message object of type '<insertion_submaps>"
  "b4554e58a1354197bd7aaa4c53aabdba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'insertion_submaps)))
  "Returns md5sum for a message object of type 'insertion_submaps"
  "b4554e58a1354197bd7aaa4c53aabdba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<insertion_submaps>)))
  "Returns full string definition for message of type '<insertion_submaps>"
  (cl:format cl:nil "int32 num_submap~%SubmapIndex[] submap~%~%================================================================================~%MSG: iv_slam_ros_msgs/SubmapIndex~%int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'insertion_submaps)))
  "Returns full string definition for message of type 'insertion_submaps"
  (cl:format cl:nil "int32 num_submap~%SubmapIndex[] submap~%~%================================================================================~%MSG: iv_slam_ros_msgs/SubmapIndex~%int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <insertion_submaps>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'submap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <insertion_submaps>))
  "Converts a ROS message object to a list"
  (cl:list 'insertion_submaps
    (cl:cons ':num_submap (num_submap msg))
    (cl:cons ':submap (submap msg))
))
