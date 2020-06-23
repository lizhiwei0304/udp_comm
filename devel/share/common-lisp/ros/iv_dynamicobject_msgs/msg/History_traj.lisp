; Auto-generated. Do not edit!


(cl:in-package iv_dynamicobject_msgs-msg)


;//! \htmlinclude History_traj.msg.html

(cl:defclass <History_traj> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:float
    :initform 0.0)
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
   :initform (cl:make-array 0 :element-type 'iv_dynamicobject_msgs-msg:Points :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:Points))))
)

(cl:defclass History_traj (<History_traj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <History_traj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'History_traj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_dynamicobject_msgs-msg:<History_traj> is deprecated: use iv_dynamicobject_msgs-msg:History_traj instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <History_traj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:time_stamp-val is deprecated.  Use iv_dynamicobject_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <History_traj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:center_point-val is deprecated.  Use iv_dynamicobject_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'line_num-val :lambda-list '(m))
(cl:defmethod line_num-val ((m <History_traj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:line_num-val is deprecated.  Use iv_dynamicobject_msgs-msg:line_num instead.")
  (line_num m))

(cl:ensure-generic-function 'line_point-val :lambda-list '(m))
(cl:defmethod line_point-val ((m <History_traj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:line_point-val is deprecated.  Use iv_dynamicobject_msgs-msg:line_point instead.")
  (line_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <History_traj>) ostream)
  "Serializes a message object of type '<History_traj>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <History_traj>) istream)
  "Deserializes a message object of type '<History_traj>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<History_traj>)))
  "Returns string type for a message object of type '<History_traj>"
  "iv_dynamicobject_msgs/History_traj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'History_traj)))
  "Returns string type for a message object of type 'History_traj"
  "iv_dynamicobject_msgs/History_traj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<History_traj>)))
  "Returns md5sum for a message object of type '<History_traj>"
  "306ab6d3bdb85c4207d78d719bd419dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'History_traj)))
  "Returns md5sum for a message object of type 'History_traj"
  "306ab6d3bdb85c4207d78d719bd419dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<History_traj>)))
  "Returns full string definition for message of type '<History_traj>"
  (cl:format cl:nil "    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'History_traj)))
  "Returns full string definition for message of type 'History_traj"
  (cl:format cl:nil "    float64 time_stamp~%    Points center_point~%    int32 line_num~%    Points[] line_point~%    ~%~%================================================================================~%MSG: iv_dynamicobject_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <History_traj>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <History_traj>))
  "Converts a ROS message object to a list"
  (cl:list 'History_traj
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':line_num (line_num msg))
    (cl:cons ':line_point (line_point msg))
))
