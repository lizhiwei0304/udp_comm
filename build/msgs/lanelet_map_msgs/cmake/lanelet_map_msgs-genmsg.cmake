# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lanelet_map_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ilanelet_map_msgs:/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lanelet_map_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_custom_target(_lanelet_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lanelet_map_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" "geometry_msgs/Point:lanelet_map_msgs/Node"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_custom_target(_lanelet_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lanelet_map_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_custom_target(_lanelet_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lanelet_map_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" "lanelet_map_msgs/Way:geometry_msgs/Point:lanelet_map_msgs/Node"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_custom_target(_lanelet_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lanelet_map_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" "lanelet_map_msgs/Way:lanelet_map_msgs/Regulatory:geometry_msgs/Point:lanelet_map_msgs/Node"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_custom_target(_lanelet_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lanelet_map_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" "lanelet_map_msgs/Lanelet:std_msgs/Header:geometry_msgs/Point:lanelet_map_msgs/Regulatory:lanelet_map_msgs/Way:lanelet_map_msgs/Node"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_cpp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_cpp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_cpp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_cpp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(lanelet_map_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lanelet_map_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lanelet_map_msgs_generate_messages lanelet_map_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_cpp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_cpp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_cpp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_cpp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_cpp _lanelet_map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lanelet_map_msgs_gencpp)
add_dependencies(lanelet_map_msgs_gencpp lanelet_map_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lanelet_map_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_eus(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_eus(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_eus(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_eus(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(lanelet_map_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lanelet_map_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lanelet_map_msgs_generate_messages lanelet_map_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_eus _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_eus _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_eus _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_eus _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_eus _lanelet_map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lanelet_map_msgs_geneus)
add_dependencies(lanelet_map_msgs_geneus lanelet_map_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lanelet_map_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_lisp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_lisp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_lisp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_lisp(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(lanelet_map_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lanelet_map_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lanelet_map_msgs_generate_messages lanelet_map_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_lisp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_lisp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_lisp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_lisp _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_lisp _lanelet_map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lanelet_map_msgs_genlisp)
add_dependencies(lanelet_map_msgs_genlisp lanelet_map_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lanelet_map_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_nodejs(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_nodejs(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_nodejs(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_nodejs(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lanelet_map_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lanelet_map_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lanelet_map_msgs_generate_messages lanelet_map_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_nodejs _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_nodejs _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_nodejs _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_nodejs _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_nodejs _lanelet_map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lanelet_map_msgs_gennodejs)
add_dependencies(lanelet_map_msgs_gennodejs lanelet_map_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lanelet_map_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_py(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_py(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_py(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
)
_generate_msg_py(lanelet_map_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(lanelet_map_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lanelet_map_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lanelet_map_msgs_generate_messages lanelet_map_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Way.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_py _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Node.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_py _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Regulatory.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_py _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/Lanelet.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_py _lanelet_map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/lanelet_map_msgs/msg/LaneletMap.msg" NAME_WE)
add_dependencies(lanelet_map_msgs_generate_messages_py _lanelet_map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lanelet_map_msgs_genpy)
add_dependencies(lanelet_map_msgs_genpy lanelet_map_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lanelet_map_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lanelet_map_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lanelet_map_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lanelet_map_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lanelet_map_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lanelet_map_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lanelet_map_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lanelet_map_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lanelet_map_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lanelet_map_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lanelet_map_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lanelet_map_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lanelet_map_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lanelet_map_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lanelet_map_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lanelet_map_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
