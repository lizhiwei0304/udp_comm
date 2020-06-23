;; Auto-generated. Do not edit!


(when (boundp 'iv_dynamicobject_msgs::RadarPoint)
  (if (not (find-package "IV_DYNAMICOBJECT_MSGS"))
    (make-package "IV_DYNAMICOBJECT_MSGS"))
  (shadow 'RadarPoint (find-package "IV_DYNAMICOBJECT_MSGS")))
(unless (find-package "IV_DYNAMICOBJECT_MSGS::RADARPOINT")
  (make-package "IV_DYNAMICOBJECT_MSGS::RADARPOINT"))

(in-package "ROS")
;;//! \htmlinclude RadarPoint.msg.html


(defclass iv_dynamicobject_msgs::RadarPoint
  :super ros::object
  :slots (_target_ID _range _v _angle _x _y _valid _status _moving _moving_fast _moving_slow ))

(defmethod iv_dynamicobject_msgs::RadarPoint
  (:init
   (&key
    ((:target_ID __target_ID) 0)
    ((:range __range) 0.0)
    ((:v __v) 0.0)
    ((:angle __angle) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:valid __valid) nil)
    ((:status __status) 0)
    ((:moving __moving) 0)
    ((:moving_fast __moving_fast) nil)
    ((:moving_slow __moving_slow) nil)
    )
   (send-super :init)
   (setq _target_ID (round __target_ID))
   (setq _range (float __range))
   (setq _v (float __v))
   (setq _angle (float __angle))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _valid __valid)
   (setq _status (round __status))
   (setq _moving (round __moving))
   (setq _moving_fast __moving_fast)
   (setq _moving_slow __moving_slow)
   self)
  (:target_ID
   (&optional __target_ID)
   (if __target_ID (setq _target_ID __target_ID)) _target_ID)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:moving_fast
   (&optional __moving_fast)
   (if __moving_fast (setq _moving_fast __moving_fast)) _moving_fast)
  (:moving_slow
   (&optional __moving_slow)
   (if __moving_slow (setq _moving_slow __moving_slow)) _moving_slow)
  (:serialization-length
   ()
   (+
    ;; uint8 _target_ID
    1
    ;; float32 _range
    4
    ;; float32 _v
    4
    ;; float32 _angle
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; bool _valid
    1
    ;; uint8 _status
    1
    ;; uint8 _moving
    1
    ;; bool _moving_fast
    1
    ;; bool _moving_slow
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _target_ID
       (write-byte _target_ID s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _moving
       (write-byte _moving s)
     ;; bool _moving_fast
       (if _moving_fast (write-byte -1 s) (write-byte 0 s))
     ;; bool _moving_slow
       (if _moving_slow (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _target_ID
     (setq _target_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _moving
     (setq _moving (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _moving_fast
     (setq _moving_fast (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _moving_slow
     (setq _moving_slow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iv_dynamicobject_msgs::RadarPoint :md5sum-) "cba5c3ffed2f8ad0288b366e555ab33f")
(setf (get iv_dynamicobject_msgs::RadarPoint :datatype-) "iv_dynamicobject_msgs/RadarPoint")
(setf (get iv_dynamicobject_msgs::RadarPoint :definition-)
      "uint8 target_ID
float32 range
float32 v
float32 angle
float32 x
float32 y
bool valid
uint8 status
uint8 moving
bool moving_fast
bool moving_slow

")



(provide :iv_dynamicobject_msgs/RadarPoint "cba5c3ffed2f8ad0288b366e555ab33f")


