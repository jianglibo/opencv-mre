#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/cuda.hpp>
#include <thrust/device_vector.h>
#include <cub/cub.cuh>
#include <cuda/std/atomic>

int main()
{
    int deviceCount = cv::cuda::getCudaEnabledDeviceCount();
    std::cout << "CUDA-enabled devices: " << deviceCount << std::endl;

    std::cout << "CUDA info: {}" << cv::getBuildInformation() << std::endl;

    // write a simple cuda matrix compute
    cv::Mat img = cv::imread("fixtures/600speckle.tif");
    cv::cuda::GpuMat dst, src;
    src.upload(img);

    return 0;
}
