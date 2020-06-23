;; Auto-generated. Do not edit!


(when (boundp 'plan2control_msgs::Trajectory)
  (if (not (find-package "PLAN2CONTROL_MSGS"))
    (make-package "PLAN2CONTROL_MSGS"))
  (shadow 'Trajectory (find-package "PLAN2CONTROL_MSGS")))
(unless (find-package "PLAN2CONTROL_MSGS::TRAJECTORY")
  (make-package "PLAN2CONTROL_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass plan2control_msgs::Trajectory
  :super ros::object
  :slots (_header _points _issued_acc _delay_index ))

(defmethod plan2control_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance plan2control_msgs::Traj_Node :init) r)) r))
    ((:issued_acc __issued_acc) 0.0)
    ((:delay_index __delay_index) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   (setq _issued_acc (float __issued_acc))
   (setq _delay_index (round __delay_index))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:issued_acc
   (&optional __issued_acc)
   (if __issued_acc (setq _issued_acc __issued_acc)) _issued_acc)
  (:delay_index
   (&optional __delay_index)
   (if __delay_index (setq _delay_index __delay_index)) _delay_index)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; plan2control_msgs/Traj_Node[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float64 _issued_acc
    8
    ;; int32 _delay_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; plan2control_msgs/Traj_Node[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float64 _issued_acc
       (sys::poke _issued_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _delay_index
       (write-long _delay_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; plan2control_msgs/Traj_Node[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance plan2control_msgs::Traj_Node :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _issued_acc
     (setq _issued_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _delay_index
     (setq _delay_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get plan2control_msgs::Trajectory :md5sum-) "dcde8049baa358f3e4eb404f0824aba6")
(setf (get plan2control_msgs::Trajectory :datatype-) "plan2control_msgs/Trajectory")
(setf (get plan2control_msgs::Trajectory :definition-)
      "std_msgs/Header header
Traj_Node[] points
float64 issued_acc
int32 delay_index

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
MSG: plan2control_msgs/Traj_Node
bool forward
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



(provide :plan2control_msgs/Trajectory "dcde8049baa358f3e4eb404f0824aba6")


