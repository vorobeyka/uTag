import QtQuick 2.14
import QtQuick.Controls 2.14

Rectangle {
    id: root
    width: 100
    height: 50
    color: _generalColor
    border.color: _themeColor

    property string _sortText: value
    property int _pressedIndex: 0
    
    
    Connections {
        target: audioReader
    }
    

    Button {
        flat: true
        anchors.fill: parent

        onClicked: {
            if (btnText.text === "Name")
                audioReader.sortAudio(0)
            else if (btnText.text === "Artist")
                audioReader.sortAudio(1)
            else if (btnText.text === "Title")
                audioReader.sortAudio(2)
            else if (btnText.text === "Album")
                audioReader.sortAudio(3)
            else if (btnText.text === "Genre")
                audioReader.sortAudio(4)
            closePopup()
        }
    }

    Text {
        id: btnText
        anchors.centerIn: parent
        color: _textColor
        font.pointSize: 15
        text: _sortText
    }
}
