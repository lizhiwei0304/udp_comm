;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::speed_time)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'speed_time (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::SPEED_TIME")
  (make-package "SPEED_DEBUG_MSGS::SPEED_TIME"))

(in-package "ROS")
;;//! \htmlinclude speed_time.msg.html


(defclass speed_debug_msgs::speed_time
  :super ros::object
  :slots (_time ))

(defmethod speed_debug_msgs::speed_time
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::speed_time :md5sum-) "be5310e7aa4c90cdee120add91648cee")
(setf (get speed_debug_msgs::speed_time :datatype-) "speed_debug_msgs/speed_time")
(setf (get speed_debug_msgs::speed_time :definition-)
      "float64 time
")



(provide :speed_debug_msgs/speed_time "be5310e7aa4c90cdee120add91648cee")


