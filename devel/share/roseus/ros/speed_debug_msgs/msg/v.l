;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::v)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'v (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::V")
  (make-package "SPEED_DEBUG_MSGS::V"))

(in-package "ROS")
;;//! \htmlinclude v.msg.html


(defclass speed_debug_msgs::v
  :super ros::object
  :slots (_v_max_dynamic _v_lat_acc _v_lon_acc _v_slide_dec _v_lon_dec _v_jerk _v_blind _v_constrained ))

(defmethod speed_debug_msgs::v
  (:init
   (&key
    ((:v_max_dynamic __v_max_dynamic) 0.0)
    ((:v_lat_acc __v_lat_acc) 0.0)
    ((:v_lon_acc __v_lon_acc) 0.0)
    ((:v_slide_dec __v_slide_dec) 0.0)
    ((:v_lon_dec __v_lon_dec) 0.0)
    ((:v_jerk __v_jerk) 0.0)
    ((:v_blind __v_blind) 0.0)
    ((:v_constrained __v_constrained) 0.0)
    )
   (send-super :init)
   (setq _v_max_dynamic (float __v_max_dynamic))
   (setq _v_lat_acc (float __v_lat_acc))
   (setq _v_lon_acc (float __v_lon_acc))
   (setq _v_slide_dec (float __v_slide_dec))
   (setq _v_lon_dec (float __v_lon_dec))
   (setq _v_jerk (float __v_jerk))
   (setq _v_blind (float __v_blind))
   (setq _v_constrained (float __v_constrained))
   self)
  (:v_max_dynamic
   (&optional __v_max_dynamic)
   (if __v_max_dynamic (setq _v_max_dynamic __v_max_dynamic)) _v_max_dynamic)
  (:v_lat_acc
   (&optional __v_lat_acc)
   (if __v_lat_acc (setq _v_lat_acc __v_lat_acc)) _v_lat_acc)
  (:v_lon_acc
   (&optional __v_lon_acc)
   (if __v_lon_acc (setq _v_lon_acc __v_lon_acc)) _v_lon_acc)
  (:v_slide_dec
   (&optional __v_slide_dec)
   (if __v_slide_dec (setq _v_slide_dec __v_slide_dec)) _v_slide_dec)
  (:v_lon_dec
   (&optional __v_lon_dec)
   (if __v_lon_dec (setq _v_lon_dec __v_lon_dec)) _v_lon_dec)
  (:v_jerk
   (&optional __v_jerk)
   (if __v_jerk (setq _v_jerk __v_jerk)) _v_jerk)
  (:v_blind
   (&optional __v_blind)
   (if __v_blind (setq _v_blind __v_blind)) _v_blind)
  (:v_constrained
   (&optional __v_constrained)
   (if __v_constrained (setq _v_constrained __v_constrained)) _v_constrained)
  (:serialization-length
   ()
   (+
    ;; float64 _v_max_dynamic
    8
    ;; float64 _v_lat_acc
    8
    ;; float64 _v_lon_acc
    8
    ;; float64 _v_slide_dec
    8
    ;; float64 _v_lon_dec
    8
    ;; float64 _v_jerk
    8
    ;; float64 _v_blind
    8
    ;; float64 _v_constrained
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _v_max_dynamic
       (sys::poke _v_max_dynamic (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_lat_acc
       (sys::poke _v_lat_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_lon_acc
       (sys::poke _v_lon_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_slide_dec
       (sys::poke _v_slide_dec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_lon_dec
       (sys::poke _v_lon_dec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_jerk
       (sys::poke _v_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_blind
       (sys::poke _v_blind (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_constrained
       (sys::poke _v_constrained (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _v_max_dynamic
     (setq _v_max_dynamic (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_lat_acc
     (setq _v_lat_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_lon_acc
     (setq _v_lon_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_slide_dec
     (setq _v_slide_dec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_lon_dec
     (setq _v_lon_dec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_jerk
     (setq _v_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_blind
     (setq _v_blind (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_constrained
     (setq _v_constrained (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::v :md5sum-) "2bb18dd6157ad5bbbd8073687e75001e")
(setf (get speed_debug_msgs::v :datatype-) "speed_debug_msgs/v")
(setf (get speed_debug_msgs::v :definition-)
      "float64 v_max_dynamic
float64 v_lat_acc
float64 v_lon_acc
float64 v_slide_dec
float64 v_lon_dec
float64 v_jerk
float64 v_blind
float64 v_constrained
")



(provide :speed_debug_msgs/v "2bb18dd6157ad5bbbd8073687e75001e")


