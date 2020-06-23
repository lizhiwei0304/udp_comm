;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::speed_issue)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'speed_issue (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::SPEED_ISSUE")
  (make-package "SPEED_DEBUG_MSGS::SPEED_ISSUE"))

(in-package "ROS")
;;//! \htmlinclude speed_issue.msg.html


(defclass speed_debug_msgs::speed_issue
  :super ros::object
  :slots (_v _acc ))

(defmethod speed_debug_msgs::speed_issue
  (:init
   (&key
    ((:v __v) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _v (float __v))
   (setq _acc (float __acc))
   self)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; float64 _v
    8
    ;; float64 _acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::speed_issue :md5sum-) "ce1fb38e727855ee90e2d74b8df8c7ee")
(setf (get speed_debug_msgs::speed_issue :datatype-) "speed_debug_msgs/speed_issue")
(setf (get speed_debug_msgs::speed_issue :definition-)
      "float64 v
float64 acc
")



(provide :speed_debug_msgs/speed_issue "ce1fb38e727855ee90e2d74b8df8c7ee")


