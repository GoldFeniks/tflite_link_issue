cmake_minimum_required(VERSION 3.26)

project(tflite_link_issue C CXX)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(tensorflow/tensorflow/lite)

add_library(gpu SHARED gpu.hpp gpu.cpp)
target_link_libraries(gpu tensorflow-lite)
