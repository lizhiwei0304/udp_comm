; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude SpeedReport.msg.html

(cl:defclass <SpeedReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speed_wheel
    :reader speed_wheel
    :initarg :speed_wheel
    :type control_msgs-msg:WheelStateReport
    :initform (cl:make-instance 'control_msgs-msg:WheelStateReport))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass SpeedReport (<SpeedReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<SpeedReport> is deprecated: use control_msgs-msg:SpeedReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speed_wheel-val :lambda-list '(m))
(cl:defmethod speed_wheel-val ((m <SpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:speed_wheel-val is deprecated.  Use control_msgs-msg:speed_wheel instead.")
  (speed_wheel m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:velocity-val is deprecated.  Use control_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedReport>) ostream)
  "Serializes a message object of type '<SpeedReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_wheel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedReport>) istream)
  "Deserializes a message object of type '<SpeedReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_wheel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedReport>)))
  "Returns string type for a message object of type '<SpeedReport>"
  "control_msgs/SpeedReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedReport)))
  "Returns string type for a message object of type 'SpeedReport"
  "control_msgs/SpeedReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedReport>)))
  "Returns md5sum for a message object of type '<SpeedReport>"
  "11ba2e8ec858d185d67e1ed8a39ee13c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedReport)))
  "Returns md5sum for a message object of type 'SpeedReport"
  "11ba2e8ec858d185d67e1ed8a39ee13c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedReport>)))
  "Returns full string definition for message of type '<SpeedReport>"
  (cl:format cl:nil "Header header~%~%control_msgs/WheelStateReport speed_wheel~%geometry_msgs/Twist velocity~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedReport)))
  "Returns full string definition for message of type 'SpeedReport"
  (cl:format cl:nil "Header header~%~%control_msgs/WheelStateReport speed_wheel~%geometry_msgs/Twist velocity~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_wheel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedReport
    (cl:cons ':header (header msg))
    (cl:cons ':speed_wheel (speed_wheel msg))
    (cl:cons ':velocity (velocity msg))
))
