; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-msg)


;//! \htmlinclude moving_target_send.msg.html

(cl:defclass <moving_target_send> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:integer
    :initform 0)
   (movingtarget_num
    :reader movingtarget_num
    :initarg :movingtarget_num
    :type cl:integer
    :initform 0)
   (resolution_send
    :reader resolution_send
    :initarg :resolution_send
    :type cl:float
    :initform 0.0)
   (target
    :reader target
    :initarg :target
    :type (cl:vector sensor_driver_msgs-msg:moving_target)
   :initform (cl:make-array 0 :element-type 'sensor_driver_msgs-msg:moving_target :initial-element (cl:make-instance 'sensor_driver_msgs-msg:moving_target))))
)

(cl:defclass moving_target_send (<moving_target_send>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moving_target_send>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moving_target_send)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-msg:<moving_target_send> is deprecated: use sensor_driver_msgs-msg:moving_target_send instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:time_stamp-val is deprecated.  Use sensor_driver_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'movingtarget_num-val :lambda-list '(m))
(cl:defmethod movingtarget_num-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:movingtarget_num-val is deprecated.  Use sensor_driver_msgs-msg:movingtarget_num instead.")
  (movingtarget_num m))

(cl:ensure-generic-function 'resolution_send-val :lambda-list '(m))
(cl:defmethod resolution_send-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:resolution_send-val is deprecated.  Use sensor_driver_msgs-msg:resolution_send instead.")
  (resolution_send m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:target-val is deprecated.  Use sensor_driver_msgs-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moving_target_send>) ostream)
  "Serializes a message object of type '<moving_target_send>"
  (cl:let* ((signed (cl:slot-value msg 'time_stamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'movingtarget_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resolution_send))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moving_target_send>) istream)
  "Deserializes a message object of type '<moving_target_send>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'movingtarget_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution_send) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_driver_msgs-msg:moving_target))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moving_target_send>)))
  "Returns string type for a message object of type '<moving_target_send>"
  "sensor_driver_msgs/moving_target_send")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_target_send)))
  "Returns string type for a message object of type 'moving_target_send"
  "sensor_driver_msgs/moving_target_send")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moving_target_send>)))
  "Returns md5sum for a message object of type '<moving_target_send>"
  "ee6df54151d8798d270a6abbbe741402")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moving_target_send)))
  "Returns md5sum for a message object of type 'moving_target_send"
  "ee6df54151d8798d270a6abbbe741402")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moving_target_send>)))
  "Returns full string definition for message of type '<moving_target_send>"
  (cl:format cl:nil "int32 time_stamp        ~%int32 movingtarget_num   ~%float64 resolution_send~%moving_target[] target          ~%~%================================================================================~%MSG: sensor_driver_msgs/moving_target~%float64        center_x             ~%float64        center_y             ~%float64        object_width         ~%float64        object_length        ~%float64        object_high          ~%~%float64          object_rect_x~%float64          object_rect_y~%float64          object_rect_width~%float64          object_rect_height ~%~%float64        x_src                ~%float64        y_src                ~%float64        v_x                  ~%float64        v_y               ~%float64        v                   ~%float64        v_theta~%float64        pos_heading         ~%float64        v_w                  ~%~%int32          trackpoint32_index~%int32          filter_method~%~%bool         is_updated           ~%int32          time_stamp           ~%int32          ID_number                   ~%int32          confidence_level    ~%int32          tracked_times        ~%int32          miss_tracked_times   ~%~%int32          dis_veh_xy~%int32          position_orientation ~%int32          occluded_state       ~%int32          object_type        ~%int32          dangerous_level  ~%float64        trackpoint_index    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moving_target_send)))
  "Returns full string definition for message of type 'moving_target_send"
  (cl:format cl:nil "int32 time_stamp        ~%int32 movingtarget_num   ~%float64 resolution_send~%moving_target[] target          ~%~%================================================================================~%MSG: sensor_driver_msgs/moving_target~%float64        center_x             ~%float64        center_y             ~%float64        object_width         ~%float64        object_length        ~%float64        object_high          ~%~%float64          object_rect_x~%float64          object_rect_y~%float64          object_rect_width~%float64          object_rect_height ~%~%float64        x_src                ~%float64        y_src                ~%float64        v_x                  ~%float64        v_y               ~%float64        v                   ~%float64        v_theta~%float64        pos_heading         ~%float64        v_w                  ~%~%int32          trackpoint32_index~%int32          filter_method~%~%bool         is_updated           ~%int32          time_stamp           ~%int32          ID_number                   ~%int32          confidence_level    ~%int32          tracked_times        ~%int32          miss_tracked_times   ~%~%int32          dis_veh_xy~%int32          position_orientation ~%int32          occluded_state       ~%int32          object_type        ~%int32          dangerous_level  ~%float64        trackpoint_index    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moving_target_send>))
  (cl:+ 0
     4
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moving_target_send>))
  "Converts a ROS message object to a list"
  (cl:list 'moving_target_send
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':movingtarget_num (movingtarget_num msg))
    (cl:cons ':resolution_send (resolution_send msg))
    (cl:cons ':target (target msg))
))
