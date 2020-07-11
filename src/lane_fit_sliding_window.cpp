#include "lane_class.h"
#include "lane_fit_sliding_window.h"
#include <iostream>
#include <vector>

void get_fits_by_sliding_window(cv::Mat img, int n_window = 10)
{
    int img_size = img.cols;
    int half_size = img_size/2;

    cv::Mat left_img = img(cv::Rect(0,0,half_size,img_size));
    cv::Mat right_img = img(cv::Rect(half_size,0,half_size,img_size));

//    cv::namedWindow("left_lane");
//	cv::imshow("left_lane", left_img);
//   cv::waitKey();

    //left_img
    int *white_left_hist = new int[half_size];
    int *yellow_left_hist = new int[half_size];

    for(int i=0; i<half_size; i++)
    {
        white_left_hist[i] = 0;
        yellow_left_hist[i] = 0;
    }

    
    Lane left_lane;
    // 0 : white, 1 : yellow

	
    for(int i=0; i< half_size; i++)
    {
        for(int j=0; j< img_size; j++)
        {
            if(left_img.at<uchar>(j,i) == 255)
            {
                yellow_left_hist[i]++;
            }
            else if(left_img.at<uchar>(j,i) == 128)
            {
                white_left_hist[i]++;
            }
        }
    }

//    for(int i=0; i< half_size; i++)
//    {
//        std::cout<<yellow_left_hist[i]<<" "<< white_left_hist[i]<<std::endl;
//    }

//	cv::namedWindow("left_lane");
//	cv::imshow("left_lane", left_img);

    int left_xbase;

//  std::cout<<hist_sum(yellow_left_hist, half_size)<<" "<<hist_sum(white_left_hist, half_size)<<std::endl;

    if(hist_sum(yellow_left_hist, half_size)>hist_sum(white_left_hist, half_size))
    {
        left_lane.set_color(1);
        left_xbase = return_xbase(yellow_left_hist, half_size);
    //    std::cout<<"yellow"<<std::endl;
    }
    else
    {   
        left_lane.set_color(0);
        left_xbase = return_xbase(white_left_hist, half_size);
    //    std::cout<<"white"<<std::endl;
    }

    int window_x_min, window_x_max;
    int window_y_min, window_y_max;
    int window_x_size, window_y_size;

    window_x_size = 8;
    window_y_size = img_size/n_window;

    cv::Mat left_temp_img = left_img.clone();
    //cv::namedWindow("left_lane");
	//cv::imshow("left_lane", left_temp_img);
    //cv::waitKey();

    //std::cout<<left_xbase<<std::endl;
    //std::cout<< window_x_size << " "<<window_y_size<<std::endl;

    for(int iter = 0; iter < n_window; iter++)
    {
        window_x_min = left_xbase - ((3*window_x_size)/2);
        window_x_max = left_xbase + ((3*window_x_size)/2);
        window_y_min = img_size - iter*window_y_size;
        window_y_max = img_size - (iter+1)*window_y_size;
        cv::rectangle(left_temp_img, cv::Rect(window_x_min, window_y_min, window_x_size, window_y_size), 50, 2);
        imshow("left_temp_img",left_temp_img);
        left_temp_img = left_img.clone();
        cv::waitKey();

        for(int i = window_x_min; i < window_x_max; i++)
        {
            for(int j = window_y_min; j<window_y_max; j++)
            {
            }
        }
    }

    //right_img

    delete []white_left_hist;
    delete []yellow_left_hist;
}

int hist_sum(int *array, int size)
{
    int sum = 0;
    for(int i=0; i<size; i++)
    {
        sum+=array[i];
    }
    return sum;
}

int return_xbase(int *array, int size)
{
    int i, xbase = 0;

    for(i=0; i<size; i++)
    {
        if(array[xbase]<array[i])
        {
            xbase = i;
        }
    }
    return xbase;
}