;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::PointCloudMultiLaser)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'PointCloudMultiLaser (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::POINTCLOUDMULTILASER")
  (make-package "SENSOR_DRIVER_MSGS::POINTCLOUDMULTILASER"))

(in-package "ROS")
;;//! \htmlinclude PointCloudMultiLaser.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass sensor_driver_msgs::PointCloudMultiLaser
  :super ros::object
  :slots (_lasernum _lidarid _laseridmap _laseranglemap _pointcloud ))

(defmethod sensor_driver_msgs::PointCloudMultiLaser
  (:init
   (&key
    ((:lasernum __lasernum) 0)
    ((:lidarid __lidarid) 0)
    ((:laseridmap __laseridmap) (make-array 0 :initial-element 0 :element-type :integer))
    ((:laseranglemap __laseranglemap) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _lasernum (round __lasernum))
   (setq _lidarid (round __lidarid))
   (setq _laseridmap __laseridmap)
   (setq _laseranglemap __laseranglemap)
   (setq _pointcloud __pointcloud)
   self)
  (:lasernum
   (&optional __lasernum)
   (if __lasernum (setq _lasernum __lasernum)) _lasernum)
  (:lidarid
   (&optional __lidarid)
   (if __lidarid (setq _lidarid __lidarid)) _lidarid)
  (:laseridmap
   (&optional __laseridmap)
   (if __laseridmap (setq _laseridmap __laseridmap)) _laseridmap)
  (:laseranglemap
   (&optional __laseranglemap)
   (if __laseranglemap (setq _laseranglemap __laseranglemap)) _laseranglemap)
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:serialization-length
   ()
   (+
    ;; int16 _lasernum
    2
    ;; int16 _lidarid
    2
    ;; int16[] _laseridmap
    (* 2    (length _laseridmap)) 4
    ;; float32[] _laseranglemap
    (* 4    (length _laseranglemap)) 4
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _lasernum
       (write-word _lasernum s)
     ;; int16 _lidarid
       (write-word _lidarid s)
     ;; int16[] _laseridmap
     (write-long (length _laseridmap) s)
     (dotimes (i (length _laseridmap))
       (write-word (elt _laseridmap i) s)
       )
     ;; float32[] _laseranglemap
     (write-long (length _laseranglemap) s)
     (dotimes (i (length _laseranglemap))
       (sys::poke (elt _laseranglemap i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _lasernum
     (setq _lasernum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _lidarid
     (setq _lidarid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _laseridmap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laseridmap (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _laseridmap i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _laseranglemap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laseranglemap (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _laseranglemap i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;;
   self)
  )

(setf (get sensor_driver_msgs::PointCloudMultiLaser :md5sum-) "af429b8dd0128bd96a7bacec1ffd7da7")
(setf (get sensor_driver_msgs::PointCloudMultiLaser :datatype-) "sensor_driver_msgs/PointCloudMultiLaser")
(setf (get sensor_driver_msgs::PointCloudMultiLaser :definition-)
      "
int16 lasernum
int16 lidarid
int16[] laseridmap
float32[] laseranglemap

sensor_msgs/PointCloud2 pointcloud
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :sensor_driver_msgs/PointCloudMultiLaser "af429b8dd0128bd96a7bacec1ffd7da7")


