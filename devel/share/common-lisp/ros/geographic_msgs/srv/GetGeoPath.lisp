; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-srv)


;//! \htmlinclude GetGeoPath-request.msg.html

(cl:defclass <GetGeoPath-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (goal
    :reader goal
    :initarg :goal
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint)))
)

(cl:defclass GetGeoPath-request (<GetGeoPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeoPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeoPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetGeoPath-request> is deprecated: use geographic_msgs-srv:GetGeoPath-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GetGeoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:start-val is deprecated.  Use geographic_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetGeoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:goal-val is deprecated.  Use geographic_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeoPath-request>) ostream)
  "Serializes a message object of type '<GetGeoPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeoPath-request>) istream)
  "Deserializes a message object of type '<GetGeoPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeoPath-request>)))
  "Returns string type for a service object of type '<GetGeoPath-request>"
  "geographic_msgs/GetGeoPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath-request)))
  "Returns string type for a service object of type 'GetGeoPath-request"
  "geographic_msgs/GetGeoPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeoPath-request>)))
  "Returns md5sum for a message object of type '<GetGeoPath-request>"
  "420e1bc36e077856753254ec0523f53a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeoPath-request)))
  "Returns md5sum for a message object of type 'GetGeoPath-request"
  "420e1bc36e077856753254ec0523f53a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeoPath-request>)))
  "Returns full string definition for message of type '<GetGeoPath-request>"
  (cl:format cl:nil "~%~%~%geographic_msgs/GeoPoint start~%geographic_msgs/GeoPoint goal~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeoPath-request)))
  "Returns full string definition for message of type 'GetGeoPath-request"
  (cl:format cl:nil "~%~%~%geographic_msgs/GeoPoint start~%geographic_msgs/GeoPoint goal~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeoPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeoPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeoPath-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude GetGeoPath-response.msg.html

(cl:defclass <GetGeoPath-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (plan
    :reader plan
    :initarg :plan
    :type geographic_msgs-msg:GeoPath
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPath)))
)

(cl:defclass GetGeoPath-response (<GetGeoPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeoPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeoPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetGeoPath-response> is deprecated: use geographic_msgs-srv:GetGeoPath-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:success-val is deprecated.  Use geographic_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:status-val is deprecated.  Use geographic_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:plan-val is deprecated.  Use geographic_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeoPath-response>) ostream)
  "Serializes a message object of type '<GetGeoPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeoPath-response>) istream)
  "Deserializes a message object of type '<GetGeoPath-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeoPath-response>)))
  "Returns string type for a service object of type '<GetGeoPath-response>"
  "geographic_msgs/GetGeoPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath-response)))
  "Returns string type for a service object of type 'GetGeoPath-response"
  "geographic_msgs/GetGeoPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeoPath-response>)))
  "Returns md5sum for a message object of type '<GetGeoPath-response>"
  "420e1bc36e077856753254ec0523f53a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeoPath-response)))
  "Returns md5sum for a message object of type 'GetGeoPath-response"
  "420e1bc36e077856753254ec0523f53a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeoPath-response>)))
  "Returns full string definition for message of type '<GetGeoPath-response>"
  (cl:format cl:nil "~%bool success~%string status~%~%geographic_msgs/GeoPath plan~%~%~%================================================================================~%MSG: geographic_msgs/GeoPath~%std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeoPath-response)))
  "Returns full string definition for message of type 'GetGeoPath-response"
  (cl:format cl:nil "~%bool success~%string status~%~%geographic_msgs/GeoPath plan~%~%~%================================================================================~%MSG: geographic_msgs/GeoPath~%std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeoPath-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeoPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeoPath-response
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGeoPath)))
  'GetGeoPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGeoPath)))
  'GetGeoPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath)))
  "Returns string type for a service object of type '<GetGeoPath>"
  "geographic_msgs/GetGeoPath")