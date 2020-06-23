;; Auto-generated. Do not edit!


(when (boundp 'xsh_msgs::speed_plan)
  (if (not (find-package "XSH_MSGS"))
    (make-package "XSH_MSGS"))
  (shadow 'speed_plan (find-package "XSH_MSGS")))
(unless (find-package "XSH_MSGS::SPEED_PLAN")
  (make-package "XSH_MSGS::SPEED_PLAN"))

(in-package "ROS")
;;//! \htmlinclude speed_plan.msg.html


(defclass xsh_msgs::speed_plan
  :super ros::object
  :slots (_time _point_num _plan_time _plan_speed ))

(defmethod xsh_msgs::speed_plan
  (:init
   (&key
    ((:time __time) 0.0)
    ((:point_num __point_num) 0)
    ((:plan_time __plan_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan_speed __plan_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _point_num (round __point_num))
   (setq _plan_time __plan_time)
   (setq _plan_speed __plan_speed)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:point_num
   (&optional __point_num)
   (if __point_num (setq _point_num __point_num)) _point_num)
  (:plan_time
   (&optional __plan_time)
   (if __plan_time (setq _plan_time __plan_time)) _plan_time)
  (:plan_speed
   (&optional __plan_speed)
   (if __plan_speed (setq _plan_speed __plan_speed)) _plan_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; int16 _point_num
    2
    ;; float64[] _plan_time
    (* 8    (length _plan_time)) 4
    ;; float64[] _plan_speed
    (* 8    (length _plan_speed)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _point_num
       (write-word _point_num s)
     ;; float64[] _plan_time
     (write-long (length _plan_time) s)
     (dotimes (i (length _plan_time))
       (sys::poke (elt _plan_time i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _plan_speed
     (write-long (length _plan_speed) s)
     (dotimes (i (length _plan_speed))
       (sys::poke (elt _plan_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _point_num
     (setq _point_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[] _plan_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_time i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _plan_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get xsh_msgs::speed_plan :md5sum-) "e3e98dffdc5b35d04daac2e24f81e4f6")
(setf (get xsh_msgs::speed_plan :datatype-) "xsh_msgs/speed_plan")
(setf (get xsh_msgs::speed_plan :definition-)
      "float64 time
int16 point_num
float64[] plan_time
float64[] plan_speed



")



(provide :xsh_msgs/speed_plan "e3e98dffdc5b35d04daac2e24f81e4f6")


