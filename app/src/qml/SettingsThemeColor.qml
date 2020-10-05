import QtQuick 2.14

Rectangle {
    id: root
    width: 30
    height: 30

    MouseArea {
        anchors.fill: parent
        onClicked: { _themeColor = root.color; appCore.themeColor = root.color}
    }
}
