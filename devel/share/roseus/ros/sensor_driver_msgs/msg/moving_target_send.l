;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::moving_target_send)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'moving_target_send (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::MOVING_TARGET_SEND")
  (make-package "SENSOR_DRIVER_MSGS::MOVING_TARGET_SEND"))

(in-package "ROS")
;;//! \htmlinclude moving_target_send.msg.html


(defclass sensor_driver_msgs::moving_target_send
  :super ros::object
  :slots (_time_stamp _movingtarget_num _resolution_send _target ))

(defmethod sensor_driver_msgs::moving_target_send
  (:init
   (&key
    ((:time_stamp __time_stamp) 0)
    ((:movingtarget_num __movingtarget_num) 0)
    ((:resolution_send __resolution_send) 0.0)
    ((:target __target) (let (r) (dotimes (i 0) (push (instance sensor_driver_msgs::moving_target :init) r)) r))
    )
   (send-super :init)
   (setq _time_stamp (round __time_stamp))
   (setq _movingtarget_num (round __movingtarget_num))
   (setq _resolution_send (float __resolution_send))
   (setq _target __target)
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:movingtarget_num
   (&optional __movingtarget_num)
   (if __movingtarget_num (setq _movingtarget_num __movingtarget_num)) _movingtarget_num)
  (:resolution_send
   (&optional __resolution_send)
   (if __resolution_send (setq _resolution_send __resolution_send)) _resolution_send)
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
    ;; int32 _time_stamp
    4
    ;; int32 _movingtarget_num
    4
    ;; float64 _resolution_send
    8
    ;; sensor_driver_msgs/moving_target[] _target
    (apply #'+ (send-all _target :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _time_stamp
       (write-long _time_stamp s)
     ;; int32 _movingtarget_num
       (write-long _movingtarget_num s)
     ;; float64 _resolution_send
       (sys::poke _resolution_send (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; sensor_driver_msgs/moving_target[] _target
     (write-long (length _target) s)
     (dolist (elem _target)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _movingtarget_num
     (setq _movingtarget_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _resolution_send
     (setq _resolution_send (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; sensor_driver_msgs/moving_target[] _target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target (let (r) (dotimes (i n) (push (instance sensor_driver_msgs::moving_target :init) r)) r))
     (dolist (elem- _target)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_driver_msgs::moving_target_send :md5sum-) "ee6df54151d8798d270a6abbbe741402")
(setf (get sensor_driver_msgs::moving_target_send :datatype-) "sensor_driver_msgs/moving_target_send")
(setf (get sensor_driver_msgs::moving_target_send :definition-)
      "int32 time_stamp        
int32 movingtarget_num   
float64 resolution_send
moving_target[] target          

================================================================================
MSG: sensor_driver_msgs/moving_target
float64        center_x             
float64        center_y             
float64        object_width         
float64        object_length        
float64        object_high          

float64          object_rect_x
float64          object_rect_y
float64          object_rect_width
float64          object_rect_height 

float64        x_src                
float64        y_src                
float64        v_x                  
float64        v_y               
float64        v                   
float64        v_theta
float64        pos_heading         
float64        v_w                  

int32          trackpoint32_index
int32          filter_method

bool         is_updated           
int32          time_stamp           
int32          ID_number                   
int32          confidence_level    
int32          tracked_times        
int32          miss_tracked_times   

int32          dis_veh_xy
int32          position_orientation 
int32          occluded_state       
int32          object_type        
int32          dangerous_level  
float64        trackpoint_index    

")



(provide :sensor_driver_msgs/moving_target_send "ee6df54151d8798d270a6abbbe741402")


