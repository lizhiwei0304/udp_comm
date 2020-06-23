;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::Lanelet)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'Lanelet (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::LANELET")
  (make-package "LANELET_MAP_MSGS::LANELET"))

(in-package "ROS")
;;//! \htmlinclude Lanelet.msg.html


(defclass lanelet_map_msgs::Lanelet
  :super ros::object
  :slots (_id _left_bound _right_bound _centerline _regulatory_elements ))

(defmethod lanelet_map_msgs::Lanelet
  (:init
   (&key
    ((:id __id) 0)
    ((:left_bound __left_bound) (instance lanelet_map_msgs::Way :init))
    ((:right_bound __right_bound) (instance lanelet_map_msgs::Way :init))
    ((:centerline __centerline) (instance lanelet_map_msgs::Way :init))
    ((:regulatory_elements __regulatory_elements) (instance lanelet_map_msgs::Regulatory :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _left_bound __left_bound)
   (setq _right_bound __right_bound)
   (setq _centerline __centerline)
   (setq _regulatory_elements __regulatory_elements)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:left_bound
   (&rest __left_bound)
   (if (keywordp (car __left_bound))
       (send* _left_bound __left_bound)
     (progn
       (if __left_bound (setq _left_bound (car __left_bound)))
       _left_bound)))
  (:right_bound
   (&rest __right_bound)
   (if (keywordp (car __right_bound))
       (send* _right_bound __right_bound)
     (progn
       (if __right_bound (setq _right_bound (car __right_bound)))
       _right_bound)))
  (:centerline
   (&rest __centerline)
   (if (keywordp (car __centerline))
       (send* _centerline __centerline)
     (progn
       (if __centerline (setq _centerline (car __centerline)))
       _centerline)))
  (:regulatory_elements
   (&rest __regulatory_elements)
   (if (keywordp (car __regulatory_elements))
       (send* _regulatory_elements __regulatory_elements)
     (progn
       (if __regulatory_elements (setq _regulatory_elements (car __regulatory_elements)))
       _regulatory_elements)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; lanelet_map_msgs/Way _left_bound
    (send _left_bound :serialization-length)
    ;; lanelet_map_msgs/Way _right_bound
    (send _right_bound :serialization-length)
    ;; lanelet_map_msgs/Way _centerline
    (send _centerline :serialization-length)
    ;; lanelet_map_msgs/Regulatory _regulatory_elements
    (send _regulatory_elements :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; lanelet_map_msgs/Way _left_bound
       (send _left_bound :serialize s)
     ;; lanelet_map_msgs/Way _right_bound
       (send _right_bound :serialize s)
     ;; lanelet_map_msgs/Way _centerline
       (send _centerline :serialize s)
     ;; lanelet_map_msgs/Regulatory _regulatory_elements
       (send _regulatory_elements :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lanelet_map_msgs/Way _left_bound
     (send _left_bound :deserialize buf ptr-) (incf ptr- (send _left_bound :serialization-length))
   ;; lanelet_map_msgs/Way _right_bound
     (send _right_bound :deserialize buf ptr-) (incf ptr- (send _right_bound :serialization-length))
   ;; lanelet_map_msgs/Way _centerline
     (send _centerline :deserialize buf ptr-) (incf ptr- (send _centerline :serialization-length))
   ;; lanelet_map_msgs/Regulatory _regulatory_elements
     (send _regulatory_elements :deserialize buf ptr-) (incf ptr- (send _regulatory_elements :serialization-length))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::Lanelet :md5sum-) "79efb21963470ed788ab90e3dd311d0e")
(setf (get lanelet_map_msgs::Lanelet :datatype-) "lanelet_map_msgs/Lanelet")
(setf (get lanelet_map_msgs::Lanelet :definition-)
      "int32 id
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



(provide :lanelet_map_msgs/Lanelet "79efb21963470ed788ab90e3dd311d0e")


