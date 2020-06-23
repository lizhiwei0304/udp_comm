; Auto-generated. Do not edit!


(cl:in-package iv_slam_ros_msgs-msg)


;//! \htmlinclude SubmapIndex.msg.html

(cl:defclass <SubmapIndex> (roslisp-msg-protocol:ros-message)
  ((trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (submap_index
    :reader submap_index
    :initarg :submap_index
    :type cl:integer
    :initform 0)
   (finishflag
    :reader finishflag
    :initarg :finishflag
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SubmapIndex (<SubmapIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_slam_ros_msgs-msg:<SubmapIndex> is deprecated: use iv_slam_ros_msgs-msg:SubmapIndex instead.")))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <SubmapIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:trajectory_id-val is deprecated.  Use iv_slam_ros_msgs-msg:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'submap_index-val :lambda-list '(m))
(cl:defmethod submap_index-val ((m <SubmapIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:submap_index-val is deprecated.  Use iv_slam_ros_msgs-msg:submap_index instead.")
  (submap_index m))

(cl:ensure-generic-function 'finishflag-val :lambda-list '(m))
(cl:defmethod finishflag-val ((m <SubmapIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:finishflag-val is deprecated.  Use iv_slam_ros_msgs-msg:finishflag instead.")
  (finishflag m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SubmapIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:pose-val is deprecated.  Use iv_slam_ros_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapIndex>) ostream)
  "Serializes a message object of type '<SubmapIndex>"
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'submap_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finishflag) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapIndex>) istream)
  "Deserializes a message object of type '<SubmapIndex>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submap_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'finishflag) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapIndex>)))
  "Returns string type for a message object of type '<SubmapIndex>"
  "iv_slam_ros_msgs/SubmapIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapIndex)))
  "Returns string type for a message object of type 'SubmapIndex"
  "iv_slam_ros_msgs/SubmapIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapIndex>)))
  "Returns md5sum for a message object of type '<SubmapIndex>"
  "85548cba5025a815b152574d9b381c6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapIndex)))
  "Returns md5sum for a message object of type 'SubmapIndex"
  "85548cba5025a815b152574d9b381c6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapIndex>)))
  "Returns full string definition for message of type '<SubmapIndex>"
  (cl:format cl:nil "int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapIndex)))
  "Returns full string definition for message of type 'SubmapIndex"
  (cl:format cl:nil "int32 trajectory_id~%int32 submap_index~%bool finishflag~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapIndex>))
  (cl:+ 0
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapIndex
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':submap_index (submap_index msg))
    (cl:cons ':finishflag (finishflag msg))
    (cl:cons ':pose (pose msg))
))
