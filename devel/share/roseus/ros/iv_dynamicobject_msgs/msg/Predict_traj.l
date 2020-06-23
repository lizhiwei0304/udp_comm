;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::Predict_traj)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'Predict_traj (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::PREDICT_TRAJ")
  (make-package "IV_DYNAMICOBJECT_MSGS::PREDICT_TRAJ"))

(in-package "ROS")
;;//! \htmlinclude Predict_traj.msg.html


(defclass iv_dynamicobject_msgs::Predict_traj
  :super ros::object
  :slots (_time_stamp _point _v_x _v_y _acc_x _acc_y _pos_head _v_w _confidence_level ))

(defmethod iv_dynamicobject_msgs::Predict_traj
  (:init
   (&key
    ((:time_stamp __time_stamp) 0.0)
    ((:point __point) (instance iv_dynamicobject_msgs::Points :init))
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:pos_head __pos_head) 0.0)
    ((:v_w __v_w) 0.0)
    ((:confidence_level __confidence_level) 0)
    )
   (send-super :init)
   (setq _time_stamp (float __time_stamp))
   (setq _point __point)
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _pos_head (float __pos_head))
   (setq _v_w (float __v_w))
   (setq _confidence_level (round __confidence_level))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:pos_head
   (&optional __pos_head)
   (if __pos_head (setq _pos_head __pos_head)) _pos_head)
  (:v_w
   (&optional __v_w)
   (if __v_w (setq _v_w __v_w)) _v_w)
  (:confidence_level
   (&optional __confidence_level)
   (if __confidence_level (setq _confidence_level __confidence_level)) _confidence_level)
  (:serialization-length
   ()
   (+
    ;; float64 _time_stamp
    8
    ;; iv_dynamicobject_msgs/Points _point
    (send _point :serialization-length)
    ;; float32 _v_x
    4
    ;; float32 _v_y
    4
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _pos_head
    4
    ;; float32 _v_w
    4
    ;; int16 _confidence_level
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_stamp
       (sys::poke _time_stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; iv_dynamicobject_msgs/Points _point
       (send _point :serialize s)
     ;; float32 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_head
       (sys::poke _pos_head (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_w
       (sys::poke _v_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _confidence_level
       (write-word _confidence_level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; iv_dynamicobject_msgs/Points _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float32 _v_x
     (setq _v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_y
     (setq _v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_head
     (setq _pos_head (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_w
     (setq _v_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _confidence_level
     (setq _confidence_level (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::Predict_traj :md5sum-) "e493c0baa9e7f0756323a00cb2bfc97a")
(setf (get iv_dynamicobject_msgs::Predict_traj :datatype-) "iv_dynamicobject_msgs/Predict_traj")
(setf (get iv_dynamicobject_msgs::Predict_traj :definition-)
      "    float64 time_stamp
    Points point
    float32 v_x
    float32 v_y
    float32 acc_x
    float32 acc_y
    float32 pos_head
    float32 v_w
    int16 confidence_level

================================================================================
MSG: iv_dynamicobject_msgs/Points
float64 x
float64 y
float64 z

")



(provide :iv_dynamicobject_msgs/Predict_traj "e493c0baa9e7f0756323a00cb2bfc97a")


