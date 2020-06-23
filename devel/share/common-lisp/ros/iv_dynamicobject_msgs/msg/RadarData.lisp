; Auto-generated. Do not edit!


(cl:in-package iv_dynamicobject_msgs-msg)


;//! \htmlinclude RadarData.msg.html

(cl:defclass <RadarData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (delphi_detection_array
    :reader delphi_detection_array
    :initarg :delphi_detection_array
    :type (cl:vector iv_dynamicobject_msgs-msg:RadarPoint)
   :initform (cl:make-array 64 :element-type 'iv_dynamicobject_msgs-msg:RadarPoint :initial-element (cl:make-instance 'iv_dynamicobject_msgs-msg:RadarPoint)))
   (ACC_Target_ID
    :reader ACC_Target_ID
    :initarg :ACC_Target_ID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarData (<RadarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iv_dynamicobject_msgs-msg:<RadarData> is deprecated: use iv_dynamicobject_msgs-msg:RadarData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:header-val is deprecated.  Use iv_dynamicobject_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'delphi_detection_array-val :lambda-list '(m))
(cl:defmethod delphi_detection_array-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:delphi_detection_array-val is deprecated.  Use iv_dynamicobject_msgs-msg:delphi_detection_array instead.")
  (delphi_detection_array m))

(cl:ensure-generic-function 'ACC_Target_ID-val :lambda-list '(m))
(cl:defmethod ACC_Target_ID-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iv_dynamicobject_msgs-msg:ACC_Target_ID-val is deprecated.  Use iv_dynamicobject_msgs-msg:ACC_Target_ID instead.")
  (ACC_Target_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarData>) ostream)
  "Serializes a message object of type '<RadarData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'delphi_detection_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Target_ID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarData>) istream)
  "Deserializes a message object of type '<RadarData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'delphi_detection_array) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'delphi_detection_array)))
    (cl:dotimes (i 64)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iv_dynamicobject_msgs-msg:RadarPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Target_ID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarData>)))
  "Returns string type for a message object of type '<RadarData>"
  "iv_dynamicobject_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarData)))
  "Returns string type for a message object of type 'RadarData"
  "iv_dynamicobject_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarData>)))
  "Returns md5sum for a message object of type '<RadarData>"
  "11cc650889f4145ca7db11cb95c6e9cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarData)))
  "Returns md5sum for a message object of type 'RadarData"
  "11cc650889f4145ca7db11cb95c6e9cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarData>)))
  "Returns full string definition for message of type '<RadarData>"
  (cl:format cl:nil "std_msgs/Header header~%RadarPoint[64] delphi_detection_array~%uint8 ACC_Target_ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: iv_dynamicobject_msgs/RadarPoint~%uint8 target_ID~%float32 range~%float32 v~%float32 angle~%float32 x~%float32 y~%bool valid~%uint8 status~%uint8 moving~%bool moving_fast~%bool moving_slow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarData)))
  "Returns full string definition for message of type 'RadarData"
  (cl:format cl:nil "std_msgs/Header header~%RadarPoint[64] delphi_detection_array~%uint8 ACC_Target_ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: iv_dynamicobject_msgs/RadarPoint~%uint8 target_ID~%float32 range~%float32 v~%float32 angle~%float32 x~%float32 y~%bool valid~%uint8 status~%uint8 moving~%bool moving_fast~%bool moving_slow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'delphi_detection_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarData>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarData
    (cl:cons ':header (header msg))
    (cl:cons ':delphi_detection_array (delphi_detection_array msg))
    (cl:cons ':ACC_Target_ID (ACC_Target_ID msg))
))
