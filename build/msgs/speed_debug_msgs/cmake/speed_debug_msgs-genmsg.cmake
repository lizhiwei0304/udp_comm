# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "speed_debug_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ispeed_debug_msgs:/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(speed_debug_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" ""
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" ""
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" ""
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" ""
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" ""
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" "speed_debug_msgs/curv:speed_debug_msgs/v:speed_debug_msgs/super_point:speed_debug_msgs/speed_time:speed_debug_msgs/speed_issue:speed_debug_msgs/cur_steer"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_custom_target(_speed_debug_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "speed_debug_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" "speed_debug_msgs/curv:speed_debug_msgs/v:speed_debug_msgs/speed_time"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_cpp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(speed_debug_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(speed_debug_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(speed_debug_msgs_generate_messages speed_debug_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_cpp _speed_debug_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_debug_msgs_gencpp)
add_dependencies(speed_debug_msgs_gencpp speed_debug_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_debug_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_eus(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(speed_debug_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(speed_debug_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(speed_debug_msgs_generate_messages speed_debug_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_eus _speed_debug_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_debug_msgs_geneus)
add_dependencies(speed_debug_msgs_geneus speed_debug_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_debug_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_lisp(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(speed_debug_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(speed_debug_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(speed_debug_msgs_generate_messages speed_debug_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_lisp _speed_debug_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_debug_msgs_genlisp)
add_dependencies(speed_debug_msgs_genlisp speed_debug_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_debug_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_nodejs(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(speed_debug_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(speed_debug_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(speed_debug_msgs_generate_messages speed_debug_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_nodejs _speed_debug_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_debug_msgs_gennodejs)
add_dependencies(speed_debug_msgs_gennodejs speed_debug_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_debug_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)
_generate_msg_py(speed_debug_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(speed_debug_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(speed_debug_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(speed_debug_msgs_generate_messages speed_debug_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg" NAME_WE)
add_dependencies(speed_debug_msgs_generate_messages_py _speed_debug_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(speed_debug_msgs_genpy)
add_dependencies(speed_debug_msgs_genpy speed_debug_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS speed_debug_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/speed_debug_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/speed_debug_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/speed_debug_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/speed_debug_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/speed_debug_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
