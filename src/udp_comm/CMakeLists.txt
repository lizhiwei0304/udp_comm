cmake_minimum_required(VERSION 2.8.3)
project(udp_comm)

set(CMAKE_CXX_FLAGS "-Wall -Wextra -std=c++11 ${CMAKE_CXX_FLAGS}")

## find ros packages and combine them with catkin
set(catkin_deps
        roscpp
	std_msgs
	nav_msgs
	geometry_msgs
	sensor_driver_msgs
	sensor_msgs
	plan2control_msgs
)
find_package(catkin REQUIRED COMPONENTS
        ${catkin_deps}
        )

## ros specific cmake command
catkin_package(
        INCLUDE_DIRS
        CATKIN_DEPENDS ${catkin_deps}
)

include_directories(
        ${catkin_INCLUDE_DIRS}
)

#####################################################################
####   add a ros node executable file
#####################################################################
add_executable(udp_comm
        src/udpcomm.cpp
        )
target_link_libraries(udp_comm
        ${catkin_LIBRARIES}
        ${IPOPT_LIBRARIES}
        ${LINKER_LIBS}
        )
