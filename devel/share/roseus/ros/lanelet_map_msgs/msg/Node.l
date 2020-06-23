;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::Node)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'Node (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::NODE")
  (make-package "LANELET_MAP_MSGS::NODE"))

(in-package "ROS")
;;//! \htmlinclude Node.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lanelet_map_msgs::Node
  :super ros::object
  :slots (_id _type _vlimit _point ))

(defmethod lanelet_map_msgs::Node
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) "")
    ((:vlimit __vlimit) 0.0)
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _vlimit (float __vlimit))
   (setq _point __point)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:vlimit
   (&optional __vlimit)
   (if __vlimit (setq _vlimit __vlimit)) _vlimit)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _type
    4 (length _type)
    ;; float64 _vlimit
    8
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float64 _vlimit
       (sys::poke _vlimit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _vlimit
     (setq _vlimit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::Node :md5sum-) "3c91d6b3b002bf9b578b25953a4a3436")
(setf (get lanelet_map_msgs::Node :datatype-) "lanelet_map_msgs/Node")
(setf (get lanelet_map_msgs::Node :definition-)
      "int32 id
string type
float64 vlimit
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lanelet_map_msgs/Node "3c91d6b3b002bf9b578b25953a4a3436")


