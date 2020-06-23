# Install script for directory: /home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs/msg" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/SubmapList.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/SubmapEntry.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/SensorTopics.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/TrajectoryOptions.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/TraversableArea.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/insertion_submaps.msg"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/msg/SubmapIndex.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs/srv" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/SubmapQuery.srv"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/FinishTrajectory.srv"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/StartTrajectory.srv"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/WriteState.srv"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/OptimizationImu.srv"
    "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/srv/OptimizationInsertResult.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/iv_slam_ros_msgs/catkin_generated/installspace/iv_slam_ros_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/include/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/roseus/ros/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/common-lisp/ros/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/share/gennodejs/ros/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lizhiwei/Desktop/udp_comm/devel/lib/python2.7/dist-packages/iv_slam_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/iv_slam_ros_msgs/catkin_generated/installspace/iv_slam_ros_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs/cmake" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/build/msgs/iv_slam_ros_msgs/catkin_generated/installspace/iv_slam_ros_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs/cmake" TYPE FILE FILES
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/iv_slam_ros_msgs/catkin_generated/installspace/iv_slam_ros_msgsConfig.cmake"
    "/home/lizhiwei/Desktop/udp_comm/build/msgs/iv_slam_ros_msgs/catkin_generated/installspace/iv_slam_ros_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iv_slam_ros_msgs" TYPE FILE FILES "/home/lizhiwei/Desktop/udp_comm/src/msgs/iv_slam_ros_msgs/package.xml")
endif()

