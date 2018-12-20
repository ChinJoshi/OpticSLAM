#include <librealsense2/rs.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>

#define WIDTH 640
#define HEIGHT 480
#define FPS 60

int main(){

	//Contruct a pipeline which abstracts the device
	rs2::pipeline pipe;

	//Create a configuration for configuring the pipeline with a non default profile
	rs2::config cfg;

	//Add desired streams to configuration
	cfg.enable_stream(RS2_STREAM_INFRARED, 1, WIDTH, HEIGHT, RS2_FORMAT_Y8, FPS);
	cfg.enable_stream(RS2_STREAM_INFRARED, 2, WIDTH, HEIGHT, RS2_FORMAT_Y8, FPS);

	pipe.start(cfg);
	rs2::frameset frames;

	for(int i = 0; i<0; i++){
		frames = pipe.wait_for_frames();

		rs2::frame ir_frame_left = frames.get_infrared_frame(1);
		rs2::frame ir_frame_right = frames.get_infrared_frame(2);

		cv::Mat imLeft = cv::Mat(cv::Size(WIDTH, HEIGHT), CV_8UC1, (void*)ir_frame_left.get_data(), cv::Mat::AUTO_STEP);
		cv::Mat imRight = cv::Mat(cv::Size(WIDTH, HEIGHT), CV_8UC1, (void*)ir_frame_right.get_data(), cv::Mat::AUTO_STEP);
		
		cv::imshow("imLeft",imLeft);
		cv::imshow("imRight",imRight);
		cv::imwrite("./map_sequence/left/frame" + std::to_string(i) + ".png", imLeft);
		cv::imwrite("./map_sequence/right/frame" + std::to_string(i) + ".png", imRight);

		char c = cv::waitKey(1);

		if(c == 'q'){
			return 0;
		}
	}

}
