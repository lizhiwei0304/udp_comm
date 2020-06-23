; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-msg)


;//! \htmlinclude PointCloudMultiLidar.msg.html

(cl:defclass <PointCloudMultiLidar> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lidarnum
    :reader lidarnum
    :initarg :lidarnum
    :type cl:integer
    :initform 0)
   (pointcloudmultilaser
    :reader pointcloudmultilaser
    :initarg :pointcloudmultilaser
    :type (cl:vector sensor_driver_msgs-msg:PointCloudMultiLaser)
   :initform (cl:make-array 0 :element-type 'sensor_driver_msgs-msg:PointCloudMultiLaser :initial-element (cl:make-instance 'sensor_driver_msgs-msg:PointCloudMultiLaser))))
)

(cl:defclass PointCloudMultiLidar (<PointCloudMultiLidar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloudMultiLidar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloudMultiLidar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-msg:<PointCloudMultiLidar> is deprecated: use sensor_driver_msgs-msg:PointCloudMultiLidar instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointCloudMultiLidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:header-val is deprecated.  Use sensor_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lidarnum-val :lambda-list '(m))
(cl:defmethod lidarnum-val ((m <PointCloudMultiLidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:lidarnum-val is deprecated.  Use sensor_driver_msgs-msg:lidarnum instead.")
  (lidarnum m))

(cl:ensure-generic-function 'pointcloudmultilaser-val :lambda-list '(m))
(cl:defmethod pointcloudmultilaser-val ((m <PointCloudMultiLidar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:pointcloudmultilaser-val is deprecated.  Use sensor_driver_msgs-msg:pointcloudmultilaser instead.")
  (pointcloudmultilaser m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloudMultiLidar>) ostream)
  "Serializes a message object of type '<PointCloudMultiLidar>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lidarnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointcloudmultilaser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointcloudmultilaser))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloudMultiLidar>) istream)
  "Deserializes a message object of type '<PointCloudMultiLidar>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidarnum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointcloudmultilaser) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointcloudmultilaser)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_driver_msgs-msg:PointCloudMultiLaser))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloudMultiLidar>)))
  "Returns string type for a message object of type '<PointCloudMultiLidar>"
  "sensor_driver_msgs/PointCloudMultiLidar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloudMultiLidar)))
  "Returns string type for a message object of type 'PointCloudMultiLidar"
  "sensor_driver_msgs/PointCloudMultiLidar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloudMultiLidar>)))
  "Returns md5sum for a message object of type '<PointCloudMultiLidar>"
  "a8d79a4670af44ba4cf9d1a427e66fcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloudMultiLidar)))
  "Returns md5sum for a message object of type 'PointCloudMultiLidar"
  "a8d79a4670af44ba4cf9d1a427e66fcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloudMultiLidar>)))
  "Returns full string definition for message of type '<PointCloudMultiLidar>"
  (cl:format cl:nil "std_msgs/Header header~%int32 lidarnum~%~%PointCloudMultiLaser[] pointcloudmultilaser~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_driver_msgs/PointCloudMultiLaser~%~%int16 lasernum~%int16 lidarid~%int16[] laseridmap~%float32[] laseranglemap~%~%sensor_msgs/PointCloud2 pointcloud~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloudMultiLidar)))
  "Returns full string definition for message of type 'PointCloudMultiLidar"
  (cl:format cl:nil "std_msgs/Header header~%int32 lidarnum~%~%PointCloudMultiLaser[] pointcloudmultilaser~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_driver_msgs/PointCloudMultiLaser~%~%int16 lasernum~%int16 lidarid~%int16[] laseridmap~%float32[] laseranglemap~%~%sensor_msgs/PointCloud2 pointcloud~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloudMultiLidar>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointcloudmultilaser) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloudMultiLidar>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloudMultiLidar
    (cl:cons ':header (header msg))
    (cl:cons ':lidarnum (lidarnum msg))
    (cl:cons ':pointcloudmultilaser (pointcloudmultilaser msg))
))
