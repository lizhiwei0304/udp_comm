;; Auto-generated. Do not edit!


(when (boundp 'speed_debug_msgs::curv)
  (if (not (find-package "SPEED_DEBUG_MSGS"))
    (make-package "SPEED_DEBUG_MSGS"))
  (shadow 'curv (find-package "SPEED_DEBUG_MSGS")))
(unless (find-package "SPEED_DEBUG_MSGS::CURV")
  (make-package "SPEED_DEBUG_MSGS::CURV"))

(in-package "ROS")
;;//! \htmlinclude curv.msg.html


(defclass speed_debug_msgs::curv
  :super ros::object
  :slots (_curv_final ))

(defmethod speed_debug_msgs::curv
  (:init
   (&key
    ((:curv_final __curv_final) 0.0)
    )
   (send-super :init)
   (setq _curv_final (float __curv_final))
   self)
  (:curv_final
   (&optional __curv_final)
   (if __curv_final (setq _curv_final __curv_final)) _curv_final)
  (:serialization-length
   ()
   (+
    ;; float64 _curv_final
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _curv_final
       (sys::poke _curv_final (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _curv_final
     (setq _curv_final (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get speed_debug_msgs::curv :md5sum-) "097b555501edfa9e055b8ced874a3825")
(setf (get speed_debug_msgs::curv :datatype-) "speed_debug_msgs/curv")
(setf (get speed_debug_msgs::curv :definition-)
      "float64 curv_final
")



(provide :speed_debug_msgs/curv "097b555501edfa9e055b8ced874a3825")


