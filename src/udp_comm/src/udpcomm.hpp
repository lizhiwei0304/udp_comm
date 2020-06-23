//
// Created by  on 20-06-22.
//

#ifndef UDPCOMM_HPP
#define UDPCOMM_HPP

#include <ros/ros.h>
#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstring>
#include <arpa/inet.h>
#include <queue>
#include <chrono>
#include <string>
#include <vector>

#include "std_msgs/Float32.h"
#include "std_msgs/Bool.h"
#include "nav_msgs/Path.h"
#include "std_msgs/Float32.h"
#include <geometry_msgs/Point.h>
#include "sensor_driver_msgs/GpswithHeading.h"
#include "sensor_msgs/NavSatFix.h"
#include "plan2control_msgs/Traj_Node.h"
#include "plan2control_msgs/Trajectory.h"

using namespace std;

namespace udp_comm {
    struct VehicleState {
        geometry_msgs::Point pose;
    };


    class udp_comm {
    public:
        udp_comm(const ros::NodeHandle &nh, const ros::NodeHandle &nh_private,
                 std::string node_name);

        // ros
        ros::NodeHandle nh_;
        ros::NodeHandle nh_private_;
        ros::Timer loop_timer_;
        std::string node_name_{"udp_node"};

        ros::Subscriber path_sub, pose_sub;

        ros::WallTime last_timestamp_for_path_received;
        ros::WallTime last_timestamp_for_pose_received;


        VehicleState vehicle_state;
        VehicleState vehicle_point;

        std::vector<plan2control_msgs::Traj_Node> global_path;
        plan2control_msgs::Trajectory trajectory;

        //// UDP Settings
        /* local address and port */
        int CarNetSocket;
        sockaddr_in addr_local;
        int local_port;

        /* remote address and port */
        sockaddr_in addr_remote, addr_car;
        socklen_t addr_remote_len; //// do not forget to init the 'addr_remote_len'
        std::string remote_ip, car_ip;
        int remote_port, car_port;

        void initialize();

        void callbackFromWayPointssim(const nav_msgs::Path msg);

        void callbackVehiclePose(const sensor_driver_msgs::GpswithHeading msg);

        void timerCb();

        bool initSocket(void);

        void sendmsgs();

        void recvfrom();

        std::string traj_topic_;

        std::string map_frame_id_normal_;

	std::string gps_topic_;

        double state_elapse_time_;
        double path_elapse_time_;
        double pose_elapse_time_;


    };
}//namespace udp_comm

#endif //UDPCOMM_HPP


