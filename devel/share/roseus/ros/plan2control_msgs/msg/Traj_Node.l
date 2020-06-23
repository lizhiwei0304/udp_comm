;; Auto-generated. Do not edit!


(when (boundp 'plan2control_msgs::Traj_Node)
  (if (not (find-package "PLAN2CONTROL_MSGS"))
    (make-package "PLAN2CONTROL_MSGS"))
  (shadow 'Traj_Node (find-package "PLAN2CONTROL_MSGS")))
(unless (find-package "PLAN2CONTROL_MSGS::TRAJ_NODE")
  (make-package "PLAN2CONTROL_MSGS::TRAJ_NODE"))

(in-package "ROS")
;;//! \htmlinclude Traj_Node.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass plan2control_msgs::Traj_Node
  :super ros::object
  :slots (_forward _id _position _orientation _curvature _velocity ))

(defmethod plan2control_msgs::Traj_Node
  (:init
   (&key
    ((:forward __forward) nil)
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:curvature __curvature) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _forward __forward)
   (setq _id (round __id))
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _curvature (float __curvature))
   (setq _velocity __velocity)
   self)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; bool _forward
    1
    ;; int32 _id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; float64 _curvature
    8
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get plan2control_msgs::Traj_Node :md5sum-) "cf8156c0b203e66c6cdd6a4117bc4ae5")
(setf (get plan2control_msgs::Traj_Node :datatype-) "plan2control_msgs/Traj_Node")
(setf (get plan2control_msgs::Traj_Node :definition-)
      "bool forward
int32 id
geometry_msgs/Point position
geometry_msgs/Quaternion orientation
float64 curvature
geometry_msgs/Twist velocity


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :plan2control_msgs/Traj_Node "cf8156c0b203e66c6cdd6a4117bc4ae5")


