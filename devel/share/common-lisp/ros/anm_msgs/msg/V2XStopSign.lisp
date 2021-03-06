; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XStopSign.msg.html

(cl:defclass <V2XStopSign> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (effect_length
    :reader effect_length
    :initarg :effect_length
    :type cl:float
    :initform 0.0))
)

(cl:defclass V2XStopSign (<V2XStopSign>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XStopSign>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XStopSign)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XStopSign> is deprecated: use anm_msgs-msg:V2XStopSign instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <V2XStopSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:id-val is deprecated.  Use anm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <V2XStopSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:position-val is deprecated.  Use anm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <V2XStopSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:yaw-val is deprecated.  Use anm_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'effect_length-val :lambda-list '(m))
(cl:defmethod effect_length-val ((m <V2XStopSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:effect_length-val is deprecated.  Use anm_msgs-msg:effect_length instead.")
  (effect_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XStopSign>) ostream)
  "Serializes a message object of type '<V2XStopSign>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'effect_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XStopSign>) istream)
  "Deserializes a message object of type '<V2XStopSign>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effect_length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XStopSign>)))
  "Returns string type for a message object of type '<V2XStopSign>"
  "anm_msgs/V2XStopSign")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XStopSign)))
  "Returns string type for a message object of type 'V2XStopSign"
  "anm_msgs/V2XStopSign")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XStopSign>)))
  "Returns md5sum for a message object of type '<V2XStopSign>"
  "72f27a0ddc174ecc9ec3a9297776ac86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XStopSign)))
  "Returns md5sum for a message object of type 'V2XStopSign"
  "72f27a0ddc174ecc9ec3a9297776ac86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XStopSign>)))
  "Returns full string definition for message of type '<V2XStopSign>"
  (cl:format cl:nil "# Stop sign custom header~%#~%# id            = ID of stop sign (for multiple stop signs)~%# position      = x y position in odom frame (meters)~%# yaw           = heading in radians north of east~%# effect_length = length of the \"fence line\" for stop sign (meters)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XStopSign)))
  "Returns full string definition for message of type 'V2XStopSign"
  (cl:format cl:nil "# Stop sign custom header~%#~%# id            = ID of stop sign (for multiple stop signs)~%# position      = x y position in odom frame (meters)~%# yaw           = heading in radians north of east~%# effect_length = length of the \"fence line\" for stop sign (meters)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XStopSign>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XStopSign>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XStopSign
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':effect_length (effect_length msg))
))
