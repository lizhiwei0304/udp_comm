; Auto-generated. Do not edit!


(cl:in-package speed_ctrl_msgs-msg)


;//! \htmlinclude speed_ctrl.msg.html

(cl:defclass <speed_ctrl> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (issue_acc
    :reader issue_acc
    :initarg :issue_acc
    :type cl:float
    :initform 0.0)
   (issue_v
    :reader issue_v
    :initarg :issue_v
    :type cl:float
    :initform 0.0)
   (cur_acc
    :reader cur_acc
    :initarg :cur_acc
    :type cl:float
    :initform 0.0)
   (cur_speed
    :reader cur_speed
    :initarg :cur_speed
    :type cl:float
    :initform 0.0)
   (rc_path_time
    :reader rc_path_time
    :initarg :rc_path_time
    :type cl:float
    :initform 0.0)
   (pub_acc_time
    :reader pub_acc_time
    :initarg :pub_acc_time
    :type cl:float
    :initform 0.0)
   (rc_acc_time
    :reader rc_acc_time
    :initarg :rc_acc_time
    :type cl:float
    :initform 0.0)
   (pub_cmd_time
    :reader pub_cmd_time
    :initarg :pub_cmd_time
    :type cl:float
    :initform 0.0)
   (total_s
    :reader total_s
    :initarg :total_s
    :type cl:float
    :initform 0.0)
   (curv_max
    :reader curv_max
    :initarg :curv_max
    :type cl:float
    :initform 0.0)
   (v_max
    :reader v_max
    :initarg :v_max
    :type cl:float
    :initform 0.0)
   (running_mode
    :reader running_mode
    :initarg :running_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass speed_ctrl (<speed_ctrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_ctrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_ctrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name speed_ctrl_msgs-msg:<speed_ctrl> is deprecated: use speed_ctrl_msgs-msg:speed_ctrl instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:direction-val is deprecated.  Use speed_ctrl_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:count-val is deprecated.  Use speed_ctrl_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'issue_acc-val :lambda-list '(m))
(cl:defmethod issue_acc-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:issue_acc-val is deprecated.  Use speed_ctrl_msgs-msg:issue_acc instead.")
  (issue_acc m))

(cl:ensure-generic-function 'issue_v-val :lambda-list '(m))
(cl:defmethod issue_v-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:issue_v-val is deprecated.  Use speed_ctrl_msgs-msg:issue_v instead.")
  (issue_v m))

(cl:ensure-generic-function 'cur_acc-val :lambda-list '(m))
(cl:defmethod cur_acc-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:cur_acc-val is deprecated.  Use speed_ctrl_msgs-msg:cur_acc instead.")
  (cur_acc m))

(cl:ensure-generic-function 'cur_speed-val :lambda-list '(m))
(cl:defmethod cur_speed-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:cur_speed-val is deprecated.  Use speed_ctrl_msgs-msg:cur_speed instead.")
  (cur_speed m))

(cl:ensure-generic-function 'rc_path_time-val :lambda-list '(m))
(cl:defmethod rc_path_time-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:rc_path_time-val is deprecated.  Use speed_ctrl_msgs-msg:rc_path_time instead.")
  (rc_path_time m))

(cl:ensure-generic-function 'pub_acc_time-val :lambda-list '(m))
(cl:defmethod pub_acc_time-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:pub_acc_time-val is deprecated.  Use speed_ctrl_msgs-msg:pub_acc_time instead.")
  (pub_acc_time m))

(cl:ensure-generic-function 'rc_acc_time-val :lambda-list '(m))
(cl:defmethod rc_acc_time-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:rc_acc_time-val is deprecated.  Use speed_ctrl_msgs-msg:rc_acc_time instead.")
  (rc_acc_time m))

(cl:ensure-generic-function 'pub_cmd_time-val :lambda-list '(m))
(cl:defmethod pub_cmd_time-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:pub_cmd_time-val is deprecated.  Use speed_ctrl_msgs-msg:pub_cmd_time instead.")
  (pub_cmd_time m))

(cl:ensure-generic-function 'total_s-val :lambda-list '(m))
(cl:defmethod total_s-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:total_s-val is deprecated.  Use speed_ctrl_msgs-msg:total_s instead.")
  (total_s m))

(cl:ensure-generic-function 'curv_max-val :lambda-list '(m))
(cl:defmethod curv_max-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:curv_max-val is deprecated.  Use speed_ctrl_msgs-msg:curv_max instead.")
  (curv_max m))

(cl:ensure-generic-function 'v_max-val :lambda-list '(m))
(cl:defmethod v_max-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:v_max-val is deprecated.  Use speed_ctrl_msgs-msg:v_max instead.")
  (v_max m))

(cl:ensure-generic-function 'running_mode-val :lambda-list '(m))
(cl:defmethod running_mode-val ((m <speed_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader speed_ctrl_msgs-msg:running_mode-val is deprecated.  Use speed_ctrl_msgs-msg:running_mode instead.")
  (running_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_ctrl>) ostream)
  "Serializes a message object of type '<speed_ctrl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'issue_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'issue_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rc_path_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pub_acc_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rc_acc_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pub_cmd_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curv_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'running_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_ctrl>) istream)
  "Deserializes a message object of type '<speed_ctrl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'issue_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'issue_v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rc_path_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pub_acc_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rc_acc_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pub_cmd_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curv_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'running_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_ctrl>)))
  "Returns string type for a message object of type '<speed_ctrl>"
  "speed_ctrl_msgs/speed_ctrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_ctrl)))
  "Returns string type for a message object of type 'speed_ctrl"
  "speed_ctrl_msgs/speed_ctrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_ctrl>)))
  "Returns md5sum for a message object of type '<speed_ctrl>"
  "eca0c122130abed6f501d6e0ed63b576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_ctrl)))
  "Returns md5sum for a message object of type 'speed_ctrl"
  "eca0c122130abed6f501d6e0ed63b576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_ctrl>)))
  "Returns full string definition for message of type '<speed_ctrl>"
  (cl:format cl:nil "uint8 direction~%uint32 count~%float64 issue_acc~%float64 issue_v~%float64 cur_acc~%float64 cur_speed~%float64 rc_path_time~%float64 pub_acc_time~%float64 rc_acc_time~%float64 pub_cmd_time~%~%## for debug~%float64 total_s~%float64 curv_max~%float64 v_max~%uint8 running_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_ctrl)))
  "Returns full string definition for message of type 'speed_ctrl"
  (cl:format cl:nil "uint8 direction~%uint32 count~%float64 issue_acc~%float64 issue_v~%float64 cur_acc~%float64 cur_speed~%float64 rc_path_time~%float64 pub_acc_time~%float64 rc_acc_time~%float64 pub_cmd_time~%~%## for debug~%float64 total_s~%float64 curv_max~%float64 v_max~%uint8 running_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_ctrl>))
  (cl:+ 0
     1
     4
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_ctrl>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_ctrl
    (cl:cons ':direction (direction msg))
    (cl:cons ':count (count msg))
    (cl:cons ':issue_acc (issue_acc msg))
    (cl:cons ':issue_v (issue_v msg))
    (cl:cons ':cur_acc (cur_acc msg))
    (cl:cons ':cur_speed (cur_speed msg))
    (cl:cons ':rc_path_time (rc_path_time msg))
    (cl:cons ':pub_acc_time (pub_acc_time msg))
    (cl:cons ':rc_acc_time (rc_acc_time msg))
    (cl:cons ':pub_cmd_time (pub_cmd_time msg))
    (cl:cons ':total_s (total_s msg))
    (cl:cons ':curv_max (curv_max msg))
    (cl:cons ':v_max (v_max msg))
    (cl:cons ':running_mode (running_mode msg))
))
