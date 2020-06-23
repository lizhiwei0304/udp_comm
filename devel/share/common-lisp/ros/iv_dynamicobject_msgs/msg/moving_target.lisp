; Auto-generated. Do not edit!


(cl:in-package iv_dynamicobject_msgs-msg)


;//! \htmlinclude moving_target.msg.html

(cl:defclass <moving_target> (roslisp-msg-protocol:ros-message)
  ((ID_number
    :reader ID_number
    :initarg :ID_number
    :type cl:integer
    :initform 0)
   (center_point
    :reader center_point
    :initarg :center_point
    :type iv_dynamicobject_msgs-msg:Points
    :initform (cl:make-instance 'iv_dynamicobject_msgs-msg:Points))
   (line_num
    :reader line_num
    :initarg :line_num
    :type cl:integer
    :initform 0)
   (line_point
    :reader line_point
    :initarg :line_point
    :type (cl:vector iv_dynamicobject_msgs-msg:Points)
   :initform (cl:make-array 0 :element-type 'iv_dynamicobject_msgs-msg:Points :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:Points)))
   (object_high
    :reader object_high
    :initarg :object_high
    :type cl:float
    :initform 0.0)
   (object_type
    :reader object_type
    :initarg :object_type
    :type cl:integer
    :initform 0)
   (is_updated
    :reader is_updated
    :initarg :is_updated
    :type cl:boolean
    :initform cl:nil)
   (tracked_times
    :reader tracked_times
    :initarg :tracked_times
    :type cl:integer
    :initform 0)
   (dangerous_level
    :reader dangerous_level
    :initarg :dangerous_level
    :type cl:integer
    :initform 0)
   (history_num
    :reader history_num
    :initarg :history_num
    :type cl:integer
    :initform 0)
   (history_traj
    :reader history_traj
    :initarg :history_traj
    :type (cl:vector iv_dynamicobject_msgs-msg:History_traj)
   :initform (cl:make-array 0 :element-type 'iv_dynamicobject_msgs-msg:History_traj :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:History_traj)))
   (predict_num
    :reader predict_num
    :initarg :predict_num
    :type cl:integer
    :initform 0)
   (predict_traj
    :reader predict_traj
    :initarg :predict_traj
    :type (cl:vector iv_dynamicobject_msgs-msg:Predict_traj)
   :initform (cl:make-array 0 :element-type 'iv_dynamicobject_msgs-msg:Predict_traj :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:Predict_traj))))
)

(cl:defclass moving_target (<moving_target>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moving_target>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moving_target)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_dynamicobject_msgs-msg:<moving_target> is deprecated: use iv_dynamicobject_msgs-msg:moving_target instead.")))

(cl:ensure-generic-function 'ID_number-val :lambda-list '(m))
(cl:defmethod ID_number-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:ID_number-val is deprecated.  Use iv_dynamicobject_msgs-msg:ID_number instead.")
  (ID_number m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:center_point-val is deprecated.  Use iv_dynamicobject_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'line_num-val :lambda-list '(m))
(cl:defmethod line_num-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:line_num-val is deprecated.  Use iv_dynamicobject_msgs-msg:line_num instead.")
  (line_num m))

(cl:ensure-generic-function 'line_point-val :lambda-list '(m))
(cl:defmethod line_point-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:line_point-val is deprecated.  Use iv_dynamicobject_msgs-msg:line_point instead.")
  (line_point m))

(cl:ensure-generic-function 'object_high-val :lambda-list '(m))
(cl:defmethod object_high-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:object_high-val is deprecated.  Use iv_dynamicobject_msgs-msg:object_high instead.")
  (object_high m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:object_type-val is deprecated.  Use iv_dynamicobject_msgs-msg:object_type instead.")
  (object_type m))

(cl:ensure-generic-function 'is_updated-val :lambda-list '(m))
(cl:defmethod is_updated-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:is_updated-val is deprecated.  Use iv_dynamicobject_msgs-msg:is_updated instead.")
  (is_updated m))

(cl:ensure-generic-function 'tracked_times-val :lambda-list '(m))
(cl:defmethod tracked_times-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:tracked_times-val is deprecated.  Use iv_dynamicobject_msgs-msg:tracked_times instead.")
  (tracked_times m))

(cl:ensure-generic-function 'dangerous_level-val :lambda-list '(m))
(cl:defmethod dangerous_level-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:dangerous_level-val is deprecated.  Use iv_dynamicobject_msgs-msg:dangerous_level instead.")
  (dangerous_level m))

(cl:ensure-generic-function 'history_num-val :lambda-list '(m))
(cl:defmethod history_num-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:history_num-val is deprecated.  Use iv_dynamicobject_msgs-msg:history_num instead.")
  (history_num m))

(cl:ensure-generic-function 'history_traj-val :lambda-list '(m))
(cl:defmethod history_traj-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:history_traj-val is deprecated.  Use iv_dynamicobject_msgs-msg:history_traj instead.")
  (history_traj m))

(cl:ensure-generic-function 'predict_num-val :lambda-list '(m))
(cl:defmethod predict_num-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:predict_num-val is deprecated.  Use iv_dynamicobject_msgs-msg:predict_num instead.")
  (predict_num m))

(cl:ensure-generic-function 'predict_traj-val :lambda-list '(m))
(cl:defmethod predict_traj-val ((m <moving_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:predict_traj-val is deprecated.  Use iv_dynamicobject_msgs-msg:predict_traj instead.")
  (predict_traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moving_target>) ostream)
  "Serializes a message object of type '<moving_target>"
  (cl:let* ((signed (cl:slot-value msg 'ID_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'line_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_point))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'object_high))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'object_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_updated) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tracked_times)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dangerous_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'history_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'history_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'history_traj))
  (cl:let* ((signed (cl:slot-value msg 'predict_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predict_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predict_traj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moving_target>) istream)
  "Deserializes a message object of type '<moving_target>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'line_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'line_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_dynamicobject_msgs-msg:Points))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_high) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_updated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracked_times) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dangerous_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'history_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'history_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'history_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_dynamicobject_msgs-msg:History_traj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'predict_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predict_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predict_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_dynamicobject_msgs-msg:Predict_traj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moving_target>)))
  "Returns string type for a message object of type '<moving_target>"
  "iv_dynamicobject_msgs/moving_target")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_target)))
  "Returns string type for a message object of type 'moving_target"
  "iv_dynamicobject_msgs/moving_target")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moving_target>)))
  "Returns md5sum for a message object of type '<moving_target>"
  "54e1380b44fd25ff42cfc852f7e95898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moving_target)))
  "Returns md5sum for a message object of type 'moving_target"
  "54e1380b44fd25ff42cfc852f7e95898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moving_target>)))
  "Returns full string definition for message of type '<moving_target>"
  (cl:format cl:nil "    int32 ID_number~%    Points center_point~%    int32 line_num~%    Points[] line_point   ~%    float32 object_high~%    int32 object_type    ~%    bool is_updated~%    int32  tracked_times~%    int32  dangerous_level~%    int32  history_num~%    History_traj[] history_traj~%    int32  predict_num~%    Predict_traj[] predict_traj       ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: iv_dynamicobject_msgs/History_traj~%    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Predict_traj~%    float64 time_stamp~%    Points point~%    float32 v_x~%    float32 v_y~%    float32 acc_x~%    float32 acc_y~%    float32 pos_head~%    float32 v_w~%    int16 confidence_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moving_target)))
  "Returns full string definition for message of type 'moving_target"
  (cl:format cl:nil "    int32 ID_number~%    Points center_point~%    int32 line_num~%    Points[] line_point   ~%    float32 object_high~%    int32 object_type    ~%    bool is_updated~%    int32  tracked_times~%    int32  dangerous_level~%    int32  history_num~%    History_traj[] history_traj~%    int32  predict_num~%    Predict_traj[] predict_traj       ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: iv_dynamicobject_msgs/History_traj~%    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Predict_traj~%    float64 time_stamp~%    Points point~%    float32 v_x~%    float32 v_y~%    float32 acc_x~%    float32 acc_y~%    float32 pos_head~%    float32 v_w~%    int16 confidence_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moving_target>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     1
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'history_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predict_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moving_target>))
  "Converts a ROS message object to a list"
  (cl:list 'moving_target
    (cl:cons ':ID_number (ID_number msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':line_num (line_num msg))
    (cl:cons ':line_point (line_point msg))
    (cl:cons ':object_high (object_high msg))
    (cl:cons ':object_type (object_type msg))
    (cl:cons ':is_updated (is_updated msg))
    (cl:cons ':tracked_times (tracked_times msg))
    (cl:cons ':dangerous_level (dangerous_level msg))
    (cl:cons ':history_num (history_num msg))
    (cl:cons ':history_traj (history_traj msg))
    (cl:cons ':predict_num (predict_num msg))
    (cl:cons ':predict_traj (predict_traj msg))
))
