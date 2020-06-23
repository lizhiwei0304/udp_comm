;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::speed_debug)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'speed_debug (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::SPEED_DEBUG")
  (make-package "SPEED_DEBUG_MSGS::SPEED_DEBUG"))

(in-package "ROS")
;;//! \htmlinclude speed_debug.msg.html


(defclass speed_debug_msgs::speed_debug
  :super ros::object
  :slots (_points _cur_steer _issue _pub_ros_time ))

(defmethod speed_debug_msgs::speed_debug
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance speed_debug_msgs::super_point :init) r)) r))
    ((:cur_steer __cur_steer) (instance speed_debug_msgs::cur_steer :init))
    ((:issue __issue) (instance speed_debug_msgs::speed_issue :init))
    ((:pub_ros_time __pub_ros_time) 0.0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _cur_steer __cur_steer)
   (setq _issue __issue)
   (setq _pub_ros_time (float __pub_ros_time))
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:cur_steer
   (&rest __cur_steer)
   (if (keywordp (car __cur_steer))
       (send* _cur_steer __cur_steer)
     (progn
       (if __cur_steer (setq _cur_steer (car __cur_steer)))
       _cur_steer)))
  (:issue
   (&rest __issue)
   (if (keywordp (car __issue))
       (send* _issue __issue)
     (progn
       (if __issue (setq _issue (car __issue)))
       _issue)))
  (:pub_ros_time
   (&optional __pub_ros_time)
   (if __pub_ros_time (setq _pub_ros_time __pub_ros_time)) _pub_ros_time)
  (:serialization-length
   ()
   (+
    ;; speed_debug_msgs/super_point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; speed_debug_msgs/cur_steer _cur_steer
    (send _cur_steer :serialization-length)
    ;; speed_debug_msgs/speed_issue _issue
    (send _issue :serialization-length)
    ;; float64 _pub_ros_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; speed_debug_msgs/super_point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; speed_debug_msgs/cur_steer _cur_steer
       (send _cur_steer :serialize s)
     ;; speed_debug_msgs/speed_issue _issue
       (send _issue :serialize s)
     ;; float64 _pub_ros_time
       (sys::poke _pub_ros_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; speed_debug_msgs/super_point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance speed_debug_msgs::super_point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; speed_debug_msgs/cur_steer _cur_steer
     (send _cur_steer :deserialize buf ptr-) (incf ptr- (send _cur_steer :serialization-length))
   ;; speed_debug_msgs/speed_issue _issue
     (send _issue :deserialize buf ptr-) (incf ptr- (send _issue :serialization-length))
   ;; float64 _pub_ros_time
     (setq _pub_ros_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::speed_debug :md5sum-) "d834a9927e9daa0494e9fa3070e36b02")
(setf (get speed_debug_msgs::speed_debug :datatype-) "speed_debug_msgs/speed_debug")
(setf (get speed_debug_msgs::speed_debug :definition-)
      "super_point[] points
cur_steer cur_steer
speed_issue issue
float64 pub_ros_time
================================================================================
MSG: speed_debug_msgs/super_point
v v
curv curv
speed_time time
float64 x
float64 y
float64 s
float64 acc
================================================================================
MSG: speed_debug_msgs/v
float64 v_max_dynamic
float64 v_lat_acc
float64 v_lon_acc
float64 v_slide_dec
float64 v_lon_dec
float64 v_jerk
float64 v_blind
float64 v_constrained
================================================================================
MSG: speed_debug_msgs/curv
float64 curv_final
================================================================================
MSG: speed_debug_msgs/speed_time
float64 time
================================================================================
MSG: speed_debug_msgs/cur_steer
float64 steer
================================================================================
MSG: speed_debug_msgs/speed_issue
float64 v
float64 acc
")



(provide :speed_debug_msgs/speed_debug "d834a9927e9daa0494e9fa3070e36b02")


