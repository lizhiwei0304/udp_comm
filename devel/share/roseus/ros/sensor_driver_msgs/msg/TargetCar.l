;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::TargetCar)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'TargetCar (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::TARGETCAR")
  (make-package "SENSOR_DRIVER_MSGS::TARGETCAR"))

(in-package "ROS")
;;//! \htmlinclude TargetCar.msg.html


(defclass sensor_driver_msgs::TargetCar
  :super ros::object
  :slots (_CarPosition _num ))

(defmethod sensor_driver_msgs::TargetCar
  (:init
   (&key
    ((:CarPosition __CarPosition) (let (r) (dotimes (i 0) (push (instance sensor_driver_msgs::Rectangle :init) r)) r))
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _CarPosition __CarPosition)
   (setq _num (round __num))
   self)
  (:CarPosition
   (&rest __CarPosition)
   (if (keywordp (car __CarPosition))
       (send* _CarPosition __CarPosition)
     (progn
       (if __CarPosition (setq _CarPosition (car __CarPosition)))
       _CarPosition)))
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; sensor_driver_msgs/Rectangle[] _CarPosition
    (apply #'+ (send-all _CarPosition :serialization-length)) 4
    ;; int32 _num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_driver_msgs/Rectangle[] _CarPosition
     (write-long (length _CarPosition) s)
     (dolist (elem _CarPosition)
       (send elem :serialize s)
       )
     ;; int32 _num
       (write-long _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_driver_msgs/Rectangle[] _CarPosition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _CarPosition (let (r) (dotimes (i n) (push (instance sensor_driver_msgs::Rectangle :init) r)) r))
     (dolist (elem- _CarPosition)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_driver_msgs::TargetCar :md5sum-) "3ef49c01eb2a83dc00d31ab0905a1439")
(setf (get sensor_driver_msgs::TargetCar :datatype-) "sensor_driver_msgs/TargetCar")
(setf (get sensor_driver_msgs::TargetCar :definition-)
      "Rectangle[] CarPosition
int32 num

================================================================================
MSG: sensor_driver_msgs/Rectangle
Points Point1
Points Point2
Points Point3
Points Point4
float64 Height
int32 Heading
int32 Id_number
float64 v_x
float64 v_y

================================================================================
MSG: sensor_driver_msgs/Points
float64 x
float64 y
float64 z

")



(provide :sensor_driver_msgs/TargetCar "3ef49c01eb2a83dc00d31ab0905a1439")


