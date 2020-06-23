;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::super_point)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'super_point (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::SUPER_POINT")
  (make-package "SPEED_DEBUG_MSGS::SUPER_POINT"))

(in-package "ROS")
;;//! \htmlinclude super_point.msg.html


(defclass speed_debug_msgs::super_point
  :super ros::object
  :slots (_v _curv _time _x _y _s _acc ))

(defmethod speed_debug_msgs::super_point
  (:init
   (&key
    ((:v __v) (instance speed_debug_msgs::v :init))
    ((:curv __curv) (instance speed_debug_msgs::curv :init))
    ((:time __time) (instance speed_debug_msgs::speed_time :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:s __s) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _v __v)
   (setq _curv __curv)
   (setq _time __time)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _s (float __s))
   (setq _acc (float __acc))
   self)
  (:v
   (&rest __v)
   (if (keywordp (car __v))
       (send* _v __v)
     (progn
       (if __v (setq _v (car __v)))
       _v)))
  (:curv
   (&rest __curv)
   (if (keywordp (car __curv))
       (send* _curv __curv)
     (progn
       (if __curv (setq _curv (car __curv)))
       _curv)))
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; speed_debug_msgs/v _v
    (send _v :serialization-length)
    ;; speed_debug_msgs/curv _curv
    (send _curv :serialization-length)
    ;; speed_debug_msgs/speed_time _time
    (send _time :serialization-length)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _s
    8
    ;; float64 _acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; speed_debug_msgs/v _v
       (send _v :serialize s)
     ;; speed_debug_msgs/curv _curv
       (send _curv :serialize s)
     ;; speed_debug_msgs/speed_time _time
       (send _time :serialize s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; speed_debug_msgs/v _v
     (send _v :deserialize buf ptr-) (incf ptr- (send _v :serialization-length))
   ;; speed_debug_msgs/curv _curv
     (send _curv :deserialize buf ptr-) (incf ptr- (send _curv :serialization-length))
   ;; speed_debug_msgs/speed_time _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::super_point :md5sum-) "fdc128084915a3dc47e2491ff229fb45")
(setf (get speed_debug_msgs::super_point :datatype-) "speed_debug_msgs/super_point")
(setf (get speed_debug_msgs::super_point :definition-)
      "v v
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
")



(provide :speed_debug_msgs/super_point "fdc128084915a3dc47e2491ff229fb45")


