# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "plan2control_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iplan2control_msgs:/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(plan2control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_custom_target(_plan2control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plan2control_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_plan2control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plan2control_msgs" "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" "std_msgs/Header:geometry_msgs/Quaternion:plan2control_msgs/Traj_Node:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Twist"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plan2control_msgs
)
_generate_msg_cpp(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plan2control_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(plan2control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plan2control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(plan2control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(plan2control_msgs_generate_messages plan2control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_cpp _plan2control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_cpp _plan2control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plan2control_msgs_gencpp)
add_dependencies(plan2control_msgs_gencpp plan2control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plan2control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plan2control_msgs
)
_generate_msg_eus(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plan2control_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(plan2control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plan2control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(plan2control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(plan2control_msgs_generate_messages plan2control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_eus _plan2control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_eus _plan2control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plan2control_msgs_geneus)
add_dependencies(plan2control_msgs_geneus plan2control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plan2control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plan2control_msgs
)
_generate_msg_lisp(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plan2control_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(plan2control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plan2control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(plan2control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(plan2control_msgs_generate_messages plan2control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_lisp _plan2control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_lisp _plan2control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plan2control_msgs_genlisp)
add_dependencies(plan2control_msgs_genlisp plan2control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plan2control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plan2control_msgs
)
_generate_msg_nodejs(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plan2control_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(plan2control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plan2control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(plan2control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(plan2control_msgs_generate_messages plan2control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_nodejs _plan2control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_nodejs _plan2control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plan2control_msgs_gennodejs)
add_dependencies(plan2control_msgs_gennodejs plan2control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plan2control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs
)
_generate_msg_py(plan2control_msgs
  "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(plan2control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(plan2control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(plan2control_msgs_generate_messages plan2control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Traj_Node.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_py _plan2control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lizhiwei/Desktop/udp_comm/src/msgs/plan2control_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(plan2control_msgs_generate_messages_py _plan2control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plan2control_msgs_genpy)
add_dependencies(plan2control_msgs_genpy plan2control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plan2control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plan2control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plan2control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(plan2control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(plan2control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plan2control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plan2control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(plan2control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(plan2control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plan2control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plan2control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(plan2control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(plan2control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plan2control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plan2control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(plan2control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(plan2control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plan2control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(plan2control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(plan2control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
