#include <iostream>
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <chrono>
#include <opencv2/core/core.hpp>
#include <librealsense2/rs.hpp>
#include <opencv2/opencv.hpp>
#include <System.h>

#define WIDTH 640
#define HEIGHT 480
#define FPS 60

int main() {
	const string & strSettingPath = "realsense_settings.yaml";
	cv::FileStorage fSettings(strSettingPath, cv::FileStorage::READ);

	if (!fSettings.isOpened()) {
		std::cerr << "Failed to open setting file at: " << strSettingPath << std::endl;
		exit (-1);
	}

	//get param from setting File
	const std::string strORBvoc = fSettings["Path_Orb_Vocabulary"];
	const std::string strCamSet = fSettings["Path_Cam_Setting"];
	int ReuseMap = fSettings["is_ReuseMap"];
	const string strMapPath = fSettings["Path_ReuseMap"];

	bool bReuseMap = false;
	if (ReuseMap == 1) {
		bReuseMap = true;
	}

	cv::FileStorage fsSettings(strCamSet, cv::FileStorage::READ);

	if (!fsSettings.isOpened ()) {
		std::cerr << "ERROR: Wrong path to settings" << std::endl;
		return -1;
	}

	ORB_SLAM2::System SLAM(strORBvoc, strCamSet, ORB_SLAM2::System::STEREO, true, bReuseMap, strMapPath);

	//Contruct a pipeline which abstracts the device
	rs2::pipeline pipe;

	//Create a configuration for configuring the pipeline with a non default profile
	rs2::config cfg;

	//Add desired streams to configuration
	cfg.enable_stream(RS2_STREAM_INFRARED, 1, WIDTH, HEIGHT, RS2_FORMAT_Y8, FPS);
	cfg.enable_stream(RS2_STREAM_INFRARED, 2, WIDTH, HEIGHT, RS2_FORMAT_Y8, FPS);

	pipe.start(cfg);
	rs2::frameset frames;

	// Main loop
	cv::Mat imLeft, imRight, imLeftRect, imRightRect;

	for (int i = 0; i<0; i++) {

		frames = pipe.wait_for_frames();

		rs2::frame ir_frame_left = frames.get_infrared_frame(1);
		rs2::frame ir_frame_right = frames.get_infrared_frame(2);

		imLeft = cv::Mat(cv::Size(WIDTH, HEIGHT), CV_8UC1, (void*)ir_frame_left.get_data(), cv::Mat::AUTO_STEP);
		imRight = cv::Mat(cv::Size(WIDTH, HEIGHT), CV_8UC1, (void*)ir_frame_right.get_data(), cv::Mat::AUTO_STEP);

		cv::Mat tcw = SLAM.TrackStereo(imLeft, imRight, i);
		
		cv::imshow("imLeft",imLeft);
		cv::imshow("imRight",imRight);
		
		char c = cv::waitKey(1);
		if (c == 'q'){
			SLAM.Shutdown();
			return 0;
		}
	}

}
