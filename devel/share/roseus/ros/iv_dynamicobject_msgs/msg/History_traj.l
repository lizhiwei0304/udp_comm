;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::History_traj)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'History_traj (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::HISTORY_TRAJ")
  (make-package "IV_DYNAMICOBJECT_MSGS::HISTORY_TRAJ"))

(in-package "ROS")
;;//! \htmlinclude History_traj.msg.html


(defclass iv_dynamicobject_msgs::History_traj
  :super ros::object
  :slots (_time_stamp _center_point _line_num _line_point ))

(defmethod iv_dynamicobject_msgs::History_traj
  (:init
   (&key
    ((:time_stamp __time_stamp) 0.0)
    ((:center_point __center_point) (instance iv_dynamicobject_msgs::Points :init))
    ((:line_num __line_num) 0)
    ((:line_point __line_point) (let (r) (dotimes (i 0) (push (instance iv_dynamicobject_msgs::Points :init) r)) r))
    )
   (send-super :init)
   (setq _time_stamp (float __time_stamp))
   (setq _center_point __center_point)
   (setq _line_num (round __line_num))
   (setq _line_point __line_point)
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:center_point
   (&rest __center_point)
   (if (keywordp (car __center_point))
       (send* _center_point __center_point)
     (progn
       (if __center_point (setq _center_point (car __center_point)))
       _center_point)))
  (:line_num
   (&optional __line_num)
   (if __line_num (setq _line_num __line_num)) _line_num)
  (:line_point
   (&rest __line_point)
   (if (keywordp (car __line_point))
       (send* _line_point __line_point)
     (progn
       (if __line_point (setq _line_point (car __line_point)))
       _line_point)))
  (:serialization-length
   ()
   (+
    ;; float64 _time_stamp
    8
    ;; iv_dynamicobject_msgs/Points _center_point
    (send _center_point :serialization-length)
    ;; int32 _line_num
    4
    ;; iv_dynamicobject_msgs/Points[] _line_point
    (apply #'+ (send-all _line_point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_stamp
       (sys::poke _time_stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; iv_dynamicobject_msgs/Points _center_point
       (send _center_point :serialize s)
     ;; int32 _line_num
       (write-long _line_num s)
     ;; iv_dynamicobject_msgs/Points[] _line_point
     (write-long (length _line_point) s)
     (dolist (elem _line_point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; iv_dynamicobject_msgs/Points _center_point
     (send _center_point :deserialize buf ptr-) (incf ptr- (send _center_point :serialization-length))
   ;; int32 _line_num
     (setq _line_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; iv_dynamicobject_msgs/Points[] _line_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_point (let (r) (dotimes (i n) (push (instance iv_dynamicobject_msgs::Points :init) r)) r))
     (dolist (elem- _line_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::History_traj :md5sum-) "306ab6d3bdb85c4207d78d719bd419dc")
(setf (get iv_dynamicobject_msgs::History_traj :datatype-) "iv_dynamicobject_msgs/History_traj")
(setf (get iv_dynamicobject_msgs::History_traj :definition-)
      "    float64 time_stamp
    Points center_point
    int32 line_num
    Points[] line_point
    

================================================================================
MSG: iv_dynamicobject_msgs/Points
float64 x
float64 y
float64 z

")



(provide :iv_dynamicobject_msgs/History_traj "306ab6d3bdb85c4207d78d719bd419dc")


