;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::startconfig)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'startconfig (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::STARTCONFIG")
  (make-package "SENSOR_DRIVER_MSGS::STARTCONFIG"))
(unless (find-package "SENSOR_DRIVER_MSGS::STARTCONFIGREQUEST")
  (make-package "SENSOR_DRIVER_MSGS::STARTCONFIGREQUEST"))
(unless (find-package "SENSOR_DRIVER_MSGS::STARTCONFIGRESPONSE")
  (make-package "SENSOR_DRIVER_MSGS::STARTCONFIGRESPONSE"))

(in-package "ROS")





(defclass sensor_driver_msgs::startconfigRequest
  :super ros::object
  :slots ())

(defmethod sensor_driver_msgs::startconfigRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sensor_driver_msgs::startconfigResponse
  :super ros::object
  :slots (_configstr ))

(defmethod sensor_driver_msgs::startconfigResponse
  (:init
   (&key
    ((:configstr __configstr) "")
    )
   (send-super :init)
   (setq _configstr (string __configstr))
   self)
  (:configstr
   (&optional __configstr)
   (if __configstr (setq _configstr __configstr)) _configstr)
  (:serialization-length
   ()
   (+
    ;; string _configstr
    4 (length _configstr)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _configstr
       (write-long (length _configstr) s) (princ _configstr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _configstr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _configstr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sensor_driver_msgs::startconfig
  :super ros::object
  :slots ())

(setf (get sensor_driver_msgs::startconfig :md5sum-) "8f8af5cfa0a03531286994caaf587484")
(setf (get sensor_driver_msgs::startconfig :datatype-) "sensor_driver_msgs/startconfig")
(setf (get sensor_driver_msgs::startconfig :request) sensor_driver_msgs::startconfigRequest)
(setf (get sensor_driver_msgs::startconfig :response) sensor_driver_msgs::startconfigResponse)

(defmethod sensor_driver_msgs::startconfigRequest
  (:response () (instance sensor_driver_msgs::startconfigResponse :init)))

(setf (get sensor_driver_msgs::startconfigRequest :md5sum-) "8f8af5cfa0a03531286994caaf587484")
(setf (get sensor_driver_msgs::startconfigRequest :datatype-) "sensor_driver_msgs/startconfigRequest")
(setf (get sensor_driver_msgs::startconfigRequest :definition-)
      "
---

string configstr

")

(setf (get sensor_driver_msgs::startconfigResponse :md5sum-) "8f8af5cfa0a03531286994caaf587484")
(setf (get sensor_driver_msgs::startconfigResponse :datatype-) "sensor_driver_msgs/startconfigResponse")
(setf (get sensor_driver_msgs::startconfigResponse :definition-)
      "
---

string configstr

")



(provide :sensor_driver_msgs/startconfig "8f8af5cfa0a03531286994caaf587484")


