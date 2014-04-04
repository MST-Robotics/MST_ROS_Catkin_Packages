# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mst_estop: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imst_estop:/home/enterprise/enterprise_ws/src/mst_estop/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mst_estop_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Control_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_estop
)
_generate_msg_cpp(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Estop_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_estop
)

### Generating Services

### Generating Module File
_generate_module_cpp(mst_estop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_estop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mst_estop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mst_estop_generate_messages mst_estop_generate_messages_cpp)

# target for backward compatibility
add_custom_target(mst_estop_gencpp)
add_dependencies(mst_estop_gencpp mst_estop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_estop_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Control_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_estop
)
_generate_msg_lisp(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Estop_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_estop
)

### Generating Services

### Generating Module File
_generate_module_lisp(mst_estop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_estop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mst_estop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mst_estop_generate_messages mst_estop_generate_messages_lisp)

# target for backward compatibility
add_custom_target(mst_estop_genlisp)
add_dependencies(mst_estop_genlisp mst_estop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_estop_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Control_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop
)
_generate_msg_py(mst_estop
  "/home/enterprise/enterprise_ws/src/mst_estop/msg/Estop_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop
)

### Generating Services

### Generating Module File
_generate_module_py(mst_estop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mst_estop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mst_estop_generate_messages mst_estop_generate_messages_py)

# target for backward compatibility
add_custom_target(mst_estop_genpy)
add_dependencies(mst_estop_genpy mst_estop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_estop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_estop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_estop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mst_estop_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_estop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_estop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mst_estop_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_estop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mst_estop_generate_messages_py std_msgs_generate_messages_py)
