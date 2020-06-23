;; Auto-generated. Do not edit!


(when (boundp 'dymidetect2speed_msgs::dymicol_point)
  (if (not (find-package "DYMIDETECT2SPEED_MSGS"))
    (make-package "DYMIDETECT2SPEED_MSGS"))
  (shadow 'dymicol_point (find-package "DYMIDETECT2SPEED_MSGS")))
(unless (find-package "DYMIDETECT2SPEED_MSGS::DYMICOL_POINT")
  (make-package "DYMIDETECT2SPEED_MSGS::DYMICOL_POINT"))

(in-package "ROS")
;;//! \htmlinclude dymicol_point.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dymidetect2speed_msgs::dymicol_point
  :super ros::object
  :slots (_header _point_x _point_y _vel_to_dymicol _exp_vel _path_point_index _collision ))

(defmethod dymidetect2speed_msgs::dymicol_point
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_x __point_x) 0.0)
    ((:point_y __point_y) 0.0)
    ((:vel_to_dymicol __vel_to_dymicol) 0.0)
    ((:exp_vel __exp_vel) 0.0)
    ((:path_point_index __path_point_index) 0)
    ((:collision __collision) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_x (float __point_x))
   (setq _point_y (float __point_y))
   (setq _vel_to_dymicol (float __vel_to_dymicol))
   (setq _exp_vel (float __exp_vel))
   (setq _path_point_index (round __path_point_index))
   (setq _collision (round __collision))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_x
   (&optional __point_x)
   (if __point_x (setq _point_x __point_x)) _point_x)
  (:point_y
   (&optional __point_y)
   (if __point_y (setq _point_y __point_y)) _point_y)
  (:vel_to_dymicol
   (&optional __vel_to_dymicol)
   (if __vel_to_dymicol (setq _vel_to_dymicol __vel_to_dymicol)) _vel_to_dymicol)
  (:exp_vel
   (&optional __exp_vel)
   (if __exp_vel (setq _exp_vel __exp_vel)) _exp_vel)
  (:path_point_index
   (&optional __path_point_index)
   (if __path_point_index (setq _path_point_index __path_point_index)) _path_point_index)
  (:collision
   (&optional __collision)
   (if __collision (setq _collision __collision)) _collision)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _point_x
    8
    ;; float64 _point_y
    8
    ;; float64 _vel_to_dymicol
    8
    ;; float64 _exp_vel
    8
    ;; int32 _path_point_index
    4
    ;; uint8 _collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _point_x
       (sys::poke _point_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _point_y
       (sys::poke _point_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_to_dymicol
       (sys::poke _vel_to_dymicol (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exp_vel
       (sys::poke _exp_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _path_point_index
       (write-long _path_point_index s)
     ;; uint8 _collision
       (write-byte _collision s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _point_x
     (setq _point_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _point_y
     (setq _point_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_to_dymicol
     (setq _vel_to_dymicol (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exp_vel
     (setq _exp_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _path_point_index
     (setq _path_point_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _collision
     (setq _collision (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dymidetect2speed_msgs::dymicol_point :md5sum-) "17116bc59d56961fa03b07a3caf2fd5e")
(setf (get dymidetect2speed_msgs::dymicol_point :datatype-) "dymidetect2speed_msgs/dymicol_point")
(setf (get dymidetect2speed_msgs::dymicol_point :definition-)
      "std_msgs/Header header

float64 point_x
float64 point_y
float64 vel_to_dymicol
float64 exp_vel
int32 path_point_index
uint8 collision

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

")



(provide :dymidetect2speed_msgs/dymicol_point "17116bc59d56961fa03b07a3caf2fd5e")


