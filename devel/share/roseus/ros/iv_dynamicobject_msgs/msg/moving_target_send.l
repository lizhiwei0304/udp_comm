;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::moving_target_send)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'moving_target_send (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::MOVING_TARGET_SEND")
  (make-package "IV_DYNAMICOBJECT_MSGS::MOVING_TARGET_SEND"))

(in-package "ROS")
;;//! \htmlinclude moving_target_send.msg.html


(defclass iv_dynamicobject_msgs::moving_target_send
  :super ros::object
  :slots (_time_stamp _target_num _target ))

(defmethod iv_dynamicobject_msgs::moving_target_send
  (:init
   (&key
    ((:time_stamp __time_stamp) 0.0)
    ((:target_num __target_num) 0)
    ((:target __target) (let (r) (dotimes (i 0) (push (instance iv_dynamicobject_msgs::moving_target :init) r)) r))
    )
   (send-super :init)
   (setq _time_stamp (float __time_stamp))
   (setq _target_num (round __target_num))
   (setq _target __target)
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:target_num
   (&optional __target_num)
   (if __target_num (setq _target_num __target_num)) _target_num)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:serialization-length
   ()
   (+
    ;; float64 _time_stamp
    8
    ;; int32 _target_num
    4
    ;; iv_dynamicobject_msgs/moving_target[] _target
    (apply #'+ (send-all _target :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_stamp
       (sys::poke _time_stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _target_num
       (write-long _target_num s)
     ;; iv_dynamicobject_msgs/moving_target[] _target
     (write-long (length _target) s)
     (dolist (elem _target)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _target_num
     (setq _target_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; iv_dynamicobject_msgs/moving_target[] _target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target (let (r) (dotimes (i n) (push (instance iv_dynamicobject_msgs::moving_target :init) r)) r))
     (dolist (elem- _target)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::moving_target_send :md5sum-) "52c14969bef6f78128016409bcbd38ec")
(setf (get iv_dynamicobject_msgs::moving_target_send :datatype-) "iv_dynamicobject_msgs/moving_target_send")
(setf (get iv_dynamicobject_msgs::moving_target_send :definition-)
      "float64 time_stamp        
int32 target_num
moving_target[] target          

================================================================================
MSG: iv_dynamicobject_msgs/moving_target
    int32 ID_number
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



(provide :iv_dynamicobject_msgs/moving_target_send "52c14969bef6f78128016409bcbd38ec")


