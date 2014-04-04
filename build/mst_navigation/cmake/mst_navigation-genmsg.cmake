# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "mst_navigation: 0 messages, 0 services")

set(MSG_I_FLAGS "-Imst_position:/home/enterprise/enterprise_ws/src/mst_position/msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/hydro/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mst_navigation_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(mst_navigation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_navigation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mst_navigation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mst_navigation_generate_messages mst_navigation_generate_messages_cpp)

# target for backward compatibility
add_custom_target(mst_navigation_gencpp)
add_dependencies(mst_navigation_gencpp mst_navigation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_navigation_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(mst_navigation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_navigation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mst_navigation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mst_navigation_generate_messages mst_navigation_generate_messages_lisp)

# target for backward compatibility
add_custom_target(mst_navigation_genlisp)
add_dependencies(mst_navigation_genlisp mst_navigation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_navigation_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(mst_navigation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_navigation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mst_navigation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mst_navigation_generate_messages mst_navigation_generate_messages_py)

# target for backward compatibility
add_custom_target(mst_navigation_genpy)
add_dependencies(mst_navigation_genpy mst_navigation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mst_navigation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mst_navigation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mst_navigation_generate_messages_cpp mst_position_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mst_navigation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mst_navigation_generate_messages_lisp mst_position_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_navigation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_navigation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mst_navigation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mst_navigation_generate_messages_py mst_position_generate_messages_py)
