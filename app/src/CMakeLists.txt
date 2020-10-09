cmake_minimum_required(VERSION 3.16)

set(NAME app)

find_package(Qt5 COMPONENTS Core Widgets REQUIRED)
file(GLOB SOURCE *.cpp)

add_library(${NAME} STATIC ${SOURCE})
target_link_libraries(${NAME} Qt5::Core Qt5::Qml Qt5::Quick)