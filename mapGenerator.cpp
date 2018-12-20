#include <iostream>
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <chrono>
#include <opencv2/core/core.hpp>
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

	cv::FileStorage fsSettings(strCamSet, cv::FileStorage::READ);

	if (!fsSettings.isOpened ()) {
		std::cerr << "ERROR: Wrong path to settings" << std::endl;
		return -1;
	}

	ORB_SLAM2::System SLAM(strORBvoc, strCamSet, ORB_SLAM2::System::STEREO, true, bReuseMap, strMapPath);

	cv::Mat imLeft, imRight;

	for (int i = 0; i<0; i++) {

		imLeft = cv::imread("./map_sequence/left/frame" + std::to_string(i) + ".png", CV_LOAD_IMAGE_UNCHANGED);
		imRight = cv::imread("./map_sequence/right/frame" + std::to_string(i) + ".png", CV_LOAD_IMAGE_UNCHANGED);

		cv::Mat tcw = SLAM.TrackStereo(imLeft, imRight, 0);
		
		cv::imshow("imLeft",imLeft);
		cv::imshow("imRight",imRight);
		
		char c = cv::waitKey(1);
		if (c == 'q'){
			SLAM.Shutdown();
			return 0;
		}
	}

}
