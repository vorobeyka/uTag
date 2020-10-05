import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    id: root
    color: _generalColor
    border.color: _themeColor

    Connections {
        target: audioReader
        onSetMusicList: {
            _list.model.clear()
            for (var i = 0; i < list.length; ++i) {
                _list.model.append({appendText: list[i]});
            }
        }
    }

    Rectangle {
        id: audioTitle
        height: 50
        width: parent.width
        color: _generalColor
        border.color: _themeColor
        Text {
            anchors.centerIn: parent
            font.pixelSize: 20
            color: _textColor
            text: "Audio list:"
        }
    }

    ScrollView {
        y: audioTitle.height
        width: parent.width
        height: parent.height - audioTitle.height
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        ListView {
            id: _list
            // Component.onCompleted: audioReader.readMusic()
            anchors.fill: parent
            clip: true

            model: ListModel {}

            delegate: ItemDelegate {
                id: wrapper
                width: _list.width
                height: 50

                Rectangle {
                    id: _folderImg
                    x: 10
                    width: _textSize * 3
                    height: _textSize * 3
                    radius: 50
                    color: _generalColor
                    border.color: _themeColor
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        text: "\u266a"
                        font.pointSize: _textSize * 1.5
                        color: _themeColor
                        anchors.centerIn: parent
                    }
                }

                Text {
                    id: _dirName
                    anchors.leftMargin: 10
                    anchors.left: _folderImg.right
                    width: parent.width - _folderImg.width - 30
                    color: _textColor
                    text: appendText
                    font.pointSize: _textSize
                    anchors.verticalCenter: parent.verticalCenter
                    clip: true
                }

                onClicked: { audioReader.setAudioIndex(index) }
            }
        }
    }
}
