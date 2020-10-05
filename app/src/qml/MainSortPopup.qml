import QtQuick 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14

Popup {
    id: sortPopup
    focus: true
    y: 40
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

    background: Rectangle {
        color: _generalColor
        border.color: _themeColor
    }

    signal closePopup()

    onClosePopup: sortPopup.close()

    ColumnLayout {
        MainSortButton { _sortText: "Name"; _pressedIndex: 0 }
        MainSortButton { _sortText: "Artist"; _pressedIndex: 1 }
        MainSortButton { _sortText: "Title"; _pressedIndex: 2 }
        MainSortButton { _sortText: "Album"; _pressedIndex: 3 }
        MainSortButton { _sortText: "Genre"; _pressedIndex: 4 }
    }
}
