import QtQuick 2.14

Rectangle {
    id: root
    width: 30
    height: 30

    MouseArea {
        anchors.fill: parent

        onClicked: {
            _generalColor = root.color
            appCore.generalColor = root.color
            // _darkBgColor = false
            appCore.textColor = "black"
            _textColor = "black"
        }
    }
}
