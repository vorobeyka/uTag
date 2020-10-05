cmake_minimum_required(VERSION 3.13)

set(CMAKE_CXX_STANDARD 17)
set(NAME utag)
set(SOURCE_EXE main.cpp src/appcore.cpp src/AudioReader.cpp src/LiveImage.cpp)
set(TAGLIB_PATH "../3dparty/taglib/taglib")
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if(APPLE)
    set(CMAKE_PREFIX_PATH="~/.brew/Cellar/qt/5.15.1//lib/cmake:$CMAKE_PREFIX_PATH")
endif()


project(${NAME})

add_compile_options(
    -Wall
    -Wextra
    -Werror
    -Wpedantic
)

find_library(TAGLIB libtag)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(Qt5 REQUIRED Qml Quick Gui)

qt5_add_resources(qml_QRC src/qml/qml.qrc)

set(SOURCE 
	${SOURCE}
    src/main.cpp
    src/appcore.cpp
    src/AudioReader.cpp
)

include_directories(
    ../build/3dparty/taglib
    ${TAGLIB_PATH}/ape
    ${TAGLIB_PATH}/asf
    ${TAGLIB_PATH}/flac
    ${TAGLIB_PATH}/it
    ${TAGLIB_PATH}/mod
    ${TAGLIB_PATH}/mp4
    ${TAGLIB_PATH}/mpc
    ${TAGLIB_PATH}/mpeg
    ${TAGLIB_PATH}/mpeg/id3v2
    ${TAGLIB_PATH}/mpeg/id3v2/frames
    ${TAGLIB_PATH}/ogg
    ${TAGLIB_PATH}/riff
    ${TAGLIB_PATH}/s3m
    ${TAGLIB_PATH}/toolkit
    ${TAGLIB_PATH}/trueaudio
    ${TAGLIB_PATH}/wavpack
    ${TAGLIB_PATH}/xm
    ${TAGLIB_PATH}
)

add_executable(${NAME} ${SOURCE_EXE} ${qml_QRC})

#add_subdirectory(src)

target_link_libraries(${NAME} tag)

target_link_libraries(${NAME} -lpthread Qt5::Widgets Qt5::Core Qt5::Qml Qt5::Quick)

#file(COPY ./resources DESTINATION ./)