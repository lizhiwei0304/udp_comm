; Auto-generated. Do not edit!


(cl:in-package iv_slam_ros_msgs-msg)


;//! \htmlinclude TraversableArea.msg.html

(cl:defclass <TraversableArea> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (triD_submap_pose_image_index_x
    :reader triD_submap_pose_image_index_x
    :initarg :triD_submap_pose_image_index_x
    :type cl:integer
    :initform 0)
   (triD_submap_pose_image_index_y
    :reader triD_submap_pose_image_index_y
    :initarg :triD_submap_pose_image_index_y
    :type cl:integer
    :initform 0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (triD_submap_pose
    :reader triD_submap_pose
    :initarg :triD_submap_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (submap_finished_flag
    :reader submap_finished_flag
    :initarg :submap_finished_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TraversableArea (<TraversableArea>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TraversableArea>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TraversableArea)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_slam_ros_msgs-msg:<TraversableArea> is deprecated: use iv_slam_ros_msgs-msg:TraversableArea instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:header-val is deprecated.  Use iv_slam_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:index-val is deprecated.  Use iv_slam_ros_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:width-val is deprecated.  Use iv_slam_ros_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:height-val is deprecated.  Use iv_slam_ros_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'triD_submap_pose_image_index_x-val :lambda-list '(m))
(cl:defmethod triD_submap_pose_image_index_x-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:triD_submap_pose_image_index_x-val is deprecated.  Use iv_slam_ros_msgs-msg:triD_submap_pose_image_index_x instead.")
  (triD_submap_pose_image_index_x m))

(cl:ensure-generic-function 'triD_submap_pose_image_index_y-val :lambda-list '(m))
(cl:defmethod triD_submap_pose_image_index_y-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:triD_submap_pose_image_index_y-val is deprecated.  Use iv_slam_ros_msgs-msg:triD_submap_pose_image_index_y instead.")
  (triD_submap_pose_image_index_y m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:resolution-val is deprecated.  Use iv_slam_ros_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'triD_submap_pose-val :lambda-list '(m))
(cl:defmethod triD_submap_pose-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:triD_submap_pose-val is deprecated.  Use iv_slam_ros_msgs-msg:triD_submap_pose instead.")
  (triD_submap_pose m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:cells-val is deprecated.  Use iv_slam_ros_msgs-msg:cells instead.")
  (cells m))

(cl:ensure-generic-function 'submap_finished_flag-val :lambda-list '(m))
(cl:defmethod submap_finished_flag-val ((m <TraversableArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_slam_ros_msgs-msg:submap_finished_flag-val is deprecated.  Use iv_slam_ros_msgs-msg:submap_finished_flag instead.")
  (submap_finished_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TraversableArea>) ostream)
  "Serializes a message object of type '<TraversableArea>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'triD_submap_pose_image_index_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'triD_submap_pose_image_index_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'triD_submap_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cells))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'submap_finished_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TraversableArea>) istream)
  "Deserializes a message object of type '<TraversableArea>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'triD_submap_pose_image_index_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'triD_submap_pose_image_index_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'triD_submap_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'submap_finished_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TraversableArea>)))
  "Returns string type for a message object of type '<TraversableArea>"
  "iv_slam_ros_msgs/TraversableArea")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TraversableArea)))
  "Returns string type for a message object of type 'TraversableArea"
  "iv_slam_ros_msgs/TraversableArea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TraversableArea>)))
  "Returns md5sum for a message object of type '<TraversableArea>"
  "3bd22d70c3beb576bea82709772a91a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TraversableArea)))
  "Returns md5sum for a message object of type 'TraversableArea"
  "3bd22d70c3beb576bea82709772a91a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TraversableArea>)))
  "Returns full string definition for message of type '<TraversableArea>"
  (cl:format cl:nil "~%std_msgs/Header header~%int32 index~%int32 width~%int32 height~%int32 triD_submap_pose_image_index_x~%int32 triD_submap_pose_image_index_y~%float64 resolution~%geometry_msgs/Pose triD_submap_pose~%uint8[] cells~%bool submap_finished_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TraversableArea)))
  "Returns full string definition for message of type 'TraversableArea"
  (cl:format cl:nil "~%std_msgs/Header header~%int32 index~%int32 width~%int32 height~%int32 triD_submap_pose_image_index_x~%int32 triD_submap_pose_image_index_y~%float64 resolution~%geometry_msgs/Pose triD_submap_pose~%uint8[] cells~%bool submap_finished_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TraversableArea>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'triD_submap_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TraversableArea>))
  "Converts a ROS message object to a list"
  (cl:list 'TraversableArea
    (cl:cons ':header (header msg))
    (cl:cons ':index (index msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':triD_submap_pose_image_index_x (triD_submap_pose_image_index_x msg))
    (cl:cons ':triD_submap_pose_image_index_y (triD_submap_pose_image_index_y msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':triD_submap_pose (triD_submap_pose msg))
    (cl:cons ':cells (cells msg))
    (cl:cons ':submap_finished_flag (submap_finished_flag msg))
))
