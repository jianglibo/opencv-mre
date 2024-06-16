#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/cuda.hpp>

int main() {
    int deviceCount = cv::cuda::getCudaEnabledDeviceCount();
    std::cout << "CUDA-enabled devices: " << deviceCount << std::endl;
    return 0;
}

