;; Auto-generated. Do not edit!


(when (boundp 'dymidetect2speed_msgs::Dymipoint)
  (if (not (find-package "DYMIDETECT2SPEED_MSGS"))
    (make-package "DYMIDETECT2SPEED_MSGS"))
  (shadow 'Dymipoint (find-package "DYMIDETECT2SPEED_MSGS")))
(unless (find-package "DYMIDETECT2SPEED_MSGS::DYMIPOINT")
  (make-package "DYMIDETECT2SPEED_MSGS::DYMIPOINT"))

(in-package "ROS")
;;//! \htmlinclude Dymipoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dymidetect2speed_msgs::Dymipoint
  :super ros::object
  :slots (_position ))

(defmethod dymidetect2speed_msgs::Dymipoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get dymidetect2speed_msgs::Dymipoint :md5sum-) "e7bb0ef028c744b081acdc57743b11d8")
(setf (get dymidetect2speed_msgs::Dymipoint :datatype-) "dymidetect2speed_msgs/Dymipoint")
(setf (get dymidetect2speed_msgs::Dymipoint :definition-)
      "geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :dymidetect2speed_msgs/Dymipoint "e7bb0ef028c744b081acdc57743b11d8")


