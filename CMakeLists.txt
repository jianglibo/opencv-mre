cmake_minimum_required(VERSION 3.10)
project(OpencvMRE)

set(CMAKE_CXX_STANDARD 17)

# Find necessary packages
find_package(OpenCV REQUIRED)

set(APP_NAME opencvmre)

# Define your executable
add_executable(${APP_NAME}
    main.cpp
    # Add more source files for the executable
)

# Link against dicutil and other necessary libraries
target_link_libraries(${APP_NAME}
    ${OpenCV_LIBS}
    # Any other libraries needed by the simulator executable
)

