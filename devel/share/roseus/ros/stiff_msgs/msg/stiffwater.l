;; Auto-generated. Do not edit!


(when (boundp 'stiff_msgs::stiffwater)
  (if (not (find-package "STIFF_MSGS"))
    (make-package "STIFF_MSGS"))
  (shadow 'stiffwater (find-package "STIFF_MSGS")))
(unless (find-package "STIFF_MSGS::STIFFWATER")
  (make-package "STIFF_MSGS::STIFFWATER"))

(in-package "ROS")
;;//! \htmlinclude stiffwater.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stiff_msgs::stiffwater
  :super ros::object
  :slots (_header _ogmheight _ogmwidth _vehicle_x _vehicle_y _resolution _data _havewater ))

(defmethod stiff_msgs::stiffwater
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ogmheight __ogmheight) 0)
    ((:ogmwidth __ogmwidth) 0)
    ((:vehicle_x __vehicle_x) 0)
    ((:vehicle_y __vehicle_y) 0)
    ((:resolution __resolution) 0.0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:havewater __havewater) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ogmheight (round __ogmheight))
   (setq _ogmwidth (round __ogmwidth))
   (setq _vehicle_x (round __vehicle_x))
   (setq _vehicle_y (round __vehicle_y))
   (setq _resolution (float __resolution))
   (setq _data __data)
   (setq _havewater (round __havewater))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ogmheight
   (&optional __ogmheight)
   (if __ogmheight (setq _ogmheight __ogmheight)) _ogmheight)
  (:ogmwidth
   (&optional __ogmwidth)
   (if __ogmwidth (setq _ogmwidth __ogmwidth)) _ogmwidth)
  (:vehicle_x
   (&optional __vehicle_x)
   (if __vehicle_x (setq _vehicle_x __vehicle_x)) _vehicle_x)
  (:vehicle_y
   (&optional __vehicle_y)
   (if __vehicle_y (setq _vehicle_y __vehicle_y)) _vehicle_y)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:havewater
   (&optional __havewater)
   (if __havewater (setq _havewater __havewater)) _havewater)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _ogmheight
    2
    ;; int16 _ogmwidth
    2
    ;; int16 _vehicle_x
    2
    ;; int16 _vehicle_y
    2
    ;; float32 _resolution
    4
    ;; int16[] _data
    (* 2    (length _data)) 4
    ;; int8 _havewater
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _ogmheight
       (write-word _ogmheight s)
     ;; int16 _ogmwidth
       (write-word _ogmwidth s)
     ;; int16 _vehicle_x
       (write-word _vehicle_x s)
     ;; int16 _vehicle_y
       (write-word _vehicle_y s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-word (elt _data i) s)
       )
     ;; int8 _havewater
       (write-byte _havewater s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _ogmheight
     (setq _ogmheight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ogmwidth
     (setq _ogmwidth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vehicle_x
     (setq _vehicle_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vehicle_y
     (setq _vehicle_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int8 _havewater
     (setq _havewater (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _havewater 127) (setq _havewater (- _havewater 256)))
   ;;
   self)
  )

(setf (get stiff_msgs::stiffwater :md5sum-) "8db91fd478bd409ec683145f3925dce9")
(setf (get stiff_msgs::stiffwater :datatype-) "stiff_msgs/stiffwater")
(setf (get stiff_msgs::stiffwater :definition-)
      "std_msgs/Header header
int16 ogmheight
int16 ogmwidth
int16 vehicle_x
int16 vehicle_y
float32 resolution
int16[] data
int8 havewater

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



(provide :stiff_msgs/stiffwater "8db91fd478bd409ec683145f3925dce9")


