import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    id: root
    color: _generalColor

    
    property bool _visibleFolders: true

    Connections {
        target: appCore

        onSetFoldersList: {
            _visibleFolders = true
            _list.model.clear()
            for (var i = 0; i < list.length; ++i) {
                _list.model.append({ appendText: list[i] });
            }
        }

        onSendFolderError: {
            _folderName = ""
            _visibleFolders = false
            errorText.text = "Invalid folder: '" + invalidDir + "'"
        }
    }

    Rectangle {
        id: folderError
        anchors.fill: parent
        color: _generalColor
        visible: !_visibleFolders
        Text {
            y: parent.height / 2 - 40
            id: errorTextFirst
            text: "Error:"
            color: _themeColor
            font.pointSize: 20
        }

        Text {
            id: errorText
            width: parent.width - 20
            anchors.top: errorTextFirst.bottom
            color: _themeColor
            font.pointSize: 15
            wrapMode: Text.WordWrap
        }
    }

    ScrollView {
        id: _scrollView
        anchors.fill: parent
        clip: true
        visible: _visibleFolders

        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Rectangle {
            id: treeRecurs
            width: parent.width
            height: 50
            color: _generalColor
            // border.color: _themeColor

            Text {
                id: syka
                anchors.verticalCenter: parent.verticalCenter
                x: 20
                text: "Browsing subdirectories"
                color: _textColor
                font.pointSize: 15
            }

            Switch {
                id: control
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                onClicked: {
                    if (control.checked)
                        appCore.recurs = 1
                    else
                        appCore.recurs = 0
                }
            }
        }

        ListView {
            id: _list
            width: parent.width
            height: parent.height - 50
            anchors.top: treeRecurs.bottom
            clip: true

            Component.onCompleted: {
                _folderName = appCore.dirName
                appCore.readFolders("")
            }

            model: ListModel {}

            delegate: ItemDelegate {
                id: wrapper
                width: root.width
                height: _textSize * 4

                Rectangle {
                    id: _folderImg
                    x: 10
                    height: _textSize * 3
                    width: _textSize * 3
                    radius: 50
                    color: _themeColor
                    anchors.verticalCenter: parent.verticalCenter

                    Image {
                        id: _img
                        anchors.centerIn: parent
                        height: _textSize * 2
                        width: _textSize * 2
                        source: _folderIconPath
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
                onClicked: {
                    appCore.readFolders(_dirName.text)
                    _folderName = appCore.dirName
                }
            }
        }
    }
}
