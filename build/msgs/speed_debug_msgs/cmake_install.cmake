# Install script for directory: /home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lizhiwei/Desktop/udp_comm/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speed_debug_msgs/msg" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_debug.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/v.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/curv.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_time.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/super_point.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/cur_steer.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/msg/speed_issue.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speed_debug_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/speed_debug_msgs/catkin_generated/installspace/speed_debug_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/include/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/roseus/ros/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/common-lisp/ros/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/gennodejs/ros/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/speed_debug_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/speed_debug_msgs/catkin_generated/installspace/speed_debug_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speed_debug_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/speed_debug_msgs/catkin_generated/installspace/speed_debug_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speed_debug_msgs/cmake" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/speed_debug_msgs/catkin_generated/installspace/speed_debug_msgsConfig.cmake"
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/speed_debug_msgs/catkin_generated/installspace/speed_debug_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speed_debug_msgs" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/src/msgs/speed_debug_msgs/package.xml")
endif()

