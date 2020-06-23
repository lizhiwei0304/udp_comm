# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xsh_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ixsh_msgs:/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xsh_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_custom_target(_xsh_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xsh_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xsh_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xsh_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(xsh_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xsh_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xsh_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xsh_msgs_generate_messages xsh_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_dependencies(xsh_msgs_generate_messages_cpp _xsh_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xsh_msgs_gencpp)
add_dependencies(xsh_msgs_gencpp xsh_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xsh_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xsh_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xsh_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(xsh_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xsh_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xsh_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xsh_msgs_generate_messages xsh_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_dependencies(xsh_msgs_generate_messages_eus _xsh_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xsh_msgs_geneus)
add_dependencies(xsh_msgs_geneus xsh_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xsh_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xsh_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xsh_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(xsh_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xsh_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xsh_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xsh_msgs_generate_messages xsh_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_dependencies(xsh_msgs_generate_messages_lisp _xsh_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xsh_msgs_genlisp)
add_dependencies(xsh_msgs_genlisp xsh_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xsh_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xsh_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xsh_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xsh_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xsh_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xsh_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xsh_msgs_generate_messages xsh_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_dependencies(xsh_msgs_generate_messages_nodejs _xsh_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xsh_msgs_gennodejs)
add_dependencies(xsh_msgs_gennodejs xsh_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xsh_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xsh_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xsh_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(xsh_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xsh_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xsh_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xsh_msgs_generate_messages xsh_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/xsh_msgs/msg/speed_plan.msg" NAME_WE)
add_dependencies(xsh_msgs_generate_messages_py _xsh_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xsh_msgs_genpy)
add_dependencies(xsh_msgs_genpy xsh_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xsh_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xsh_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xsh_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xsh_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xsh_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xsh_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xsh_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xsh_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xsh_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xsh_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xsh_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xsh_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
