# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "speed_ctrl_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ispeed_ctrl_msgs:/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(speed_ctrl_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_custom_target(_speed_ctrl_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_ctrl_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(speed_ctrl_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_ctrl_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(speed_ctrl_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_ctrl_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(speed_ctrl_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(speed_ctrl_msgs_generate_messages speed_ctrl_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_dependencies(speed_ctrl_msgs_generate_messages_cpp _speed_ctrl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_ctrl_msgs_gencpp)
add_dependencies(speed_ctrl_msgs_gencpp speed_ctrl_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_ctrl_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(speed_ctrl_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_ctrl_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(speed_ctrl_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_ctrl_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(speed_ctrl_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(speed_ctrl_msgs_generate_messages speed_ctrl_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_dependencies(speed_ctrl_msgs_generate_messages_eus _speed_ctrl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_ctrl_msgs_geneus)
add_dependencies(speed_ctrl_msgs_geneus speed_ctrl_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_ctrl_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(speed_ctrl_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_ctrl_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(speed_ctrl_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_ctrl_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(speed_ctrl_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(speed_ctrl_msgs_generate_messages speed_ctrl_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_dependencies(speed_ctrl_msgs_generate_messages_lisp _speed_ctrl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_ctrl_msgs_genlisp)
add_dependencies(speed_ctrl_msgs_genlisp speed_ctrl_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_ctrl_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(speed_ctrl_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_ctrl_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(speed_ctrl_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_ctrl_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(speed_ctrl_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(speed_ctrl_msgs_generate_messages speed_ctrl_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_dependencies(speed_ctrl_msgs_generate_messages_nodejs _speed_ctrl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_ctrl_msgs_gennodejs)
add_dependencies(speed_ctrl_msgs_gennodejs speed_ctrl_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_ctrl_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(speed_ctrl_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_ctrl_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(speed_ctrl_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_ctrl_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(speed_ctrl_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(speed_ctrl_msgs_generate_messages speed_ctrl_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_ctrl_msgs/msg/speed_ctrl.msg" NAME_WE)
add_dependencies(speed_ctrl_msgs_generate_messages_py _speed_ctrl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_ctrl_msgs_genpy)
add_dependencies(speed_ctrl_msgs_genpy speed_ctrl_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_ctrl_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_ctrl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_ctrl_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_ctrl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_ctrl_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_ctrl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_ctrl_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_ctrl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_ctrl_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_ctrl_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_ctrl_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_ctrl_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
