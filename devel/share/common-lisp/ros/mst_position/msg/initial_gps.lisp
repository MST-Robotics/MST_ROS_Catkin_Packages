; Auto-generated. Do not edit!


(cl:in-package mst_position-msg)


;//! \htmlinclude initial_gps.msg.html

(cl:defclass <initial_gps> (roslisp-msg-protocol:ros-message)
  ((target_heading
    :reader target_heading
    :initarg :target_heading
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (waypoint
    :reader waypoint
    :initarg :waypoint
    :type cl:float
    :initform 0.0))
)

(cl:defclass initial_gps (<initial_gps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initial_gps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initial_gps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mst_position-msg:<initial_gps> is deprecated: use mst_position-msg:initial_gps instead.")))

(cl:ensure-generic-function 'target_heading-val :lambda-list '(m))
(cl:defmethod target_heading-val ((m <initial_gps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-msg:target_heading-val is deprecated.  Use mst_position-msg:target_heading instead.")
  (target_heading m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <initial_gps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-msg:distance-val is deprecated.  Use mst_position-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <initial_gps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-msg:waypoint-val is deprecated.  Use mst_position-msg:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initial_gps>) ostream)
  "Serializes a message object of type '<initial_gps>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initial_gps>) istream)
  "Deserializes a message object of type '<initial_gps>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'waypoint) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initial_gps>)))
  "Returns string type for a message object of type '<initial_gps>"
  "mst_position/initial_gps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initial_gps)))
  "Returns string type for a message object of type 'initial_gps"
  "mst_position/initial_gps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initial_gps>)))
  "Returns md5sum for a message object of type '<initial_gps>"
  "ba0fbfca81c6cac39788bbb65f584f05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initial_gps)))
  "Returns md5sum for a message object of type 'initial_gps"
  "ba0fbfca81c6cac39788bbb65f584f05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initial_gps>)))
  "Returns full string definition for message of type '<initial_gps>"
  (cl:format cl:nil "float64     target_heading~%float64     distance~%float64     waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initial_gps)))
  "Returns full string definition for message of type 'initial_gps"
  (cl:format cl:nil "float64     target_heading~%float64     distance~%float64     waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initial_gps>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initial_gps>))
  "Converts a ROS message object to a list"
  (cl:list 'initial_gps
    (cl:cons ':target_heading (target_heading msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':waypoint (waypoint msg))
))
