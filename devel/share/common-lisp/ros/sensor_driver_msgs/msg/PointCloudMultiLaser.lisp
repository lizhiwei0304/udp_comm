; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-msg)


;//! \htmlinclude PointCloudMultiLaser.msg.html

(cl:defclass <PointCloudMultiLaser> (roslisp-msg-protocol:ros-message)
  ((lasernum
    :reader lasernum
    :initarg :lasernum
    :type cl:fixnum
    :initform 0)
   (lidarid
    :reader lidarid
    :initarg :lidarid
    :type cl:fixnum
    :initform 0)
   (laseridmap
    :reader laseridmap
    :initarg :laseridmap
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (laseranglemap
    :reader laseranglemap
    :initarg :laseranglemap
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass PointCloudMultiLaser (<PointCloudMultiLaser>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloudMultiLaser>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloudMultiLaser)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-msg:<PointCloudMultiLaser> is deprecated: use sensor_driver_msgs-msg:PointCloudMultiLaser instead.")))

(cl:ensure-generic-function 'lasernum-val :lambda-list '(m))
(cl:defmethod lasernum-val ((m <PointCloudMultiLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:lasernum-val is deprecated.  Use sensor_driver_msgs-msg:lasernum instead.")
  (lasernum m))

(cl:ensure-generic-function 'lidarid-val :lambda-list '(m))
(cl:defmethod lidarid-val ((m <PointCloudMultiLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:lidarid-val is deprecated.  Use sensor_driver_msgs-msg:lidarid instead.")
  (lidarid m))

(cl:ensure-generic-function 'laseridmap-val :lambda-list '(m))
(cl:defmethod laseridmap-val ((m <PointCloudMultiLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:laseridmap-val is deprecated.  Use sensor_driver_msgs-msg:laseridmap instead.")
  (laseridmap m))

(cl:ensure-generic-function 'laseranglemap-val :lambda-list '(m))
(cl:defmethod laseranglemap-val ((m <PointCloudMultiLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:laseranglemap-val is deprecated.  Use sensor_driver_msgs-msg:laseranglemap instead.")
  (laseranglemap m))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <PointCloudMultiLaser>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:pointcloud-val is deprecated.  Use sensor_driver_msgs-msg:pointcloud instead.")
  (pointcloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloudMultiLaser>) ostream)
  "Serializes a message object of type '<PointCloudMultiLaser>"
  (cl:let* ((signed (cl:slot-value msg 'lasernum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lidarid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laseridmap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'laseridmap))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laseranglemap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'laseranglemap))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloudMultiLaser>) istream)
  "Deserializes a message object of type '<PointCloudMultiLaser>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lasernum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidarid) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laseridmap) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laseridmap)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laseranglemap) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laseranglemap)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloudMultiLaser>)))
  "Returns string type for a message object of type '<PointCloudMultiLaser>"
  "sensor_driver_msgs/PointCloudMultiLaser")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloudMultiLaser)))
  "Returns string type for a message object of type 'PointCloudMultiLaser"
  "sensor_driver_msgs/PointCloudMultiLaser")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloudMultiLaser>)))
  "Returns md5sum for a message object of type '<PointCloudMultiLaser>"
  "af429b8dd0128bd96a7bacec1ffd7da7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloudMultiLaser)))
  "Returns md5sum for a message object of type 'PointCloudMultiLaser"
  "af429b8dd0128bd96a7bacec1ffd7da7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloudMultiLaser>)))
  "Returns full string definition for message of type '<PointCloudMultiLaser>"
  (cl:format cl:nil "~%int16 lasernum~%int16 lidarid~%int16[] laseridmap~%float32[] laseranglemap~%~%sensor_msgs/PointCloud2 pointcloud~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloudMultiLaser)))
  "Returns full string definition for message of type 'PointCloudMultiLaser"
  (cl:format cl:nil "~%int16 lasernum~%int16 lidarid~%int16[] laseridmap~%float32[] laseranglemap~%~%sensor_msgs/PointCloud2 pointcloud~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloudMultiLaser>))
  (cl:+ 0
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laseridmap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laseranglemap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloudMultiLaser>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloudMultiLaser
    (cl:cons ':lasernum (lasernum msg))
    (cl:cons ':lidarid (lidarid msg))
    (cl:cons ':laseridmap (laseridmap msg))
    (cl:cons ':laseranglemap (laseranglemap msg))
    (cl:cons ':pointcloud (pointcloud msg))
))
