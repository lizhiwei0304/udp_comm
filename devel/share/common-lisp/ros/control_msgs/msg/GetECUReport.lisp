; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude GetECUReport.msg.html

(cl:defclass <GetECUReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type control_msgs-msg:ModeReport
    :initform (cl:make-instance 'control_msgs-msg:ModeReport))
   (steer_cur
    :reader steer_cur
    :initarg :steer_cur
    :type control_msgs-msg:SteerReport
    :initform (cl:make-instance 'control_msgs-msg:SteerReport))
   (shift_cur
    :reader shift_cur
    :initarg :shift_cur
    :type control_msgs-msg:GearReport
    :initform (cl:make-instance 'control_msgs-msg:GearReport))
   (shift1_cur
    :reader shift1_cur
    :initarg :shift1_cur
    :type control_msgs-msg:GearReport
    :initform (cl:make-instance 'control_msgs-msg:GearReport))
   (brake_cur
    :reader brake_cur
    :initarg :brake_cur
    :type control_msgs-msg:BrakeReport
    :initform (cl:make-instance 'control_msgs-msg:BrakeReport))
   (throttle_cur
    :reader throttle_cur
    :initarg :throttle_cur
    :type control_msgs-msg:ThrottleReport
    :initform (cl:make-instance 'control_msgs-msg:ThrottleReport))
   (speed
    :reader speed
    :initarg :speed
    :type control_msgs-msg:SpeedReport
    :initform (cl:make-instance 'control_msgs-msg:SpeedReport))
   (manual
    :reader manual
    :initarg :manual
    :type control_msgs-msg:HMIReport
    :initform (cl:make-instance 'control_msgs-msg:HMIReport))
   (APU_U
    :reader APU_U
    :initarg :APU_U
    :type cl:float
    :initform 0.0)
   (APU_I
    :reader APU_I
    :initarg :APU_I
    :type cl:float
    :initform 0.0)
   (Battery_I
    :reader Battery_I
    :initarg :Battery_I
    :type cl:float
    :initform 0.0)
   (Battery_U
    :reader Battery_U
    :initarg :Battery_U
    :type cl:float
    :initform 0.0)
   (Power_demand
    :reader Power_demand
    :initarg :Power_demand
    :type cl:float
    :initform 0.0)
   (motor_I_L
    :reader motor_I_L
    :initarg :motor_I_L
    :type cl:float
    :initform 0.0)
   (motor_I_R
    :reader motor_I_R
    :initarg :motor_I_R
    :type cl:float
    :initform 0.0)
   (motor_Torque_L
    :reader motor_Torque_L
    :initarg :motor_Torque_L
    :type cl:float
    :initform 0.0)
   (motor_Torque_R
    :reader motor_Torque_R
    :initarg :motor_Torque_R
    :type cl:float
    :initform 0.0)
   (motor_U_L
    :reader motor_U_L
    :initarg :motor_U_L
    :type cl:float
    :initform 0.0)
   (motor_U_R
    :reader motor_U_R
    :initarg :motor_U_R
    :type cl:float
    :initform 0.0)
   (motor_n_now_L
    :reader motor_n_now_L
    :initarg :motor_n_now_L
    :type cl:float
    :initform 0.0)
   (motor_n_now_R
    :reader motor_n_now_R
    :initarg :motor_n_now_R
    :type cl:float
    :initform 0.0)
   (Gear_state_now_L
    :reader Gear_state_now_L
    :initarg :Gear_state_now_L
    :type cl:float
    :initform 0.0)
   (Gear_state_now_R
    :reader Gear_state_now_R
    :initarg :Gear_state_now_R
    :type cl:float
    :initform 0.0)
   (steer_degree_now
    :reader steer_degree_now
    :initarg :steer_degree_now
    :type cl:float
    :initform 0.0)
   (steer_direction_now
    :reader steer_direction_now
    :initarg :steer_direction_now
    :type cl:float
    :initform 0.0)
   (soc_now
    :reader soc_now
    :initarg :soc_now
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetECUReport (<GetECUReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetECUReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetECUReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<GetECUReport> is deprecated: use control_msgs-msg:GetECUReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:mode-val is deprecated.  Use control_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'steer_cur-val :lambda-list '(m))
(cl:defmethod steer_cur-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_cur-val is deprecated.  Use control_msgs-msg:steer_cur instead.")
  (steer_cur m))

(cl:ensure-generic-function 'shift_cur-val :lambda-list '(m))
(cl:defmethod shift_cur-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:shift_cur-val is deprecated.  Use control_msgs-msg:shift_cur instead.")
  (shift_cur m))

(cl:ensure-generic-function 'shift1_cur-val :lambda-list '(m))
(cl:defmethod shift1_cur-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:shift1_cur-val is deprecated.  Use control_msgs-msg:shift1_cur instead.")
  (shift1_cur m))

(cl:ensure-generic-function 'brake_cur-val :lambda-list '(m))
(cl:defmethod brake_cur-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake_cur-val is deprecated.  Use control_msgs-msg:brake_cur instead.")
  (brake_cur m))

(cl:ensure-generic-function 'throttle_cur-val :lambda-list '(m))
(cl:defmethod throttle_cur-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_cur-val is deprecated.  Use control_msgs-msg:throttle_cur instead.")
  (throttle_cur m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:speed-val is deprecated.  Use control_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'manual-val :lambda-list '(m))
(cl:defmethod manual-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:manual-val is deprecated.  Use control_msgs-msg:manual instead.")
  (manual m))

(cl:ensure-generic-function 'APU_U-val :lambda-list '(m))
(cl:defmethod APU_U-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:APU_U-val is deprecated.  Use control_msgs-msg:APU_U instead.")
  (APU_U m))

(cl:ensure-generic-function 'APU_I-val :lambda-list '(m))
(cl:defmethod APU_I-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:APU_I-val is deprecated.  Use control_msgs-msg:APU_I instead.")
  (APU_I m))

(cl:ensure-generic-function 'Battery_I-val :lambda-list '(m))
(cl:defmethod Battery_I-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:Battery_I-val is deprecated.  Use control_msgs-msg:Battery_I instead.")
  (Battery_I m))

(cl:ensure-generic-function 'Battery_U-val :lambda-list '(m))
(cl:defmethod Battery_U-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:Battery_U-val is deprecated.  Use control_msgs-msg:Battery_U instead.")
  (Battery_U m))

(cl:ensure-generic-function 'Power_demand-val :lambda-list '(m))
(cl:defmethod Power_demand-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:Power_demand-val is deprecated.  Use control_msgs-msg:Power_demand instead.")
  (Power_demand m))

(cl:ensure-generic-function 'motor_I_L-val :lambda-list '(m))
(cl:defmethod motor_I_L-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_I_L-val is deprecated.  Use control_msgs-msg:motor_I_L instead.")
  (motor_I_L m))

(cl:ensure-generic-function 'motor_I_R-val :lambda-list '(m))
(cl:defmethod motor_I_R-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_I_R-val is deprecated.  Use control_msgs-msg:motor_I_R instead.")
  (motor_I_R m))

(cl:ensure-generic-function 'motor_Torque_L-val :lambda-list '(m))
(cl:defmethod motor_Torque_L-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_Torque_L-val is deprecated.  Use control_msgs-msg:motor_Torque_L instead.")
  (motor_Torque_L m))

(cl:ensure-generic-function 'motor_Torque_R-val :lambda-list '(m))
(cl:defmethod motor_Torque_R-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_Torque_R-val is deprecated.  Use control_msgs-msg:motor_Torque_R instead.")
  (motor_Torque_R m))

(cl:ensure-generic-function 'motor_U_L-val :lambda-list '(m))
(cl:defmethod motor_U_L-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_U_L-val is deprecated.  Use control_msgs-msg:motor_U_L instead.")
  (motor_U_L m))

(cl:ensure-generic-function 'motor_U_R-val :lambda-list '(m))
(cl:defmethod motor_U_R-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_U_R-val is deprecated.  Use control_msgs-msg:motor_U_R instead.")
  (motor_U_R m))

(cl:ensure-generic-function 'motor_n_now_L-val :lambda-list '(m))
(cl:defmethod motor_n_now_L-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_n_now_L-val is deprecated.  Use control_msgs-msg:motor_n_now_L instead.")
  (motor_n_now_L m))

(cl:ensure-generic-function 'motor_n_now_R-val :lambda-list '(m))
(cl:defmethod motor_n_now_R-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:motor_n_now_R-val is deprecated.  Use control_msgs-msg:motor_n_now_R instead.")
  (motor_n_now_R m))

(cl:ensure-generic-function 'Gear_state_now_L-val :lambda-list '(m))
(cl:defmethod Gear_state_now_L-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:Gear_state_now_L-val is deprecated.  Use control_msgs-msg:Gear_state_now_L instead.")
  (Gear_state_now_L m))

(cl:ensure-generic-function 'Gear_state_now_R-val :lambda-list '(m))
(cl:defmethod Gear_state_now_R-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:Gear_state_now_R-val is deprecated.  Use control_msgs-msg:Gear_state_now_R instead.")
  (Gear_state_now_R m))

(cl:ensure-generic-function 'steer_degree_now-val :lambda-list '(m))
(cl:defmethod steer_degree_now-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_degree_now-val is deprecated.  Use control_msgs-msg:steer_degree_now instead.")
  (steer_degree_now m))

(cl:ensure-generic-function 'steer_direction_now-val :lambda-list '(m))
(cl:defmethod steer_direction_now-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_direction_now-val is deprecated.  Use control_msgs-msg:steer_direction_now instead.")
  (steer_direction_now m))

(cl:ensure-generic-function 'soc_now-val :lambda-list '(m))
(cl:defmethod soc_now-val ((m <GetECUReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:soc_now-val is deprecated.  Use control_msgs-msg:soc_now instead.")
  (soc_now m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetECUReport>) ostream)
  "Serializes a message object of type '<GetECUReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steer_cur) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift_cur) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift1_cur) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_cur) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_cur) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'manual) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'APU_U))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'APU_I))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Battery_I))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Battery_U))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Power_demand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_I_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_I_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_Torque_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_Torque_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_U_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_U_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_n_now_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_n_now_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Gear_state_now_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Gear_state_now_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_degree_now))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_direction_now))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'soc_now))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetECUReport>) istream)
  "Deserializes a message object of type '<GetECUReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steer_cur) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift_cur) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift1_cur) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_cur) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_cur) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'manual) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'APU_U) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'APU_I) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_I) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_U) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Power_demand) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_I_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_I_R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_Torque_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_Torque_R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_U_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_U_R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_n_now_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_n_now_R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gear_state_now_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gear_state_now_R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_degree_now) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_direction_now) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'soc_now) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetECUReport>)))
  "Returns string type for a message object of type '<GetECUReport>"
  "control_msgs/GetECUReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetECUReport)))
  "Returns string type for a message object of type 'GetECUReport"
  "control_msgs/GetECUReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetECUReport>)))
  "Returns md5sum for a message object of type '<GetECUReport>"
  "714d4d6695952cd3ce4d56d62f609f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetECUReport)))
  "Returns md5sum for a message object of type 'GetECUReport"
  "714d4d6695952cd3ce4d56d62f609f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetECUReport>)))
  "Returns full string definition for message of type '<GetECUReport>"
  (cl:format cl:nil "Header header~%~%control_msgs/ModeReport mode~%~%control_msgs/SteerReport steer_cur~%~%control_msgs/GearReport shift_cur~%control_msgs/GearReport shift1_cur~%~%control_msgs/BrakeReport brake_cur~%control_msgs/ThrottleReport throttle_cur # include engine_status~%~%control_msgs/SpeedReport speed~%~%control_msgs/HMIReport manual~%~%float64 APU_U~%float64 APU_I~%float64 Battery_I~%float64 Battery_U~%float64 Power_demand~%float64 motor_I_L~%float64 motor_I_R~%float64 motor_Torque_L~%float64 motor_Torque_R~%float64 motor_U_L~%float64 motor_U_R~%float64 motor_n_now_L~%float64 motor_n_now_R~%float64 Gear_state_now_L~%float64 Gear_state_now_R~%float64 steer_degree_now~%float64 steer_direction_now~%float64 soc_now~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ModeReport~%Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: control_msgs/SteerReport~%Header header~%float32 steer~%~%================================================================================~%MSG: control_msgs/GearReport~%Header header~%uint8 gear~%~%================================================================================~%MSG: control_msgs/BrakeReport~%Header header~%~%float32 brake_ESC_left~%float32 brake_ESC_right~%~%control_msgs/WheelStateReport brake_wheel~%~%float32 brake_pedal~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%================================================================================~%MSG: control_msgs/ThrottleReport~%Header header~%float32 throttle~%control_msgs/EngineReport engine_status~%float32 throttle_pedal~%~%================================================================================~%MSG: control_msgs/EngineReport~%Header header~%float32 engine_rpm~%float32 engine_load~%~%================================================================================~%MSG: control_msgs/SpeedReport~%Header header~%~%control_msgs/WheelStateReport speed_wheel~%geometry_msgs/Twist velocity~%~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: control_msgs/HMIReport~%Header header~%~%bool manual_estop~%bool is_human_brake ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetECUReport)))
  "Returns full string definition for message of type 'GetECUReport"
  (cl:format cl:nil "Header header~%~%control_msgs/ModeReport mode~%~%control_msgs/SteerReport steer_cur~%~%control_msgs/GearReport shift_cur~%control_msgs/GearReport shift1_cur~%~%control_msgs/BrakeReport brake_cur~%control_msgs/ThrottleReport throttle_cur # include engine_status~%~%control_msgs/SpeedReport speed~%~%control_msgs/HMIReport manual~%~%float64 APU_U~%float64 APU_I~%float64 Battery_I~%float64 Battery_U~%float64 Power_demand~%float64 motor_I_L~%float64 motor_I_R~%float64 motor_Torque_L~%float64 motor_Torque_R~%float64 motor_U_L~%float64 motor_U_R~%float64 motor_n_now_L~%float64 motor_n_now_R~%float64 Gear_state_now_L~%float64 Gear_state_now_R~%float64 steer_degree_now~%float64 steer_direction_now~%float64 soc_now~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: control_msgs/ModeReport~%Header header~%~%int32 auto_mode~%~%int32 speed_mode~%bool throttle_enable~%bool brake_enable~%~%int32 steer_mode~%int32 gear_mode~%~%~%================================================================================~%MSG: control_msgs/SteerReport~%Header header~%float32 steer~%~%================================================================================~%MSG: control_msgs/GearReport~%Header header~%uint8 gear~%~%================================================================================~%MSG: control_msgs/BrakeReport~%Header header~%~%float32 brake_ESC_left~%float32 brake_ESC_right~%~%control_msgs/WheelStateReport brake_wheel~%~%float32 brake_pedal~%~%================================================================================~%MSG: control_msgs/WheelStateReport~%Header header~%~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%~%================================================================================~%MSG: control_msgs/ThrottleReport~%Header header~%float32 throttle~%control_msgs/EngineReport engine_status~%float32 throttle_pedal~%~%================================================================================~%MSG: control_msgs/EngineReport~%Header header~%float32 engine_rpm~%float32 engine_load~%~%================================================================================~%MSG: control_msgs/SpeedReport~%Header header~%~%control_msgs/WheelStateReport speed_wheel~%geometry_msgs/Twist velocity~%~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: control_msgs/HMIReport~%Header header~%~%bool manual_estop~%bool is_human_brake ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetECUReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steer_cur))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift_cur))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift1_cur))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_cur))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_cur))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'manual))
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
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetECUReport>))
  "Converts a ROS message object to a list"
  (cl:list 'GetECUReport
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':steer_cur (steer_cur msg))
    (cl:cons ':shift_cur (shift_cur msg))
    (cl:cons ':shift1_cur (shift1_cur msg))
    (cl:cons ':brake_cur (brake_cur msg))
    (cl:cons ':throttle_cur (throttle_cur msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':manual (manual msg))
    (cl:cons ':APU_U (APU_U msg))
    (cl:cons ':APU_I (APU_I msg))
    (cl:cons ':Battery_I (Battery_I msg))
    (cl:cons ':Battery_U (Battery_U msg))
    (cl:cons ':Power_demand (Power_demand msg))
    (cl:cons ':motor_I_L (motor_I_L msg))
    (cl:cons ':motor_I_R (motor_I_R msg))
    (cl:cons ':motor_Torque_L (motor_Torque_L msg))
    (cl:cons ':motor_Torque_R (motor_Torque_R msg))
    (cl:cons ':motor_U_L (motor_U_L msg))
    (cl:cons ':motor_U_R (motor_U_R msg))
    (cl:cons ':motor_n_now_L (motor_n_now_L msg))
    (cl:cons ':motor_n_now_R (motor_n_now_R msg))
    (cl:cons ':Gear_state_now_L (Gear_state_now_L msg))
    (cl:cons ':Gear_state_now_R (Gear_state_now_R msg))
    (cl:cons ':steer_degree_now (steer_degree_now msg))
    (cl:cons ':steer_direction_now (steer_direction_now msg))
    (cl:cons ':soc_now (soc_now msg))
))
