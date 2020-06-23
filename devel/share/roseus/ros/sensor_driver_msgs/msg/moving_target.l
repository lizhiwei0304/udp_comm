;; Auto-generated. Do not edit!


(when (boundp 'sensor_driver_msgs::moving_target)
  (if (not (find-package "SENSOR_DRIVER_MSGS"))
    (make-package "SENSOR_DRIVER_MSGS"))
  (shadow 'moving_target (find-package "SENSOR_DRIVER_MSGS")))
(unless (find-package "SENSOR_DRIVER_MSGS::MOVING_TARGET")
  (make-package "SENSOR_DRIVER_MSGS::MOVING_TARGET"))

(in-package "ROS")
;;//! \htmlinclude moving_target.msg.html


(defclass sensor_driver_msgs::moving_target
  :super ros::object
  :slots (_center_x _center_y _object_width _object_length _object_high _object_rect_x _object_rect_y _object_rect_width _object_rect_height _x_src _y_src _v_x _v_y _v _v_theta _pos_heading _v_w _trackpoint32_index _filter_method _is_updated _time_stamp _ID_number _confidence_level _tracked_times _miss_tracked_times _dis_veh_xy _position_orientation _occluded_state _object_type _dangerous_level _trackpoint_index ))

(defmethod sensor_driver_msgs::moving_target
  (:init
   (&key
    ((:center_x __center_x) 0.0)
    ((:center_y __center_y) 0.0)
    ((:object_width __object_width) 0.0)
    ((:object_length __object_length) 0.0)
    ((:object_high __object_high) 0.0)
    ((:object_rect_x __object_rect_x) 0.0)
    ((:object_rect_y __object_rect_y) 0.0)
    ((:object_rect_width __object_rect_width) 0.0)
    ((:object_rect_height __object_rect_height) 0.0)
    ((:x_src __x_src) 0.0)
    ((:y_src __y_src) 0.0)
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    ((:v __v) 0.0)
    ((:v_theta __v_theta) 0.0)
    ((:pos_heading __pos_heading) 0.0)
    ((:v_w __v_w) 0.0)
    ((:trackpoint32_index __trackpoint32_index) 0)
    ((:filter_method __filter_method) 0)
    ((:is_updated __is_updated) nil)
    ((:time_stamp __time_stamp) 0)
    ((:ID_number __ID_number) 0)
    ((:confidence_level __confidence_level) 0)
    ((:tracked_times __tracked_times) 0)
    ((:miss_tracked_times __miss_tracked_times) 0)
    ((:dis_veh_xy __dis_veh_xy) 0)
    ((:position_orientation __position_orientation) 0)
    ((:occluded_state __occluded_state) 0)
    ((:object_type __object_type) 0)
    ((:dangerous_level __dangerous_level) 0)
    ((:trackpoint_index __trackpoint_index) 0.0)
    )
   (send-super :init)
   (setq _center_x (float __center_x))
   (setq _center_y (float __center_y))
   (setq _object_width (float __object_width))
   (setq _object_length (float __object_length))
   (setq _object_high (float __object_high))
   (setq _object_rect_x (float __object_rect_x))
   (setq _object_rect_y (float __object_rect_y))
   (setq _object_rect_width (float __object_rect_width))
   (setq _object_rect_height (float __object_rect_height))
   (setq _x_src (float __x_src))
   (setq _y_src (float __y_src))
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   (setq _v (float __v))
   (setq _v_theta (float __v_theta))
   (setq _pos_heading (float __pos_heading))
   (setq _v_w (float __v_w))
   (setq _trackpoint32_index (round __trackpoint32_index))
   (setq _filter_method (round __filter_method))
   (setq _is_updated __is_updated)
   (setq _time_stamp (round __time_stamp))
   (setq _ID_number (round __ID_number))
   (setq _confidence_level (round __confidence_level))
   (setq _tracked_times (round __tracked_times))
   (setq _miss_tracked_times (round __miss_tracked_times))
   (setq _dis_veh_xy (round __dis_veh_xy))
   (setq _position_orientation (round __position_orientation))
   (setq _occluded_state (round __occluded_state))
   (setq _object_type (round __object_type))
   (setq _dangerous_level (round __dangerous_level))
   (setq _trackpoint_index (float __trackpoint_index))
   self)
  (:center_x
   (&optional __center_x)
   (if __center_x (setq _center_x __center_x)) _center_x)
  (:center_y
   (&optional __center_y)
   (if __center_y (setq _center_y __center_y)) _center_y)
  (:object_width
   (&optional __object_width)
   (if __object_width (setq _object_width __object_width)) _object_width)
  (:object_length
   (&optional __object_length)
   (if __object_length (setq _object_length __object_length)) _object_length)
  (:object_high
   (&optional __object_high)
   (if __object_high (setq _object_high __object_high)) _object_high)
  (:object_rect_x
   (&optional __object_rect_x)
   (if __object_rect_x (setq _object_rect_x __object_rect_x)) _object_rect_x)
  (:object_rect_y
   (&optional __object_rect_y)
   (if __object_rect_y (setq _object_rect_y __object_rect_y)) _object_rect_y)
  (:object_rect_width
   (&optional __object_rect_width)
   (if __object_rect_width (setq _object_rect_width __object_rect_width)) _object_rect_width)
  (:object_rect_height
   (&optional __object_rect_height)
   (if __object_rect_height (setq _object_rect_height __object_rect_height)) _object_rect_height)
  (:x_src
   (&optional __x_src)
   (if __x_src (setq _x_src __x_src)) _x_src)
  (:y_src
   (&optional __y_src)
   (if __y_src (setq _y_src __y_src)) _y_src)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:v_theta
   (&optional __v_theta)
   (if __v_theta (setq _v_theta __v_theta)) _v_theta)
  (:pos_heading
   (&optional __pos_heading)
   (if __pos_heading (setq _pos_heading __pos_heading)) _pos_heading)
  (:v_w
   (&optional __v_w)
   (if __v_w (setq _v_w __v_w)) _v_w)
  (:trackpoint32_index
   (&optional __trackpoint32_index)
   (if __trackpoint32_index (setq _trackpoint32_index __trackpoint32_index)) _trackpoint32_index)
  (:filter_method
   (&optional __filter_method)
   (if __filter_method (setq _filter_method __filter_method)) _filter_method)
  (:is_updated
   (&optional __is_updated)
   (if __is_updated (setq _is_updated __is_updated)) _is_updated)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:ID_number
   (&optional __ID_number)
   (if __ID_number (setq _ID_number __ID_number)) _ID_number)
  (:confidence_level
   (&optional __confidence_level)
   (if __confidence_level (setq _confidence_level __confidence_level)) _confidence_level)
  (:tracked_times
   (&optional __tracked_times)
   (if __tracked_times (setq _tracked_times __tracked_times)) _tracked_times)
  (:miss_tracked_times
   (&optional __miss_tracked_times)
   (if __miss_tracked_times (setq _miss_tracked_times __miss_tracked_times)) _miss_tracked_times)
  (:dis_veh_xy
   (&optional __dis_veh_xy)
   (if __dis_veh_xy (setq _dis_veh_xy __dis_veh_xy)) _dis_veh_xy)
  (:position_orientation
   (&optional __position_orientation)
   (if __position_orientation (setq _position_orientation __position_orientation)) _position_orientation)
  (:occluded_state
   (&optional __occluded_state)
   (if __occluded_state (setq _occluded_state __occluded_state)) _occluded_state)
  (:object_type
   (&optional __object_type)
   (if __object_type (setq _object_type __object_type)) _object_type)
  (:dangerous_level
   (&optional __dangerous_level)
   (if __dangerous_level (setq _dangerous_level __dangerous_level)) _dangerous_level)
  (:trackpoint_index
   (&optional __trackpoint_index)
   (if __trackpoint_index (setq _trackpoint_index __trackpoint_index)) _trackpoint_index)
  (:serialization-length
   ()
   (+
    ;; float64 _center_x
    8
    ;; float64 _center_y
    8
    ;; float64 _object_width
    8
    ;; float64 _object_length
    8
    ;; float64 _object_high
    8
    ;; float64 _object_rect_x
    8
    ;; float64 _object_rect_y
    8
    ;; float64 _object_rect_width
    8
    ;; float64 _object_rect_height
    8
    ;; float64 _x_src
    8
    ;; float64 _y_src
    8
    ;; float64 _v_x
    8
    ;; float64 _v_y
    8
    ;; float64 _v
    8
    ;; float64 _v_theta
    8
    ;; float64 _pos_heading
    8
    ;; float64 _v_w
    8
    ;; int32 _trackpoint32_index
    4
    ;; int32 _filter_method
    4
    ;; bool _is_updated
    1
    ;; int32 _time_stamp
    4
    ;; int32 _ID_number
    4
    ;; int32 _confidence_level
    4
    ;; int32 _tracked_times
    4
    ;; int32 _miss_tracked_times
    4
    ;; int32 _dis_veh_xy
    4
    ;; int32 _position_orientation
    4
    ;; int32 _occluded_state
    4
    ;; int32 _object_type
    4
    ;; int32 _dangerous_level
    4
    ;; float64 _trackpoint_index
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _center_x
       (sys::poke _center_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _center_y
       (sys::poke _center_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_width
       (sys::poke _object_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_length
       (sys::poke _object_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_high
       (sys::poke _object_high (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_rect_x
       (sys::poke _object_rect_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_rect_y
       (sys::poke _object_rect_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_rect_width
       (sys::poke _object_rect_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_rect_height
       (sys::poke _object_rect_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_src
       (sys::poke _x_src (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_src
       (sys::poke _y_src (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_theta
       (sys::poke _v_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_heading
       (sys::poke _pos_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_w
       (sys::poke _v_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _trackpoint32_index
       (write-long _trackpoint32_index s)
     ;; int32 _filter_method
       (write-long _filter_method s)
     ;; bool _is_updated
       (if _is_updated (write-byte -1 s) (write-byte 0 s))
     ;; int32 _time_stamp
       (write-long _time_stamp s)
     ;; int32 _ID_number
       (write-long _ID_number s)
     ;; int32 _confidence_level
       (write-long _confidence_level s)
     ;; int32 _tracked_times
       (write-long _tracked_times s)
     ;; int32 _miss_tracked_times
       (write-long _miss_tracked_times s)
     ;; int32 _dis_veh_xy
       (write-long _dis_veh_xy s)
     ;; int32 _position_orientation
       (write-long _position_orientation s)
     ;; int32 _occluded_state
       (write-long _occluded_state s)
     ;; int32 _object_type
       (write-long _object_type s)
     ;; int32 _dangerous_level
       (write-long _dangerous_level s)
     ;; float64 _trackpoint_index
       (sys::poke _trackpoint_index (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _center_x
     (setq _center_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _center_y
     (setq _center_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_width
     (setq _object_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_length
     (setq _object_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_high
     (setq _object_high (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_rect_x
     (setq _object_rect_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_rect_y
     (setq _object_rect_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_rect_width
     (setq _object_rect_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_rect_height
     (setq _object_rect_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_src
     (setq _x_src (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_src
     (setq _y_src (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_x
     (setq _v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_y
     (setq _v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_theta
     (setq _v_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_heading
     (setq _pos_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_w
     (setq _v_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _trackpoint32_index
     (setq _trackpoint32_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _filter_method
     (setq _filter_method (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_updated
     (setq _is_updated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ID_number
     (setq _ID_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _confidence_level
     (setq _confidence_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tracked_times
     (setq _tracked_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _miss_tracked_times
     (setq _miss_tracked_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dis_veh_xy
     (setq _dis_veh_xy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_orientation
     (setq _position_orientation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _occluded_state
     (setq _occluded_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _object_type
     (setq _object_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dangerous_level
     (setq _dangerous_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _trackpoint_index
     (setq _trackpoint_index (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_driver_msgs::moving_target :md5sum-) "ec7b54c149fe914e158d9dcc3b59e9f1")
(setf (get sensor_driver_msgs::moving_target :datatype-) "sensor_driver_msgs/moving_target")
(setf (get sensor_driver_msgs::moving_target :definition-)
      "float64        center_x             
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



(provide :sensor_driver_msgs/moving_target "ec7b54c149fe914e158d9dcc3b59e9f1")


