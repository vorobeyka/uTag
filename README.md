# uTag
## Description
  App to read and write tags of mp3 files with Qt GUI and Taglib

## How to use

### Must Have (dependencies)
- CMake 3.16.3 or above - https://cmake.org/download
- Qt 5.14 or above - https://www.qt.io/download

### Building and running
You need to install Qt and QtQuick libraries to run this app.
If you are haven't Qt, QtQuick and QML libraries, you can do next things:
##### For Linux users:

Open terminal and do next command:

```
sudo apt-get install qt5-default
sudo apt-get install qml-module-qtquick2 && 
sudo apt-get install qml-module-qtquick-controls && 
sudo apt-get install qml-module-qtquick-controls2 && 
sudo apt-get install qml-module-qtquick-window2 && 
sudo apt-get upgrade qml-module-qtquick-dialogs && 
sudo apt-get upgrade qml-module-qtquick-layouts &&
sudo apt-get upgrade qml-module-qtgraphicaleffects
```

After this you can build app with build.sh, but you need to comment first and second lines.
You executable file will in ```./build/app/utag``` path.
##### For Mac OS users:
Open terminal nad do next command:

```
brew install Qt5
```

After this you can build app with build.sh. Executable file will in ```./build/app/utag``` path.
If your installed path of ```brew``` not in ```~./brew```, you need to change first and second lines in ```build.sh```

## App features
- Allows to edit different tags of audio files 
- Supports ```.mp3 .flac .wav .ogg```  audio formats
- Supports to sort audio file items in alphabetical (ascending and descending) and order by selected tags
- Opens the directory with the audio files through the GUI as well as through the command-line argument

## Tech/framework used
 - CMake
 - Qt
 - Taglib

## License
Collision is an open-sourced software licensed under the
[MIT license](LICENSE).
012345678901234567890123456789
