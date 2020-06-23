; Auto-generated. Do not edit!


(cl:in-package sensor_driver_msgs-msg)


;//! \htmlinclude Rectangle.msg.html

(cl:defclass <Rectangle> (roslisp-msg-protocol:ros-message)
  ((Point1
    :reader Point1
    :initarg :Point1
    :type sensor_driver_msgs-msg:Points
    :initform (cl:make-instance 'sensor_driver_msgs-msg:Points))
   (Point2
    :reader Point2
    :initarg :Point2
    :type sensor_driver_msgs-msg:Points
    :initform (cl:make-instance 'sensor_driver_msgs-msg:Points))
   (Point3
    :reader Point3
    :initarg :Point3
    :type sensor_driver_msgs-msg:Points
    :initform (cl:make-instance 'sensor_driver_msgs-msg:Points))
   (Point4
    :reader Point4
    :initarg :Point4
    :type sensor_driver_msgs-msg:Points
    :initform (cl:make-instance 'sensor_driver_msgs-msg:Points))
   (Height
    :reader Height
    :initarg :Height
    :type cl:float
    :initform 0.0)
   (Heading
    :reader Heading
    :initarg :Heading
    :type cl:integer
    :initform 0)
   (Id_number
    :reader Id_number
    :initarg :Id_number
    :type cl:integer
    :initform 0)
   (v_x
    :reader v_x
    :initarg :v_x
    :type cl:float
    :initform 0.0)
   (v_y
    :reader v_y
    :initarg :v_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rectangle (<Rectangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rectangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rectangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_driver_msgs-msg:<Rectangle> is deprecated: use sensor_driver_msgs-msg:Rectangle instead.")))

(cl:ensure-generic-function 'Point1-val :lambda-list '(m))
(cl:defmethod Point1-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Point1-val is deprecated.  Use sensor_driver_msgs-msg:Point1 instead.")
  (Point1 m))

(cl:ensure-generic-function 'Point2-val :lambda-list '(m))
(cl:defmethod Point2-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Point2-val is deprecated.  Use sensor_driver_msgs-msg:Point2 instead.")
  (Point2 m))

(cl:ensure-generic-function 'Point3-val :lambda-list '(m))
(cl:defmethod Point3-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Point3-val is deprecated.  Use sensor_driver_msgs-msg:Point3 instead.")
  (Point3 m))

(cl:ensure-generic-function 'Point4-val :lambda-list '(m))
(cl:defmethod Point4-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Point4-val is deprecated.  Use sensor_driver_msgs-msg:Point4 instead.")
  (Point4 m))

(cl:ensure-generic-function 'Height-val :lambda-list '(m))
(cl:defmethod Height-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Height-val is deprecated.  Use sensor_driver_msgs-msg:Height instead.")
  (Height m))

(cl:ensure-generic-function 'Heading-val :lambda-list '(m))
(cl:defmethod Heading-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Heading-val is deprecated.  Use sensor_driver_msgs-msg:Heading instead.")
  (Heading m))

(cl:ensure-generic-function 'Id_number-val :lambda-list '(m))
(cl:defmethod Id_number-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:Id_number-val is deprecated.  Use sensor_driver_msgs-msg:Id_number instead.")
  (Id_number m))

(cl:ensure-generic-function 'v_x-val :lambda-list '(m))
(cl:defmethod v_x-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:v_x-val is deprecated.  Use sensor_driver_msgs-msg:v_x instead.")
  (v_x m))

(cl:ensure-generic-function 'v_y-val :lambda-list '(m))
(cl:defmethod v_y-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_driver_msgs-msg:v_y-val is deprecated.  Use sensor_driver_msgs-msg:v_y instead.")
  (v_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rectangle>) ostream)
  "Serializes a message object of type '<Rectangle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Point1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Point2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Point3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Point4) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Id_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rectangle>) istream)
  "Deserializes a message object of type '<Rectangle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Point1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Point2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Point3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Point4) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Heading) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Id_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rectangle>)))
  "Returns string type for a message object of type '<Rectangle>"
  "sensor_driver_msgs/Rectangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rectangle)))
  "Returns string type for a message object of type 'Rectangle"
  "sensor_driver_msgs/Rectangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rectangle>)))
  "Returns md5sum for a message object of type '<Rectangle>"
  "a41302c037ca3980af28f0230373b1ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rectangle)))
  "Returns md5sum for a message object of type 'Rectangle"
  "a41302c037ca3980af28f0230373b1ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rectangle>)))
  "Returns full string definition for message of type '<Rectangle>"
  (cl:format cl:nil "Points Point1~%Points Point2~%Points Point3~%Points Point4~%float64 Height~%int32 Heading~%int32 Id_number~%float64 v_x~%float64 v_y~%~%================================================================================~%MSG: sensor_driver_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rectangle)))
  "Returns full string definition for message of type 'Rectangle"
  (cl:format cl:nil "Points Point1~%Points Point2~%Points Point3~%Points Point4~%float64 Height~%int32 Heading~%int32 Id_number~%float64 v_x~%float64 v_y~%~%================================================================================~%MSG: sensor_driver_msgs/Points~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rectangle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Point1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Point2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Point3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Point4))
     8
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rectangle>))
  "Converts a ROS message object to a list"
  (cl:list 'Rectangle
    (cl:cons ':Point1 (Point1 msg))
    (cl:cons ':Point2 (Point2 msg))
    (cl:cons ':Point3 (Point3 msg))
    (cl:cons ':Point4 (Point4 msg))
    (cl:cons ':Height (Height msg))
    (cl:cons ':Heading (Heading msg))
    (cl:cons ':Id_number (Id_number msg))
    (cl:cons ':v_x (v_x msg))
    (cl:cons ':v_y (v_y msg))
))
