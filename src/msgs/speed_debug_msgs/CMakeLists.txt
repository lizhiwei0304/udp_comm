cmake_minimum_required(VERSION 2.8.3)
project(speed_debug_msgs)

find_package(catkin REQUIRED
        COMPONENTS
        message_generation
)

add_message_files(
        DIRECTORY
        msg
        FILES
        speed_debug.msg
        v.msg
        curv.msg
        speed_time.msg
        super_point.msg
        cur_steer.msg
        speed_issue.msg
)

generate_messages()

catkin_package(
        CATKIN_DEPENDS
        message_runtime
)