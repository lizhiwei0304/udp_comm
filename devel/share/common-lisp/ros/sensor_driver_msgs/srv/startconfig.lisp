; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-srv)


;//! \htmlinclude startconfig-request.msg.html

(cl:defclass <startconfig-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass startconfig-request (<startconfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startconfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startconfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-srv:<startconfig-request> is deprecated: use sensor_driver_msgs-srv:startconfig-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startconfig-request>) ostream)
  "Serializes a message object of type '<startconfig-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startconfig-request>) istream)
  "Deserializes a message object of type '<startconfig-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startconfig-request>)))
  "Returns string type for a service object of type '<startconfig-request>"
  "sensor_driver_msgs/startconfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startconfig-request)))
  "Returns string type for a service object of type 'startconfig-request"
  "sensor_driver_msgs/startconfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startconfig-request>)))
  "Returns md5sum for a message object of type '<startconfig-request>"
  "8f8af5cfa0a03531286994caaf587484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startconfig-request)))
  "Returns md5sum for a message object of type 'startconfig-request"
  "8f8af5cfa0a03531286994caaf587484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startconfig-request>)))
  "Returns full string definition for message of type '<startconfig-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startconfig-request)))
  "Returns full string definition for message of type 'startconfig-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startconfig-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startconfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'startconfig-request
))
;//! \htmlinclude startconfig-response.msg.html

(cl:defclass <startconfig-response> (roslisp-msg-protocol:ros-message)
  ((configstr
    :reader configstr
    :initarg :configstr
    :type cl:string
    :initform ""))
)

(cl:defclass startconfig-response (<startconfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startconfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startconfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-srv:<startconfig-response> is deprecated: use sensor_driver_msgs-srv:startconfig-response instead.")))

(cl:ensure-generic-function 'configstr-val :lambda-list '(m))
(cl:defmethod configstr-val ((m <startconfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-srv:configstr-val is deprecated.  Use sensor_driver_msgs-srv:configstr instead.")
  (configstr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startconfig-response>) ostream)
  "Serializes a message object of type '<startconfig-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'configstr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'configstr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startconfig-response>) istream)
  "Deserializes a message object of type '<startconfig-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'configstr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'configstr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startconfig-response>)))
  "Returns string type for a service object of type '<startconfig-response>"
  "sensor_driver_msgs/startconfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startconfig-response)))
  "Returns string type for a service object of type 'startconfig-response"
  "sensor_driver_msgs/startconfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startconfig-response>)))
  "Returns md5sum for a message object of type '<startconfig-response>"
  "8f8af5cfa0a03531286994caaf587484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startconfig-response)))
  "Returns md5sum for a message object of type 'startconfig-response"
  "8f8af5cfa0a03531286994caaf587484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startconfig-response>)))
  "Returns full string definition for message of type '<startconfig-response>"
  (cl:format cl:nil "~%string configstr~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startconfig-response)))
  "Returns full string definition for message of type 'startconfig-response"
  (cl:format cl:nil "~%string configstr~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startconfig-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'configstr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startconfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'startconfig-response
    (cl:cons ':configstr (configstr msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'startconfig)))
  'startconfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'startconfig)))
  'startconfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startconfig)))
  "Returns string type for a service object of type '<startconfig>"
  "sensor_driver_msgs/startconfig")