cmake_minimum_required(VERSION 3.10)
project(demo)

set(LIBRARY_OUTPUT_PATH ${LIB_PATH})
include_directories(${HEAD_PATH})

file(GLOB_RECURSE SRC ${CMAKE_CURRENT_SOURCE_DIR}/.. *.cpp)
add_library(${PROJECT_NAME} SHARED ${SRC})
