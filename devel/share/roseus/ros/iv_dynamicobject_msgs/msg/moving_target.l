;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::moving_target)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'moving_target (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::MOVING_TARGET")
  (make-package "IV_DYNAMICOBJECT_MSGS::MOVING_TARGET"))

(in-package "ROS")
;;//! \htmlinclude moving_target.msg.html


(defclass iv_dynamicobject_msgs::moving_target
  :super ros::object
  :slots (_ID_number _center_point _line_num _line_point _object_high _object_type _is_updated _tracked_times _dangerous_level _history_num _history_traj _predict_num _predict_traj ))

(defmethod iv_dynamicobject_msgs::moving_target
  (:init
   (&key
    ((:ID_number __ID_number) 0)
    ((:center_point __center_point) (instance iv_dynamicobject_msgs::Points :init))
    ((:line_num __line_num) 0)
    ((:line_point __line_point) (let (r) (dotimes (i 0) (push (instance iv_dynamicobject_msgs::Points :init) r)) r))
    ((:object_high __object_high) 0.0)
    ((:object_type __object_type) 0)
    ((:is_updated __is_updated) nil)
    ((:tracked_times __tracked_times) 0)
    ((:dangerous_level __dangerous_level) 0)
    ((:history_num __history_num) 0)
    ((:history_traj __history_traj) (let (r) (dotimes (i 0) (push (instance iv_dynamicobject_msgs::History_traj :init) r)) r))
    ((:predict_num __predict_num) 0)
    ((:predict_traj __predict_traj) (let (r) (dotimes (i 0) (push (instance iv_dynamicobject_msgs::Predict_traj :init) r)) r))
    )
   (send-super :init)
   (setq _ID_number (round __ID_number))
   (setq _center_point __center_point)
   (setq _line_num (round __line_num))
   (setq _line_point __line_point)
   (setq _object_high (float __object_high))
   (setq _object_type (round __object_type))
   (setq _is_updated __is_updated)
   (setq _tracked_times (round __tracked_times))
   (setq _dangerous_level (round __dangerous_level))
   (setq _history_num (round __history_num))
   (setq _history_traj __history_traj)
   (setq _predict_num (round __predict_num))
   (setq _predict_traj __predict_traj)
   self)
  (:ID_number
   (&optional __ID_number)
   (if __ID_number (setq _ID_number __ID_number)) _ID_number)
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
  (:object_high
   (&optional __object_high)
   (if __object_high (setq _object_high __object_high)) _object_high)
  (:object_type
   (&optional __object_type)
   (if __object_type (setq _object_type __object_type)) _object_type)
  (:is_updated
   (&optional __is_updated)
   (if __is_updated (setq _is_updated __is_updated)) _is_updated)
  (:tracked_times
   (&optional __tracked_times)
   (if __tracked_times (setq _tracked_times __tracked_times)) _tracked_times)
  (:dangerous_level
   (&optional __dangerous_level)
   (if __dangerous_level (setq _dangerous_level __dangerous_level)) _dangerous_level)
  (:history_num
   (&optional __history_num)
   (if __history_num (setq _history_num __history_num)) _history_num)
  (:history_traj
   (&rest __history_traj)
   (if (keywordp (car __history_traj))
       (send* _history_traj __history_traj)
     (progn
       (if __history_traj (setq _history_traj (car __history_traj)))
       _history_traj)))
  (:predict_num
   (&optional __predict_num)
   (if __predict_num (setq _predict_num __predict_num)) _predict_num)
  (:predict_traj
   (&rest __predict_traj)
   (if (keywordp (car __predict_traj))
       (send* _predict_traj __predict_traj)
     (progn
       (if __predict_traj (setq _predict_traj (car __predict_traj)))
       _predict_traj)))
  (:serialization-length
   ()
   (+
    ;; int32 _ID_number
    4
    ;; iv_dynamicobject_msgs/Points _center_point
    (send _center_point :serialization-length)
    ;; int32 _line_num
    4
    ;; iv_dynamicobject_msgs/Points[] _line_point
    (apply #'+ (send-all _line_point :serialization-length)) 4
    ;; float32 _object_high
    4
    ;; int32 _object_type
    4
    ;; bool _is_updated
    1
    ;; int32 _tracked_times
    4
    ;; int32 _dangerous_level
    4
    ;; int32 _history_num
    4
    ;; iv_dynamicobject_msgs/History_traj[] _history_traj
    (apply #'+ (send-all _history_traj :serialization-length)) 4
    ;; int32 _predict_num
    4
    ;; iv_dynamicobject_msgs/Predict_traj[] _predict_traj
    (apply #'+ (send-all _predict_traj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ID_number
       (write-long _ID_number s)
     ;; iv_dynamicobject_msgs/Points _center_point
       (send _center_point :serialize s)
     ;; int32 _line_num
       (write-long _line_num s)
     ;; iv_dynamicobject_msgs/Points[] _line_point
     (write-long (length _line_point) s)
     (dolist (elem _line_point)
       (send elem :serialize s)
       )
     ;; float32 _object_high
       (sys::poke _object_high (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _object_type
       (write-long _object_type s)
     ;; bool _is_updated
       (if _is_updated (write-byte -1 s) (write-byte 0 s))
     ;; int32 _tracked_times
       (write-long _tracked_times s)
     ;; int32 _dangerous_level
       (write-long _dangerous_level s)
     ;; int32 _history_num
       (write-long _history_num s)
     ;; iv_dynamicobject_msgs/History_traj[] _history_traj
     (write-long (length _history_traj) s)
     (dolist (elem _history_traj)
       (send elem :serialize s)
       )
     ;; int32 _predict_num
       (write-long _predict_num s)
     ;; iv_dynamicobject_msgs/Predict_traj[] _predict_traj
     (write-long (length _predict_traj) s)
     (dolist (elem _predict_traj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ID_number
     (setq _ID_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float32 _object_high
     (setq _object_high (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _object_type
     (setq _object_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_updated
     (setq _is_updated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _tracked_times
     (setq _tracked_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dangerous_level
     (setq _dangerous_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _history_num
     (setq _history_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; iv_dynamicobject_msgs/History_traj[] _history_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _history_traj (let (r) (dotimes (i n) (push (instance iv_dynamicobject_msgs::History_traj :init) r)) r))
     (dolist (elem- _history_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _predict_num
     (setq _predict_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; iv_dynamicobject_msgs/Predict_traj[] _predict_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predict_traj (let (r) (dotimes (i n) (push (instance iv_dynamicobject_msgs::Predict_traj :init) r)) r))
     (dolist (elem- _predict_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::moving_target :md5sum-) "54e1380b44fd25ff42cfc852f7e95898")
(setf (get iv_dynamicobject_msgs::moving_target :datatype-) "iv_dynamicobject_msgs/moving_target")
(setf (get iv_dynamicobject_msgs::moving_target :definition-)
      "    int32 ID_number
    Points center_point
    int32 line_num
    Points[] line_point   
    float32 object_high
    int32 object_type    
    bool is_updated
    int32  tracked_times
    int32  dangerous_level
    int32  history_num
    History_traj[] history_traj
    int32  predict_num
    Predict_traj[] predict_traj       

================================================================================
MSG: iv_dynamicobject_msgs/Points
float64 x
float64 y
float64 z

================================================================================
MSG: iv_dynamicobject_msgs/History_traj
    float64 time_stamp
    Points center_point
    int32 line_num
    Points[] line_point
    

================================================================================
MSG: iv_dynamicobject_msgs/Predict_traj
    float64 time_stamp
    Points point
    float32 v_x
    float32 v_y
    float32 acc_x
    float32 acc_y
    float32 pos_head
    float32 v_w
    int16 confidence_level

")



(provide :iv_dynamicobject_msgs/moving_target "54e1380b44fd25ff42cfc852f7e95898")


