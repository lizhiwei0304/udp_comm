;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::Regulatory)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'Regulatory (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::REGULATORY")
  (make-package "LANELET_MAP_MSGS::REGULATORY"))

(in-package "ROS")
;;//! \htmlinclude Regulatory.msg.html


(defclass lanelet_map_msgs::Regulatory
  :super ros::object
  :slots (_special_nodes _special_ways ))

(defmethod lanelet_map_msgs::Regulatory
  (:init
   (&key
    ((:special_nodes __special_nodes) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Node :init) r)) r))
    ((:special_ways __special_ways) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Way :init) r)) r))
    )
   (send-super :init)
   (setq _special_nodes __special_nodes)
   (setq _special_ways __special_ways)
   self)
  (:special_nodes
   (&rest __special_nodes)
   (if (keywordp (car __special_nodes))
       (send* _special_nodes __special_nodes)
     (progn
       (if __special_nodes (setq _special_nodes (car __special_nodes)))
       _special_nodes)))
  (:special_ways
   (&rest __special_ways)
   (if (keywordp (car __special_ways))
       (send* _special_ways __special_ways)
     (progn
       (if __special_ways (setq _special_ways (car __special_ways)))
       _special_ways)))
  (:serialization-length
   ()
   (+
    ;; lanelet_map_msgs/Node[] _special_nodes
    (apply #'+ (send-all _special_nodes :serialization-length)) 4
    ;; lanelet_map_msgs/Way[] _special_ways
    (apply #'+ (send-all _special_ways :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lanelet_map_msgs/Node[] _special_nodes
     (write-long (length _special_nodes) s)
     (dolist (elem _special_nodes)
       (send elem :serialize s)
       )
     ;; lanelet_map_msgs/Way[] _special_ways
     (write-long (length _special_ways) s)
     (dolist (elem _special_ways)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lanelet_map_msgs/Node[] _special_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _special_nodes (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Node :init) r)) r))
     (dolist (elem- _special_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lanelet_map_msgs/Way[] _special_ways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _special_ways (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Way :init) r)) r))
     (dolist (elem- _special_ways)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::Regulatory :md5sum-) "6181abd984439c0ed4c1b41afc66d563")
(setf (get lanelet_map_msgs::Regulatory :datatype-) "lanelet_map_msgs/Regulatory")
(setf (get lanelet_map_msgs::Regulatory :definition-)
      "Node[] special_nodes
Way[] special_ways

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

")



(provide :lanelet_map_msgs/Regulatory "6181abd984439c0ed4c1b41afc66d563")


