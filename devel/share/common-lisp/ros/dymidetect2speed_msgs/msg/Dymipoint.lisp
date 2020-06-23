; Auto-generated. Do not edit!


(cl:in-package dymidetect2speed_msgs-msg)


;//! \htmlinclude Dymipoint.msg.html

(cl:defclass <Dymipoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Dymipoint (<Dymipoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dymipoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dymipoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dymidetect2speed_msgs-msg:<Dymipoint> is deprecated: use dymidetect2speed_msgs-msg:Dymipoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Dymipoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dymidetect2speed_msgs-msg:position-val is deprecated.  Use dymidetect2speed_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dymipoint>) ostream)
  "Serializes a message object of type '<Dymipoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dymipoint>) istream)
  "Deserializes a message object of type '<Dymipoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dymipoint>)))
  "Returns string type for a message object of type '<Dymipoint>"
  "dymidetect2speed_msgs/Dymipoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dymipoint)))
  "Returns string type for a message object of type 'Dymipoint"
  "dymidetect2speed_msgs/Dymipoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dymipoint>)))
  "Returns md5sum for a message object of type '<Dymipoint>"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dymipoint)))
  "Returns md5sum for a message object of type 'Dymipoint"
  "e7bb0ef028c744b081acdc57743b11d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dymipoint>)))
  "Returns full string definition for message of type '<Dymipoint>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dymipoint)))
  "Returns full string definition for message of type 'Dymipoint"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dymipoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dymipoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Dymipoint
    (cl:cons ':position (position msg))
))
