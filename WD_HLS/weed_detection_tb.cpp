#include "headers.h"
#include "weed_detection.h"

int main(int argc, char** argv)
{

	cv::Mat in_img,in_img1, ocv_ref, diff;
	cv::Mat temp, th;

	// reading in the color image
	in_img = cv::imread("fox.bmp");

	if (in_img.data == NULL)
	{
		fprintf(stderr,"Cannot open image\n");
		return 0;
	}

	uint16_t height = in_img.rows;
	uint16_t width = in_img.cols;

	// create memory for output images
	ocv_ref.create(height, width,CV_8UC3);
	temp.create(height, width,CV_8UC1);
	diff.create(height, width,CV_8UC1);
	in_img1.create(height, width,CV_8UC3);

	///////////////// 	Opencv  Reference  ////////////////////////
	cv::cvtColor(in_img, temp, cv::COLOR_RGB2GRAY);
	cv::threshold(temp, th, 0, 255, cv::THRESH_BINARY+cv::THRESH_OTSU);
	cv::cvtColor(th, ocv_ref, cv::COLOR_GRAY2RGB);

	cv::imwrite("out_ocv.jpg", ocv_ref);


	///////////////// 	HLS Reference  ////////////////////////
	stream_t _src,_dst;

	cvMat2AXIvideoxf<NPC1>(in_img, _src);
	ip_accel_app(_src, _dst);
	AXIvideo2cvMatxf<NPC1>(_dst, in_img1);

	cv::imwrite("hls.jpg", in_img1);


	//////////////////  Compute Absolute Difference ////////////////////

	cv::absdiff(ocv_ref, in_img1, diff);
	cv::imwrite("out_error.jpg", diff);

	int cnt = 0;
	for (int i=0; i<height; i++)
		for(int j=0; j<width; j++){
			uchar v = diff.at<uchar>(i,j);
			if (v>0)
				cnt++;
		}

	float err_per = 100.0*(float)(cnt/(height*width));
	fprintf(stderr,"Percentage of pixels above error threshold = %f\n",err_per);

	if(err_per > 0.05f)
		return 1;
	return 0;

}
