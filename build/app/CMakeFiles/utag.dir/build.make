# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vorobey/ucode/utag

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vorobey/ucode/utag/build

# Include any dependencies generated for this target.
include app/CMakeFiles/utag.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/utag.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/utag.dir/flags.make

app/qrc_qml.cpp: ../app/src/qml/main.qml
app/qrc_qml.cpp: ../app/src/qml/FileEditor.qml
app/qrc_qml.cpp: ../app/src/qml/FileEditorLabel.qml
app/qrc_qml.cpp: ../app/src/qml/FileEditorText.qml
app/qrc_qml.cpp: ../app/src/qml/FoldersList.qml
app/qrc_qml.cpp: ../app/src/qml/MainPage.qml
app/qrc_qml.cpp: ../app/src/qml/MusicsList.qml
app/qrc_qml.cpp: ../app/src/qml/SettingsPage.qml
app/qrc_qml.cpp: ../app/resources/folder-icon.png
app/qrc_qml.cpp: ../app/resources/open-folder-icon.png
app/qrc_qml.cpp: ../app/resources/settings-icon.png
app/qrc_qml.cpp: ../app/src/qml/SettingsText.qml
app/qrc_qml.cpp: ../app/src/qml/SettingsDarkPickerBg.qml
app/qrc_qml.cpp: ../app/src/qml/SettingsLightPickerBg.qml
app/qrc_qml.cpp: ../app/src/qml/SettingsThemeColor.qml
app/qrc_qml.cpp: ../app/src/qml/MainSortButton.qml
app/qrc_qml.cpp: ../app/src/qml/MainSortPopup.qml
app/qrc_qml.cpp: ../app/resources/logo.jpg
app/qrc_qml.cpp: ../app/resources/logo-music.png
app/qrc_qml.cpp: ../app/resources/music-note.png
app/qrc_qml.cpp: ../app/resources/upload.png
app/qrc_qml.cpp: ../app/resources/download.png
app/qrc_qml.cpp: app/src/qml/qml.qrc.depends
app/qrc_qml.cpp: ../app/src/qml/qml.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_qml.cpp"
	cd /home/vorobey/ucode/utag/build/app && /usr/lib/qt5/bin/rcc --name qml --output /home/vorobey/ucode/utag/build/app/qrc_qml.cpp /home/vorobey/ucode/utag/app/src/qml/qml.qrc

app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o: app/utag_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o -c /home/vorobey/ucode/utag/build/app/utag_autogen/mocs_compilation.cpp

app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/build/app/utag_autogen/mocs_compilation.cpp > CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.i

app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/build/app/utag_autogen/mocs_compilation.cpp -o CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.s

app/CMakeFiles/utag.dir/main.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/main.cpp.o: ../app/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object app/CMakeFiles/utag.dir/main.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/main.cpp.o -c /home/vorobey/ucode/utag/app/main.cpp

app/CMakeFiles/utag.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/main.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/app/main.cpp > CMakeFiles/utag.dir/main.cpp.i

app/CMakeFiles/utag.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/main.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/app/main.cpp -o CMakeFiles/utag.dir/main.cpp.s

app/CMakeFiles/utag.dir/src/appcore.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/src/appcore.cpp.o: ../app/src/appcore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object app/CMakeFiles/utag.dir/src/appcore.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/src/appcore.cpp.o -c /home/vorobey/ucode/utag/app/src/appcore.cpp

app/CMakeFiles/utag.dir/src/appcore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/src/appcore.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/app/src/appcore.cpp > CMakeFiles/utag.dir/src/appcore.cpp.i

app/CMakeFiles/utag.dir/src/appcore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/src/appcore.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/app/src/appcore.cpp -o CMakeFiles/utag.dir/src/appcore.cpp.s

app/CMakeFiles/utag.dir/src/AudioReader.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/src/AudioReader.cpp.o: ../app/src/AudioReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object app/CMakeFiles/utag.dir/src/AudioReader.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/src/AudioReader.cpp.o -c /home/vorobey/ucode/utag/app/src/AudioReader.cpp

app/CMakeFiles/utag.dir/src/AudioReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/src/AudioReader.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/app/src/AudioReader.cpp > CMakeFiles/utag.dir/src/AudioReader.cpp.i

app/CMakeFiles/utag.dir/src/AudioReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/src/AudioReader.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/app/src/AudioReader.cpp -o CMakeFiles/utag.dir/src/AudioReader.cpp.s

app/CMakeFiles/utag.dir/src/LiveImage.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/src/LiveImage.cpp.o: ../app/src/LiveImage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object app/CMakeFiles/utag.dir/src/LiveImage.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/src/LiveImage.cpp.o -c /home/vorobey/ucode/utag/app/src/LiveImage.cpp

app/CMakeFiles/utag.dir/src/LiveImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/src/LiveImage.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/app/src/LiveImage.cpp > CMakeFiles/utag.dir/src/LiveImage.cpp.i

app/CMakeFiles/utag.dir/src/LiveImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/src/LiveImage.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/app/src/LiveImage.cpp -o CMakeFiles/utag.dir/src/LiveImage.cpp.s

app/CMakeFiles/utag.dir/qrc_qml.cpp.o: app/CMakeFiles/utag.dir/flags.make
app/CMakeFiles/utag.dir/qrc_qml.cpp.o: app/qrc_qml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object app/CMakeFiles/utag.dir/qrc_qml.cpp.o"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utag.dir/qrc_qml.cpp.o -c /home/vorobey/ucode/utag/build/app/qrc_qml.cpp

app/CMakeFiles/utag.dir/qrc_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utag.dir/qrc_qml.cpp.i"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vorobey/ucode/utag/build/app/qrc_qml.cpp > CMakeFiles/utag.dir/qrc_qml.cpp.i

app/CMakeFiles/utag.dir/qrc_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utag.dir/qrc_qml.cpp.s"
	cd /home/vorobey/ucode/utag/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vorobey/ucode/utag/build/app/qrc_qml.cpp -o CMakeFiles/utag.dir/qrc_qml.cpp.s

# Object files for target utag
utag_OBJECTS = \
"CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/utag.dir/main.cpp.o" \
"CMakeFiles/utag.dir/src/appcore.cpp.o" \
"CMakeFiles/utag.dir/src/AudioReader.cpp.o" \
"CMakeFiles/utag.dir/src/LiveImage.cpp.o" \
"CMakeFiles/utag.dir/qrc_qml.cpp.o"

# External object files for target utag
utag_EXTERNAL_OBJECTS =

app/utag: app/CMakeFiles/utag.dir/utag_autogen/mocs_compilation.cpp.o
app/utag: app/CMakeFiles/utag.dir/main.cpp.o
app/utag: app/CMakeFiles/utag.dir/src/appcore.cpp.o
app/utag: app/CMakeFiles/utag.dir/src/AudioReader.cpp.o
app/utag: app/CMakeFiles/utag.dir/src/LiveImage.cpp.o
app/utag: app/CMakeFiles/utag.dir/qrc_qml.cpp.o
app/utag: app/CMakeFiles/utag.dir/build.make
app/utag: 3dparty/taglib/taglib/libtag.a
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Quick.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libz.so
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libQt5QmlModels.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.14.2
app/utag: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.14.2
app/utag: app/CMakeFiles/utag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vorobey/ucode/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable utag"
	cd /home/vorobey/ucode/utag/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/utag.dir/build: app/utag

.PHONY : app/CMakeFiles/utag.dir/build

app/CMakeFiles/utag.dir/clean:
	cd /home/vorobey/ucode/utag/build/app && $(CMAKE_COMMAND) -P CMakeFiles/utag.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/utag.dir/clean

app/CMakeFiles/utag.dir/depend: app/qrc_qml.cpp
	cd /home/vorobey/ucode/utag/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vorobey/ucode/utag /home/vorobey/ucode/utag/app /home/vorobey/ucode/utag/build /home/vorobey/ucode/utag/build/app /home/vorobey/ucode/utag/build/app/CMakeFiles/utag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/utag.dir/depend
