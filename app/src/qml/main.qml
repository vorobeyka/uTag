import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: root
    minimumHeight: 640
    minimumWidth: 800
    height: 640
    width: 800
    visible: true
    title: qsTr("Utag")

    // property string _generalColor: 
    property string _generalColor: ""
    // property string _themeColor: 
    property string _themeColor: ""

    property string _folderName: "def"
    // property string _textColor: _darkBgColor ? "white" : "black"
    property string _textColor: ""
    property string _settingIconPath: "./resources/settings-icon.png"
    property string _folderIconPath: "./resources/folder-icon.png"

    property bool _darkBgColor: true
    property bool toolButtonClicked: false
    property bool _settingsOpened: false
    property bool _headerButtonsVisible: true
    property bool _sortUpArrow: false
    property bool _sortDownArrow: false

    property int _textSize: 10
    property int _contentHeight: root.height - _toolBar.height/* - _menuBar.height*/
    property int _width: root.width
    
    Component.onCompleted: {
        _generalColor = appCore.generalColor
        _themeColor = appCore.themeColor
        _textColor = appCore.textColor
    }

    color: _generalColor

    header: ToolBar {
        id: _toolBar
        contentHeight: _toolButtonShowFolders.implicitHeight

        FileDialog {
            id: fileDialog
            title: "Choose a folder"
            folder: shortcuts.home
            selectFolder: true
            onAccepted: appCore.readDialogFolders(fileUrl)
            visible: false
        }

        Rectangle {
            anchors.fill: parent
            color: _themeColor

            Button {
                id: _toolButtonShowFolders
                flat: true
                width: 110
                visible: _headerButtonsVisible

                Row {
                    anchors.fill: parent

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: " Folders "
                        font.pointSize: 15
                        color: _textColor
                    }

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "\u2630"
                        font.pointSize: 20
                        color: _textColor
                    }
                }

                onClicked: { _dirsDrawer.open() }
            }

            Button {
                id: _openFolderButton
                anchors.left: _toolButtonShowFolders.right
                flat: true
                width: height
                visible: _headerButtonsVisible

                Image {
                    id: _folderImg
                    source: "./resources/open-folder-icon.png"
                    height: parent.height
                    width: height
                    anchors.centerIn: parent
                }

                onClicked: { fileDialog.open() }
            }

            Button {
                id: sortingButton
                anchors.left: _openFolderButton.right
                flat: true
                width: 80
                visible: _headerButtonsVisible

                Row {
                    anchors.centerIn: parent

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: " Sort "
                        font.pointSize: 15
                        color: _textColor
                    }

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "\u21c5"
                        font.pointSize: 25
                        color: _textColor
                    }
                }

                MainSortPopup { id: sortPopup }

                onClicked: {
                    if (sortPopup.opened) {
                        sortPopup.close()
                    } else {
                        sortPopup.open()
                    }
                }
            }

            Label {
                text: _headerButtonsVisible ? "Utag editor \u266b" : "Settings"
                anchors.centerIn: parent
                font.pointSize: 15
                color: _textColor
            }

            Button {
                id: _toolButtonShowSettings
                anchors.right: parent.right
                flat: true
                width: height

                Image {
                    id: _settingImg
                    source: _settingIconPath
                    height: parent.height
                    width: height
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                onClicked: {
                    if (_settingsOpened) {
                        mainContent.pop("SettingsPage.qml")
                    } else {
                        mainContent.push("SettingsPage.qml")
                    }
                    _settingsOpened = !_settingsOpened
                    _headerButtonsVisible = !_headerButtonsVisible
                }
            }
        }
    }

    StackView {
        id: mainContent
        anchors.fill: parent

        initialItem: MainPage {
            width: root.width
            height: _contentHeight
        }
    }

    Drawer {
        id: _dirsDrawer
        width: root.width * 0.5 + 40
        height: root.height

        Row {
            anchors.fill: parent
            spacing: 4

            FoldersList {
                id: foldersList
                width: _dirsDrawer.width - 40
                height: _dirsDrawer.height
            }

            Rectangle {
                width: parent.width - foldersList.width
                height: _dirsDrawer.height
                color: _themeColor
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: _dirsDrawer.close()
                }

                Text {
                    anchors.centerIn: parent
                    font.pointSize: 20
                    text: "\u25C0"
                }
            }
        }
    }
}
