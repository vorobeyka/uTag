cmake_minimum_required(VERSION 3.13)

set(CMAKE_CXX_STANDARD 17)
set(NAME utag)

FIND_PACKAGE(Boost)
IF (Boost_FOUND)
    INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})
    ADD_DEFINITIONS( "-DHAS_BOOST" )
ENDIF()

project(${NAME} LANGUAGES CXX)

add_subdirectory(3dparty)
add_subdirectory(app)