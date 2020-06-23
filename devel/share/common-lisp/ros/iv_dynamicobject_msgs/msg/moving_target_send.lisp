; Auto-generated. Do not edit!


(cl:in-package iv_dynamicobject_msgs-msg)


;//! \htmlinclude moving_target_send.msg.html

(cl:defclass <moving_target_send> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:float
    :initform 0.0)
   (target_num
    :reader target_num
    :initarg :target_num
    :type cl:integer
    :initform 0)
   (target
    :reader target
    :initarg :target
    :type (cl:vector iv_dynamicobject_msgs-msg:moving_target)
   :initform (cl:make-array 0 :element-type 'iv_dynamicobject_msgs-msg:moving_target :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:moving_target))))
)

(cl:defclass moving_target_send (<moving_target_send>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moving_target_send>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moving_target_send)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_dynamicobject_msgs-msg:<moving_target_send> is deprecated: use iv_dynamicobject_msgs-msg:moving_target_send instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:time_stamp-val is deprecated.  Use iv_dynamicobject_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'target_num-val :lambda-list '(m))
(cl:defmethod target_num-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:target_num-val is deprecated.  Use iv_dynamicobject_msgs-msg:target_num instead.")
  (target_num m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <moving_target_send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:target-val is deprecated.  Use iv_dynamicobject_msgs-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moving_target_send>) ostream)
  "Serializes a message object of type '<moving_target_send>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'target_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_stamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_dynamicobject_msgs-msg:moving_target))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moving_target_send>)))
  "Returns string type for a message object of type '<moving_target_send>"
  "iv_dynamicobject_msgs/moving_target_send")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_target_send)))
  "Returns string type for a message object of type 'moving_target_send"
  "iv_dynamicobject_msgs/moving_target_send")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moving_target_send>)))
  "Returns md5sum for a message object of type '<moving_target_send>"
  "52c14969bef6f78128016409bcbd38ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moving_target_send)))
  "Returns md5sum for a message object of type 'moving_target_send"
  "52c14969bef6f78128016409bcbd38ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moving_target_send>)))
  "Returns full string definition for message of type '<moving_target_send>"
  (cl:format cl:nil "float64 time_stamp        ~%int32 target_num~%moving_target[] target          ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/moving_target~%    int32 ID_number~%    Points center_point~%    int32 line_num~%    Points[] line_point   ~%    float32 object_high~%    int32 object_type    ~%    bool is_updated~%    int32  tracked_times~%    int32  dangerous_level~%    int32  history_num~%    History_traj[] history_traj~%    int32  predict_num~%    Predict_traj[] predict_traj       ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: iv_dynamicobject_msgs/History_traj~%    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Predict_traj~%    float64 time_stamp~%    Points point~%    float32 v_x~%    float32 v_y~%    float32 acc_x~%    float32 acc_y~%    float32 pos_head~%    float32 v_w~%    int16 confidence_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moving_target_send)))
  "Returns full string definition for message of type 'moving_target_send"
  (cl:format cl:nil "float64 time_stamp        ~%int32 target_num~%moving_target[] target          ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/moving_target~%    int32 ID_number~%    Points center_point~%    int32 line_num~%    Points[] line_point   ~%    float32 object_high~%    int32 object_type    ~%    bool is_updated~%    int32  tracked_times~%    int32  dangerous_level~%    int32  history_num~%    History_traj[] history_traj~%    int32  predict_num~%    Predict_traj[] predict_traj       ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: iv_dynamicobject_msgs/History_traj~%    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Predict_traj~%    float64 time_stamp~%    Points point~%    float32 v_x~%    float32 v_y~%    float32 acc_x~%    float32 acc_y~%    float32 pos_head~%    float32 v_w~%    int16 confidence_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moving_target_send>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moving_target_send>))
  "Converts a ROS message object to a list"
  (cl:list 'moving_target_send
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':target_num (target_num msg))
    (cl:cons ':target (target msg))
))
