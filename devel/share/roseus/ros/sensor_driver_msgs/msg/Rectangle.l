;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::Rectangle)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'Rectangle (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::RECTANGLE")
  (make-package "SENSOR_DRIVER_MSGS::RECTANGLE"))

(in-package "ROS")
;;//! \htmlinclude Rectangle.msg.html


(defclass sensor_driver_msgs::Rectangle
  :super ros::object
  :slots (_Point1 _Point2 _Point3 _Point4 _Height _Heading _Id_number _v_x _v_y ))

(defmethod sensor_driver_msgs::Rectangle
  (:init
   (&key
    ((:Point1 __Point1) (instance sensor_driver_msgs::Points :init))
    ((:Point2 __Point2) (instance sensor_driver_msgs::Points :init))
    ((:Point3 __Point3) (instance sensor_driver_msgs::Points :init))
    ((:Point4 __Point4) (instance sensor_driver_msgs::Points :init))
    ((:Height __Height) 0.0)
    ((:Heading __Heading) 0)
    ((:Id_number __Id_number) 0)
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    )
   (send-super :init)
   (setq _Point1 __Point1)
   (setq _Point2 __Point2)
   (setq _Point3 __Point3)
   (setq _Point4 __Point4)
   (setq _Height (float __Height))
   (setq _Heading (round __Heading))
   (setq _Id_number (round __Id_number))
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   self)
  (:Point1
   (&rest __Point1)
   (if (keywordp (car __Point1))
       (send* _Point1 __Point1)
     (progn
       (if __Point1 (setq _Point1 (car __Point1)))
       _Point1)))
  (:Point2
   (&rest __Point2)
   (if (keywordp (car __Point2))
       (send* _Point2 __Point2)
     (progn
       (if __Point2 (setq _Point2 (car __Point2)))
       _Point2)))
  (:Point3
   (&rest __Point3)
   (if (keywordp (car __Point3))
       (send* _Point3 __Point3)
     (progn
       (if __Point3 (setq _Point3 (car __Point3)))
       _Point3)))
  (:Point4
   (&rest __Point4)
   (if (keywordp (car __Point4))
       (send* _Point4 __Point4)
     (progn
       (if __Point4 (setq _Point4 (car __Point4)))
       _Point4)))
  (:Height
   (&optional __Height)
   (if __Height (setq _Height __Height)) _Height)
  (:Heading
   (&optional __Heading)
   (if __Heading (setq _Heading __Heading)) _Heading)
  (:Id_number
   (&optional __Id_number)
   (if __Id_number (setq _Id_number __Id_number)) _Id_number)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:serialization-length
   ()
   (+
    ;; sensor_driver_msgs/Points _Point1
    (send _Point1 :serialization-length)
    ;; sensor_driver_msgs/Points _Point2
    (send _Point2 :serialization-length)
    ;; sensor_driver_msgs/Points _Point3
    (send _Point3 :serialization-length)
    ;; sensor_driver_msgs/Points _Point4
    (send _Point4 :serialization-length)
    ;; float64 _Height
    8
    ;; int32 _Heading
    4
    ;; int32 _Id_number
    4
    ;; float64 _v_x
    8
    ;; float64 _v_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_driver_msgs/Points _Point1
       (send _Point1 :serialize s)
     ;; sensor_driver_msgs/Points _Point2
       (send _Point2 :serialize s)
     ;; sensor_driver_msgs/Points _Point3
       (send _Point3 :serialize s)
     ;; sensor_driver_msgs/Points _Point4
       (send _Point4 :serialize s)
     ;; float64 _Height
       (sys::poke _Height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Heading
       (write-long _Heading s)
     ;; int32 _Id_number
       (write-long _Id_number s)
     ;; float64 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_driver_msgs/Points _Point1
     (send _Point1 :deserialize buf ptr-) (incf ptr- (send _Point1 :serialization-length))
   ;; sensor_driver_msgs/Points _Point2
     (send _Point2 :deserialize buf ptr-) (incf ptr- (send _Point2 :serialization-length))
   ;; sensor_driver_msgs/Points _Point3
     (send _Point3 :deserialize buf ptr-) (incf ptr- (send _Point3 :serialization-length))
   ;; sensor_driver_msgs/Points _Point4
     (send _Point4 :deserialize buf ptr-) (incf ptr- (send _Point4 :serialization-length))
   ;; float64 _Height
     (setq _Height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Heading
     (setq _Heading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Id_number
     (setq _Id_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _v_x
     (setq _v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_y
     (setq _v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_driver_msgs::Rectangle :md5sum-) "a41302c037ca3980af28f0230373b1ae")
(setf (get sensor_driver_msgs::Rectangle :datatype-) "sensor_driver_msgs/Rectangle")
(setf (get sensor_driver_msgs::Rectangle :definition-)
      "Points Point1
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



(provide :sensor_driver_msgs/Rectangle "a41302c037ca3980af28f0230373b1ae")


