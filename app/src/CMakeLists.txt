cmake_minimum_required(VERSION 3.13)

set(CMAKE_CXX_STANDARD 17)

file(SRC *.cpp)

add_library(app ${SRC})
