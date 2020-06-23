;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::cur_steer)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'cur_steer (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::CUR_STEER")
  (make-package "SPEED_DEBUG_MSGS::CUR_STEER"))

(in-package "ROS")
;;//! \htmlinclude cur_steer.msg.html


(defclass speed_debug_msgs::cur_steer
  :super ros::object
  :slots (_steer ))

(defmethod speed_debug_msgs::cur_steer
  (:init
   (&key
    ((:steer __steer) 0.0)
    )
   (send-super :init)
   (setq _steer (float __steer))
   self)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:serialization-length
   ()
   (+
    ;; float64 _steer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::cur_steer :md5sum-) "d559fc901d9e414fce2d38e5b85af3e0")
(setf (get speed_debug_msgs::cur_steer :datatype-) "speed_debug_msgs/cur_steer")
(setf (get speed_debug_msgs::cur_steer :definition-)
      "float64 steer
")



(provide :speed_debug_msgs/cur_steer "d559fc901d9e414fce2d38e5b85af3e0")


