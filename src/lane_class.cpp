#include "opencv2/opencv.hpp"
#include "lane_class.h"
#include <vector>

using namespace std;

Lane::Lane()
{
    for(int i=0; i<3; i++)
    {
        coeff[i] = 0;
    }
    color = -1;
}

void Lane::set_color(int color)
{
    this->color = color;
}

void Lane::input_xy(int x, int y)
{
    pixel_x.push_back(x);
    pixel_y.push_back(y);
}