#ifndef LANE_FIT_SLIDING_WINDOW
#define LANE_FIT_SLIDING_WINDOW

#include "opencv2/opencv.hpp"

int return_xbase(int *array, int size);
void get_fits_by_sliding_window(cv::Mat img, int n_window);
int hist_sum(int *array, int size);

#endif