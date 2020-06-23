#include "udpcomm.hpp"

namespace udp_comm {
    udp_comm::udp_comm(const ros::NodeHandle &nh, const ros::NodeHandle &nh_private, std::string node_name){

        initialize();
    }

    void udp_comm::callbackVehiclePose(const sensor_driver_msgs::GpswithHeading msg){

        vehicle_state.pose.x = msg.gps.longitude;
        vehicle_state.pose.y = msg.gps.latitude;

        last_timestamp_for_pose_received = ros::WallTime::now();
        ROS_INFO("Get Pose Data: pose.x=%f, pose.y=%f, pose.z=%f",
                 vehicle_state.pose.x, vehicle_state.pose.y, vehicle_state.pose.z);
    }


    void udp_comm::callbackFromWayPointssim(const nav_msgs::Path msg){
        if (msg.header.frame_id == "map") {
            trajectory.points.clear();
            for (auto it : msg.poses) {
                plan2control_msgs::Traj_Node tmp;
                tmp.position = it.pose.position;
                trajectory.points.push_back(tmp);
            }
            global_path = trajectory.points;
            last_timestamp_for_path_received = ros::WallTime::now();
            //rviz_frame = msg.header.frame_id;
        } else {
            ROS_WARN("wrong");
        }
    }


    bool udp_comm::initSocket() {

        this->addr_remote_len = sizeof(this->addr_local);

        //// create a socket
        this->CarNetSocket = socket(AF_INET, SOCK_DGRAM, 0);
        if (this->CarNetSocket < 0) {
            perror("create CarNetSocket failed!\n");
            return false;
        }
        else {
            std::cout << "create CarNetSocket succeed!" << std::endl;
        }
        //// set the local address
        memset((char *) &addr_local, 0, sizeof(addr_local));
        this->addr_local.sin_addr.s_addr = htonl(INADDR_ANY);
        this->addr_local.sin_family = AF_INET;
        this->addr_local.sin_port = htons(local_port);

        //// bind the socket with local address
        if (bind(CarNetSocket, (sockaddr *) &addr_local, sizeof(sockaddr)) < 0) {
            perror("bind the CarNetSocket failed!");
            return false;
        }
        else {
            std::cout << "bind the CarNetSocket succeed!" << std::endl;
            std::cout << "Local Port : " << this->local_port << std::endl;
        }
        //// set the remote address
        memset(&addr_remote, 0, sizeof(addr_remote));
        this->addr_remote.sin_addr.s_addr = inet_addr(remote_ip.c_str());
        this->addr_remote.sin_family = AF_INET;
        this->addr_remote.sin_port = htons(remote_port);

        std::cout << "Remote IP  : " << this->remote_ip.c_str() << std::endl;
        std::cout << "Remote Port: " << this->remote_port << std::endl;

        return true;
    }

    void udp_comm::sendmsgs() {
        ///因为循环周期从原来的0.02s改为0.01s，所以隔一次发送。
        ROS_INFO("sending messages");
    vector<double>a(2);


    }

    void udp_comm::initialize() {
        local_port = 8001;

        remote_ip = "192.168.0.178";
        remote_port = 4001;

        vehicle_state.pose.x = 1;
        vehicle_state.pose.y = 2;


        initSocket();

        path_sub = nh_.subscribe(traj_topic_, 1, &udp_comm::callbackFromWayPointssim, this);

        pose_sub = nh_.subscribe(gps_topic_, 1, &udp_comm::callbackVehiclePose, this);

        loop_timer_ = nh_.createTimer(ros::Duration(0.02), boost::bind(&udp_comm::timerCb, this));

    }

    void udp_comm::timerCb() {
        ROS_INFO_ONCE("udp commucation start");
        sendmsgs();
        recvfrom();
    }
    
    void udp_comm::recvfrom(){
	ROS_INFO("recvive messages");
}
//namespace carnet
}
    int main(int argc, char **argv) {
        std::string node_name = "udp_comm";
        ros::init(argc, argv, node_name);
        ros::NodeHandle nh("");
        ros::NodeHandle nh_private("~");
        udp_comm::udp_comm sender(nh, nh_private, node_name);
        ROS_INFO("Initialized sender node.");
        ros::spin();
    }
