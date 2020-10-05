import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    id: root

    color: _generalColor

    Rectangle {
        id: currentFolderName
        width: root.width
        height: 30
        color: _generalColor

        Row {
            height: 30
            width: parent.width

            NumberAnimation on x { from: width; to: text.width ; duration: 10000; loops: Animation.Infinite }

            Label {
                id: text
                text: _folderName
                font.pointSize: 15
                color: _textColor
                clip: true
            }
        }
    }

    MusicsList {
        id: musicList
        y: currentFolderName.height
        width: root.width * 0.35
        height: root.height - currentFolderName.height
    }

    StackView {
        id: contetFileEditor
        y: currentFolderName.height
        width: root.width * 0.65
        height: root.height - currentFolderName.height
        anchors.left: musicList.right
        initialItem: FileEditor { anchors.fill: parent }
    }
}
