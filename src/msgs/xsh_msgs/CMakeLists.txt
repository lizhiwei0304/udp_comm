cmake_minimum_required(VERSION 2.8.3)
project(xsh_msgs)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED
        COMPONENTS
        message_generation
)

add_message_files(
        DIRECTORY
        msg
        FILES
        speed_plan.msg
)

generate_messages()

catkin_package(
        CATKIN_DEPENDS
        message_runtime
)
