;; Auto-generated. Do not edit!


(when (boundp 'extractroad_msg::extractroad)
  (if (not (find-package "EXTRACTROAD_MSG"))
    (make-package "EXTRACTROAD_MSG"))
  (shadow 'extractroad (find-package "EXTRACTROAD_MSG")))
(unless (find-package "EXTRACTROAD_MSG::EXTRACTROAD")
  (make-package "EXTRACTROAD_MSG::EXTRACTROAD"))

(in-package "ROS")
;;//! \htmlinclude extractroad.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass extractroad_msg::extractroad
  :super ros::object
  :slots (_header _roadcount _vehicle_point _leadpoints ))

(defmethod extractroad_msg::extractroad
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roadcount __roadcount) 0)
    ((:vehicle_point __vehicle_point) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:leadpoints __leadpoints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _roadcount (round __roadcount))
   (setq _vehicle_point __vehicle_point)
   (setq _leadpoints __leadpoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roadcount
   (&optional __roadcount)
   (if __roadcount (setq _roadcount __roadcount)) _roadcount)
  (:vehicle_point
   (&optional __vehicle_point)
   (if __vehicle_point (setq _vehicle_point __vehicle_point)) _vehicle_point)
  (:leadpoints
   (&optional __leadpoints)
   (if __leadpoints (setq _leadpoints __leadpoints)) _leadpoints)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _roadcount
    2
    ;; float64[2] _vehicle_point
    (* 8    2)
    ;; float64[] _leadpoints
    (* 8    (length _leadpoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _roadcount
       (write-word _roadcount s)
     ;; float64[2] _vehicle_point
     (dotimes (i 2)
       (sys::poke (elt _vehicle_point i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _leadpoints
     (write-long (length _leadpoints) s)
     (dotimes (i (length _leadpoints))
       (sys::poke (elt _leadpoints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _roadcount
     (setq _roadcount (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[2] _vehicle_point
   (dotimes (i (length _vehicle_point))
     (setf (elt _vehicle_point i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[] _leadpoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _leadpoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _leadpoints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get extractroad_msg::extractroad :md5sum-) "cc64a4728149eec5d7e18874d8617290")
(setf (get extractroad_msg::extractroad :datatype-) "extractroad_msg/extractroad")
(setf (get extractroad_msg::extractroad :definition-)
      "
std_msgs/Header header
int16 roadcount
float64[2] vehicle_point
float64[] leadpoints

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



(provide :extractroad_msg/extractroad "cc64a4728149eec5d7e18874d8617290")


