;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::LampReport)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'LampReport (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::LAMPREPORT")
  (make-package "CONTROL_MSGS::LAMPREPORT"))

(in-package "ROS")
;;//! \htmlinclude LampReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::LampReport
  :super ros::object
  :slots (_header _lamp_1 _lamp_2 ))

(defmethod control_msgs::LampReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lamp_1 __lamp_1) nil)
    ((:lamp_2 __lamp_2) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lamp_1 __lamp_1)
   (setq _lamp_2 __lamp_2)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lamp_1
   (&optional __lamp_1)
   (if __lamp_1 (setq _lamp_1 __lamp_1)) _lamp_1)
  (:lamp_2
   (&optional __lamp_2)
   (if __lamp_2 (setq _lamp_2 __lamp_2)) _lamp_2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _lamp_1
    1
    ;; bool _lamp_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _lamp_1
       (if _lamp_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _lamp_2
       (if _lamp_2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _lamp_1
     (setq _lamp_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lamp_2
     (setq _lamp_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get control_msgs::LampReport :md5sum-) "b5d7ffb50b153f2bd203104ec5d6fe13")
(setf (get control_msgs::LampReport :datatype-) "control_msgs/LampReport")
(setf (get control_msgs::LampReport :definition-)
      "Header header
bool lamp_1
bool lamp_2


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :control_msgs/LampReport "b5d7ffb50b153f2bd203104ec5d6fe13")


