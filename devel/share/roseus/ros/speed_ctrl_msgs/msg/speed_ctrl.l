;; Auto-generated. Do not edit!


(when (boundp 'speed_ctrl_msgs::speed_ctrl)
  (if (not (find-package "SPEED_CTRL_MSGS"))
    (make-package "SPEED_CTRL_MSGS"))
  (shadow 'speed_ctrl (find-package "SPEED_CTRL_MSGS")))
(unless (find-package "SPEED_CTRL_MSGS::SPEED_CTRL")
  (make-package "SPEED_CTRL_MSGS::SPEED_CTRL"))

(in-package "ROS")
;;//! \htmlinclude speed_ctrl.msg.html


(defclass speed_ctrl_msgs::speed_ctrl
  :super ros::object
  :slots (_direction _count _issue_acc _issue_v _cur_acc _cur_speed _rc_path_time _pub_acc_time _rc_acc_time _pub_cmd_time _total_s _curv_max _v_max _running_mode ))

(defmethod speed_ctrl_msgs::speed_ctrl
  (:init
   (&key
    ((:direction __direction) 0)
    ((:count __count) 0)
    ((:issue_acc __issue_acc) 0.0)
    ((:issue_v __issue_v) 0.0)
    ((:cur_acc __cur_acc) 0.0)
    ((:cur_speed __cur_speed) 0.0)
    ((:rc_path_time __rc_path_time) 0.0)
    ((:pub_acc_time __pub_acc_time) 0.0)
    ((:rc_acc_time __rc_acc_time) 0.0)
    ((:pub_cmd_time __pub_cmd_time) 0.0)
    ((:total_s __total_s) 0.0)
    ((:curv_max __curv_max) 0.0)
    ((:v_max __v_max) 0.0)
    ((:running_mode __running_mode) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   (setq _count (round __count))
   (setq _issue_acc (float __issue_acc))
   (setq _issue_v (float __issue_v))
   (setq _cur_acc (float __cur_acc))
   (setq _cur_speed (float __cur_speed))
   (setq _rc_path_time (float __rc_path_time))
   (setq _pub_acc_time (float __pub_acc_time))
   (setq _rc_acc_time (float __rc_acc_time))
   (setq _pub_cmd_time (float __pub_cmd_time))
   (setq _total_s (float __total_s))
   (setq _curv_max (float __curv_max))
   (setq _v_max (float __v_max))
   (setq _running_mode (round __running_mode))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:issue_acc
   (&optional __issue_acc)
   (if __issue_acc (setq _issue_acc __issue_acc)) _issue_acc)
  (:issue_v
   (&optional __issue_v)
   (if __issue_v (setq _issue_v __issue_v)) _issue_v)
  (:cur_acc
   (&optional __cur_acc)
   (if __cur_acc (setq _cur_acc __cur_acc)) _cur_acc)
  (:cur_speed
   (&optional __cur_speed)
   (if __cur_speed (setq _cur_speed __cur_speed)) _cur_speed)
  (:rc_path_time
   (&optional __rc_path_time)
   (if __rc_path_time (setq _rc_path_time __rc_path_time)) _rc_path_time)
  (:pub_acc_time
   (&optional __pub_acc_time)
   (if __pub_acc_time (setq _pub_acc_time __pub_acc_time)) _pub_acc_time)
  (:rc_acc_time
   (&optional __rc_acc_time)
   (if __rc_acc_time (setq _rc_acc_time __rc_acc_time)) _rc_acc_time)
  (:pub_cmd_time
   (&optional __pub_cmd_time)
   (if __pub_cmd_time (setq _pub_cmd_time __pub_cmd_time)) _pub_cmd_time)
  (:total_s
   (&optional __total_s)
   (if __total_s (setq _total_s __total_s)) _total_s)
  (:curv_max
   (&optional __curv_max)
   (if __curv_max (setq _curv_max __curv_max)) _curv_max)
  (:v_max
   (&optional __v_max)
   (if __v_max (setq _v_max __v_max)) _v_max)
  (:running_mode
   (&optional __running_mode)
   (if __running_mode (setq _running_mode __running_mode)) _running_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _direction
    1
    ;; uint32 _count
    4
    ;; float64 _issue_acc
    8
    ;; float64 _issue_v
    8
    ;; float64 _cur_acc
    8
    ;; float64 _cur_speed
    8
    ;; float64 _rc_path_time
    8
    ;; float64 _pub_acc_time
    8
    ;; float64 _rc_acc_time
    8
    ;; float64 _pub_cmd_time
    8
    ;; float64 _total_s
    8
    ;; float64 _curv_max
    8
    ;; float64 _v_max
    8
    ;; uint8 _running_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint32 _count
       (write-long _count s)
     ;; float64 _issue_acc
       (sys::poke _issue_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _issue_v
       (sys::poke _issue_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_acc
       (sys::poke _cur_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_speed
       (sys::poke _cur_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rc_path_time
       (sys::poke _rc_path_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pub_acc_time
       (sys::poke _pub_acc_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rc_acc_time
       (sys::poke _rc_acc_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pub_cmd_time
       (sys::poke _pub_cmd_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_s
       (sys::poke _total_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curv_max
       (sys::poke _curv_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_max
       (sys::poke _v_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _running_mode
       (write-byte _running_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _issue_acc
     (setq _issue_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _issue_v
     (setq _issue_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_acc
     (setq _cur_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_speed
     (setq _cur_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rc_path_time
     (setq _rc_path_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pub_acc_time
     (setq _pub_acc_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rc_acc_time
     (setq _rc_acc_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pub_cmd_time
     (setq _pub_cmd_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_s
     (setq _total_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curv_max
     (setq _curv_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_max
     (setq _v_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _running_mode
     (setq _running_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get speed_ctrl_msgs::speed_ctrl :md5sum-) "eca0c122130abed6f501d6e0ed63b576")
(setf (get speed_ctrl_msgs::speed_ctrl :datatype-) "speed_ctrl_msgs/speed_ctrl")
(setf (get speed_ctrl_msgs::speed_ctrl :definition-)
      "uint8 direction
uint32 count
float64 issue_acc
float64 issue_v
float64 cur_acc
float64 cur_speed
float64 rc_path_time
float64 pub_acc_time
float64 rc_acc_time
float64 pub_cmd_time

## for debug
float64 total_s
float64 curv_max
float64 v_max
uint8 running_mode

")



(provide :speed_ctrl_msgs/speed_ctrl "eca0c122130abed6f501d6e0ed63b576")


