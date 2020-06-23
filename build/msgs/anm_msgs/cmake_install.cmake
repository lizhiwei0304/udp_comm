# Install script for directory: /home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/anm_msgs/msg" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/CommandCheckingReport.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/DynamicObstacle.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/DynamicObstacleList.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/HMIReport.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/NearestAnmWaypoint.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/PathState.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/ShuttleRequest.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/SpiralPath.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/SystemState.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XStopSign.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XStopSignList.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XTrafficLight.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XTrafficLightList.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XVehicle.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/V2XVehicleList.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/msg/VehicleState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/anm_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/anm_msgs/catkin_generated/installspace/anm_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/include/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/roseus/ros/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/common-lisp/ros/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/gennodejs/ros/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/anm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/anm_msgs/catkin_generated/installspace/anm_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/anm_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/anm_msgs/catkin_generated/installspace/anm_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/anm_msgs/cmake" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/anm_msgs/catkin_generated/installspace/anm_msgsConfig.cmake"
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/anm_msgs/catkin_generated/installspace/anm_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/anm_msgs" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/src/msgs/anm_msgs/package.xml")
endif()

