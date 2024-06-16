cmake_minimum_required(VERSION 3.10)

if(NOT DEFINED CMAKE_CUDA_ARCHITECTURES)
  set(CMAKE_CUDA_ARCHITECTURES 75)
endif()

project(OpencvMRE CXX CUDA)

set(CMAKE_CXX_STANDARD 14)
set(APP_NAME opencvmre)


cmake_policy(SET CMP0146 NEW)

# Find necessary packages
find_package(OpenCV REQUIRED)

find_package(CUDA REQUIRED)
include_directories(${CUDA_INCLUDE_DIRS})


# Define your executable
add_executable(${APP_NAME}
    main.cu
    # Add more source files for the executable
)

# Link against dicutil and other necessary libraries
target_link_libraries(${APP_NAME}
    ${OpenCV_LIBS}
    ${CUDA_LIBRARIES}
    # Any other libraries needed by the simulator executable
)

