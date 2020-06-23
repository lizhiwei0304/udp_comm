
cmake_minimum_required(VERSION 2.8.3)

project(extractroad_msg)

set(PACKAGE_DEPENDENCIES
  geometry_msgs
  sensor_msgs
nav_msgs
)

find_package(catkin REQUIRED COMPONENTS message_generation ${PACKAGE_DEPENDENCIES})

add_message_files(
  FILES
	extractroad.msg
)



generate_messages(
  DEPENDENCIES
    geometry_msgs
    sensor_msgs
nav_msgs
)

catkin_package(
  CATKIN_DEPENDS
    ${PACKAGE_DEPENDENCIES}
)
