
(cl:in-package :asdf)

(defsystem "mst_position-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "gps_to_pose" :depends-on ("_package_gps_to_pose"))
    (:file "_package_gps_to_pose" :depends-on ("_package"))
  ))