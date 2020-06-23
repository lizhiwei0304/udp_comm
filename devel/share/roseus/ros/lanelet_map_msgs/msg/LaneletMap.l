;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::LaneletMap)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'LaneletMap (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::LANELETMAP")
  (make-package "LANELET_MAP_MSGS::LANELETMAP"))

(in-package "ROS")
;;//! \htmlinclude LaneletMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lanelet_map_msgs::LaneletMap
  :super ros::object
  :slots (_header _current_lane _left_beside _right_beside _forward_following _forward_right _forward_left ))

(defmethod lanelet_map_msgs::LaneletMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_lane __current_lane) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
    ((:left_beside __left_beside) (instance lanelet_map_msgs::Lanelet :init))
    ((:right_beside __right_beside) (instance lanelet_map_msgs::Lanelet :init))
    ((:forward_following __forward_following) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
    ((:forward_right __forward_right) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
    ((:forward_left __forward_left) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_lane __current_lane)
   (setq _left_beside __left_beside)
   (setq _right_beside __right_beside)
   (setq _forward_following __forward_following)
   (setq _forward_right __forward_right)
   (setq _forward_left __forward_left)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_lane
   (&rest __current_lane)
   (if (keywordp (car __current_lane))
       (send* _current_lane __current_lane)
     (progn
       (if __current_lane (setq _current_lane (car __current_lane)))
       _current_lane)))
  (:left_beside
   (&rest __left_beside)
   (if (keywordp (car __left_beside))
       (send* _left_beside __left_beside)
     (progn
       (if __left_beside (setq _left_beside (car __left_beside)))
       _left_beside)))
  (:right_beside
   (&rest __right_beside)
   (if (keywordp (car __right_beside))
       (send* _right_beside __right_beside)
     (progn
       (if __right_beside (setq _right_beside (car __right_beside)))
       _right_beside)))
  (:forward_following
   (&rest __forward_following)
   (if (keywordp (car __forward_following))
       (send* _forward_following __forward_following)
     (progn
       (if __forward_following (setq _forward_following (car __forward_following)))
       _forward_following)))
  (:forward_right
   (&rest __forward_right)
   (if (keywordp (car __forward_right))
       (send* _forward_right __forward_right)
     (progn
       (if __forward_right (setq _forward_right (car __forward_right)))
       _forward_right)))
  (:forward_left
   (&rest __forward_left)
   (if (keywordp (car __forward_left))
       (send* _forward_left __forward_left)
     (progn
       (if __forward_left (setq _forward_left (car __forward_left)))
       _forward_left)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lanelet_map_msgs/Lanelet[] _current_lane
    (apply #'+ (send-all _current_lane :serialization-length)) 4
    ;; lanelet_map_msgs/Lanelet _left_beside
    (send _left_beside :serialization-length)
    ;; lanelet_map_msgs/Lanelet _right_beside
    (send _right_beside :serialization-length)
    ;; lanelet_map_msgs/Lanelet[] _forward_following
    (apply #'+ (send-all _forward_following :serialization-length)) 4
    ;; lanelet_map_msgs/Lanelet[] _forward_right
    (apply #'+ (send-all _forward_right :serialization-length)) 4
    ;; lanelet_map_msgs/Lanelet[] _forward_left
    (apply #'+ (send-all _forward_left :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lanelet_map_msgs/Lanelet[] _current_lane
     (write-long (length _current_lane) s)
     (dolist (elem _current_lane)
       (send elem :serialize s)
       )
     ;; lanelet_map_msgs/Lanelet _left_beside
       (send _left_beside :serialize s)
     ;; lanelet_map_msgs/Lanelet _right_beside
       (send _right_beside :serialize s)
     ;; lanelet_map_msgs/Lanelet[] _forward_following
     (write-long (length _forward_following) s)
     (dolist (elem _forward_following)
       (send elem :serialize s)
       )
     ;; lanelet_map_msgs/Lanelet[] _forward_right
     (write-long (length _forward_right) s)
     (dolist (elem _forward_right)
       (send elem :serialize s)
       )
     ;; lanelet_map_msgs/Lanelet[] _forward_left
     (write-long (length _forward_left) s)
     (dolist (elem _forward_left)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lanelet_map_msgs/Lanelet[] _current_lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_lane (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
     (dolist (elem- _current_lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lanelet_map_msgs/Lanelet _left_beside
     (send _left_beside :deserialize buf ptr-) (incf ptr- (send _left_beside :serialization-length))
   ;; lanelet_map_msgs/Lanelet _right_beside
     (send _right_beside :deserialize buf ptr-) (incf ptr- (send _right_beside :serialization-length))
   ;; lanelet_map_msgs/Lanelet[] _forward_following
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forward_following (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
     (dolist (elem- _forward_following)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lanelet_map_msgs/Lanelet[] _forward_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forward_right (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
     (dolist (elem- _forward_right)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lanelet_map_msgs/Lanelet[] _forward_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forward_left (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Lanelet :init) r)) r))
     (dolist (elem- _forward_left)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::LaneletMap :md5sum-) "3579fead11f7e76167ff825b6fd746c4")
(setf (get lanelet_map_msgs::LaneletMap :datatype-) "lanelet_map_msgs/LaneletMap")
(setf (get lanelet_map_msgs::LaneletMap :definition-)
      "Header header
Lanelet[] current_lane
Lanelet left_beside
Lanelet right_beside
Lanelet[] forward_following
Lanelet[] forward_right
Lanelet[] forward_left


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
MSG: lanelet_map_msgs/Lanelet
int32 id
Way left_bound
Way right_bound
Way centerline
Regulatory regulatory_elements

================================================================================
MSG: lanelet_map_msgs/Way
string task_area
int8 is_forward
int8 open_concave_obs_det
int8 open_dynamic_obs_det
int8 open_foggy_det
int8 open_water_det
int8 foggy_area
int8 lawn_area
int8 water_area
float64 vel_limit
Node[] points

================================================================================
MSG: lanelet_map_msgs/Node
int32 id
string type
float64 vlimit
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: lanelet_map_msgs/Regulatory
Node[] special_nodes
Way[] special_ways

")



(provide :lanelet_map_msgs/LaneletMap "3579fead11f7e76167ff825b6fd746c4")


