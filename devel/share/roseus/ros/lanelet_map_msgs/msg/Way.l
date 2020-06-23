;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::Way)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'Way (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::WAY")
  (make-package "LANELET_MAP_MSGS::WAY"))

(in-package "ROS")
;;//! \htmlinclude Way.msg.html


(defclass lanelet_map_msgs::Way
  :super ros::object
  :slots (_task_area _is_forward _open_concave_obs_det _open_dynamic_obs_det _open_foggy_det _open_water_det _foggy_area _lawn_area _water_area _vel_limit _points ))

(defmethod lanelet_map_msgs::Way
  (:init
   (&key
    ((:task_area __task_area) "")
    ((:is_forward __is_forward) 0)
    ((:open_concave_obs_det __open_concave_obs_det) 0)
    ((:open_dynamic_obs_det __open_dynamic_obs_det) 0)
    ((:open_foggy_det __open_foggy_det) 0)
    ((:open_water_det __open_water_det) 0)
    ((:foggy_area __foggy_area) 0)
    ((:lawn_area __lawn_area) 0)
    ((:water_area __water_area) 0)
    ((:vel_limit __vel_limit) 0.0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Node :init) r)) r))
    )
   (send-super :init)
   (setq _task_area (string __task_area))
   (setq _is_forward (round __is_forward))
   (setq _open_concave_obs_det (round __open_concave_obs_det))
   (setq _open_dynamic_obs_det (round __open_dynamic_obs_det))
   (setq _open_foggy_det (round __open_foggy_det))
   (setq _open_water_det (round __open_water_det))
   (setq _foggy_area (round __foggy_area))
   (setq _lawn_area (round __lawn_area))
   (setq _water_area (round __water_area))
   (setq _vel_limit (float __vel_limit))
   (setq _points __points)
   self)
  (:task_area
   (&optional __task_area)
   (if __task_area (setq _task_area __task_area)) _task_area)
  (:is_forward
   (&optional __is_forward)
   (if __is_forward (setq _is_forward __is_forward)) _is_forward)
  (:open_concave_obs_det
   (&optional __open_concave_obs_det)
   (if __open_concave_obs_det (setq _open_concave_obs_det __open_concave_obs_det)) _open_concave_obs_det)
  (:open_dynamic_obs_det
   (&optional __open_dynamic_obs_det)
   (if __open_dynamic_obs_det (setq _open_dynamic_obs_det __open_dynamic_obs_det)) _open_dynamic_obs_det)
  (:open_foggy_det
   (&optional __open_foggy_det)
   (if __open_foggy_det (setq _open_foggy_det __open_foggy_det)) _open_foggy_det)
  (:open_water_det
   (&optional __open_water_det)
   (if __open_water_det (setq _open_water_det __open_water_det)) _open_water_det)
  (:foggy_area
   (&optional __foggy_area)
   (if __foggy_area (setq _foggy_area __foggy_area)) _foggy_area)
  (:lawn_area
   (&optional __lawn_area)
   (if __lawn_area (setq _lawn_area __lawn_area)) _lawn_area)
  (:water_area
   (&optional __water_area)
   (if __water_area (setq _water_area __water_area)) _water_area)
  (:vel_limit
   (&optional __vel_limit)
   (if __vel_limit (setq _vel_limit __vel_limit)) _vel_limit)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; string _task_area
    4 (length _task_area)
    ;; int8 _is_forward
    1
    ;; int8 _open_concave_obs_det
    1
    ;; int8 _open_dynamic_obs_det
    1
    ;; int8 _open_foggy_det
    1
    ;; int8 _open_water_det
    1
    ;; int8 _foggy_area
    1
    ;; int8 _lawn_area
    1
    ;; int8 _water_area
    1
    ;; float64 _vel_limit
    8
    ;; lanelet_map_msgs/Node[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_area
       (write-long (length _task_area) s) (princ _task_area s)
     ;; int8 _is_forward
       (write-byte _is_forward s)
     ;; int8 _open_concave_obs_det
       (write-byte _open_concave_obs_det s)
     ;; int8 _open_dynamic_obs_det
       (write-byte _open_dynamic_obs_det s)
     ;; int8 _open_foggy_det
       (write-byte _open_foggy_det s)
     ;; int8 _open_water_det
       (write-byte _open_water_det s)
     ;; int8 _foggy_area
       (write-byte _foggy_area s)
     ;; int8 _lawn_area
       (write-byte _lawn_area s)
     ;; int8 _water_area
       (write-byte _water_area s)
     ;; float64 _vel_limit
       (sys::poke _vel_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; lanelet_map_msgs/Node[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_area
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_area (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _is_forward
     (setq _is_forward (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _is_forward 127) (setq _is_forward (- _is_forward 256)))
   ;; int8 _open_concave_obs_det
     (setq _open_concave_obs_det (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _open_concave_obs_det 127) (setq _open_concave_obs_det (- _open_concave_obs_det 256)))
   ;; int8 _open_dynamic_obs_det
     (setq _open_dynamic_obs_det (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _open_dynamic_obs_det 127) (setq _open_dynamic_obs_det (- _open_dynamic_obs_det 256)))
   ;; int8 _open_foggy_det
     (setq _open_foggy_det (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _open_foggy_det 127) (setq _open_foggy_det (- _open_foggy_det 256)))
   ;; int8 _open_water_det
     (setq _open_water_det (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _open_water_det 127) (setq _open_water_det (- _open_water_det 256)))
   ;; int8 _foggy_area
     (setq _foggy_area (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _foggy_area 127) (setq _foggy_area (- _foggy_area 256)))
   ;; int8 _lawn_area
     (setq _lawn_area (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lawn_area 127) (setq _lawn_area (- _lawn_area 256)))
   ;; int8 _water_area
     (setq _water_area (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _water_area 127) (setq _water_area (- _water_area 256)))
   ;; float64 _vel_limit
     (setq _vel_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; lanelet_map_msgs/Node[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Node :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::Way :md5sum-) "3097cc04a1c9c7fa806bc8a9fb7f37c1")
(setf (get lanelet_map_msgs::Way :datatype-) "lanelet_map_msgs/Way")
(setf (get lanelet_map_msgs::Way :definition-)
      "string task_area
int8 is_forward
int8 open_concave_obs_det
int8 open_dynamic_obs_det
int8 open_foggy_det
int8 open_water_det
int8 foggy_area
int8 lawn_area
int8 water_area
float64 vel_limit
Node[] points

================================================================================
MSG: lanelet_map_msgs/Node
int32 id
string type
float64 vlimit
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lanelet_map_msgs/Way "3097cc04a1c9c7fa806bc8a9fb7f37c1")


