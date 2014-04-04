; Auto-generated. Do not edit!


(cl:in-package mst_position-srv)


;//! \htmlinclude gps_to_pose-request.msg.html

(cl:defclass <gps_to_pose-request> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass gps_to_pose-request (<gps_to_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_to_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_to_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mst_position-srv:<gps_to_pose-request> is deprecated: use mst_position-srv:gps_to_pose-request instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <gps_to_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-srv:latitude-val is deprecated.  Use mst_position-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <gps_to_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-srv:longitude-val is deprecated.  Use mst_position-srv:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_to_pose-request>) ostream)
  "Serializes a message object of type '<gps_to_pose-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_to_pose-request>) istream)
  "Deserializes a message object of type '<gps_to_pose-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_to_pose-request>)))
  "Returns string type for a service object of type '<gps_to_pose-request>"
  "mst_position/gps_to_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_to_pose-request)))
  "Returns string type for a service object of type 'gps_to_pose-request"
  "mst_position/gps_to_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_to_pose-request>)))
  "Returns md5sum for a message object of type '<gps_to_pose-request>"
  "f74ca49185df14e33a0275379d37e62c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_to_pose-request)))
  "Returns md5sum for a message object of type 'gps_to_pose-request"
  "f74ca49185df14e33a0275379d37e62c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_to_pose-request>)))
  "Returns full string definition for message of type '<gps_to_pose-request>"
  (cl:format cl:nil "float64                         latitude~%float64                         longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_to_pose-request)))
  "Returns full string definition for message of type 'gps_to_pose-request"
  (cl:format cl:nil "float64                         latitude~%float64                         longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_to_pose-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_to_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_to_pose-request
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
;//! \htmlinclude gps_to_pose-response.msg.html

(cl:defclass <gps_to_pose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass gps_to_pose-response (<gps_to_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_to_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_to_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mst_position-srv:<gps_to_pose-response> is deprecated: use mst_position-srv:gps_to_pose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <gps_to_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mst_position-srv:pose-val is deprecated.  Use mst_position-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_to_pose-response>) ostream)
  "Serializes a message object of type '<gps_to_pose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_to_pose-response>) istream)
  "Deserializes a message object of type '<gps_to_pose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_to_pose-response>)))
  "Returns string type for a service object of type '<gps_to_pose-response>"
  "mst_position/gps_to_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_to_pose-response)))
  "Returns string type for a service object of type 'gps_to_pose-response"
  "mst_position/gps_to_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_to_pose-response>)))
  "Returns md5sum for a message object of type '<gps_to_pose-response>"
  "f74ca49185df14e33a0275379d37e62c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_to_pose-response)))
  "Returns md5sum for a message object of type 'gps_to_pose-response"
  "f74ca49185df14e33a0275379d37e62c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_to_pose-response>)))
  "Returns full string definition for message of type '<gps_to_pose-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped      pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_to_pose-response)))
  "Returns full string definition for message of type 'gps_to_pose-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped      pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_to_pose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_to_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_to_pose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gps_to_pose)))
  'gps_to_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gps_to_pose)))
  'gps_to_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_to_pose)))
  "Returns string type for a service object of type '<gps_to_pose>"
  "mst_position/gps_to_pose")