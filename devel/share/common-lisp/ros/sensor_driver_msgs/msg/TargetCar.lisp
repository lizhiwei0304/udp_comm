; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-msg)


;//! \htmlinclude TargetCar.msg.html

(cl:defclass <TargetCar> (roslisp-msg-protocol:ros-message)
  ((CarPosition
    :reader CarPosition
    :initarg :CarPosition
    :type (cl:vector sensor_driver_msgs-msg:Rectangle)
   :initform (cl:make-array 0 :element-type 'sensor_driver_msgs-msg:Rectangle :initial-element (cl:make-instance 'sensor_driver_msgs-msg:Rectangle)))
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass TargetCar (<TargetCar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetCar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetCar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-msg:<TargetCar> is deprecated: use sensor_driver_msgs-msg:TargetCar instead.")))

(cl:ensure-generic-function 'CarPosition-val :lambda-list '(m))
(cl:defmethod CarPosition-val ((m <TargetCar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:CarPosition-val is deprecated.  Use sensor_driver_msgs-msg:CarPosition instead.")
  (CarPosition m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <TargetCar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:num-val is deprecated.  Use sensor_driver_msgs-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetCar>) ostream)
  "Serializes a message object of type '<TargetCar>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CarPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'CarPosition))
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetCar>) istream)
  "Deserializes a message object of type '<TargetCar>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CarPosition) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CarPosition)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_driver_msgs-msg:Rectangle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetCar>)))
  "Returns string type for a message object of type '<TargetCar>"
  "sensor_driver_msgs/TargetCar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetCar)))
  "Returns string type for a message object of type 'TargetCar"
  "sensor_driver_msgs/TargetCar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetCar>)))
  "Returns md5sum for a message object of type '<TargetCar>"
  "3ef49c01eb2a83dc00d31ab0905a1439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetCar)))
  "Returns md5sum for a message object of type 'TargetCar"
  "3ef49c01eb2a83dc00d31ab0905a1439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetCar>)))
  "Returns full string definition for message of type '<TargetCar>"
  (cl:format cl:nil "Rectangle[] CarPosition~%int32 num~%~%================================================================================~%MSG: sensor_driver_msgs/Rectangle~%Points Point1~%Points Point2~%Points Point3~%Points Point4~%float64 Height~%int32 Heading~%int32 Id_number~%float64 v_x~%float64 v_y~%~%================================================================================~%MSG: sensor_driver_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetCar)))
  "Returns full string definition for message of type 'TargetCar"
  (cl:format cl:nil "Rectangle[] CarPosition~%int32 num~%~%================================================================================~%MSG: sensor_driver_msgs/Rectangle~%Points Point1~%Points Point2~%Points Point3~%Points Point4~%float64 Height~%int32 Heading~%int32 Id_number~%float64 v_x~%float64 v_y~%~%================================================================================~%MSG: sensor_driver_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetCar>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CarPosition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetCar>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetCar
    (cl:cons ':CarPosition (CarPosition msg))
    (cl:cons ':num (num msg))
))
