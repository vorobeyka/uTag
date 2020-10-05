import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    id: root
    color: _generalColor

    ScrollView {
        id: scrollView
        anchors.centerIn: parent
        width: root.width - root.width / 4
        height: root.height - root.height / 5
        clip: true
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Column {
            id: settingsList
            anchors.fill: parent

            Rectangle {
                id: backgroundEditor
                width: scrollView.width
                height: scrollView.height / 3
                color: _generalColor

                SettingsText { id: bgText; text: "Background color: " }

                Column {
                    id: bgSelector
                    anchors.left: bgText.right
                    anchors.verticalCenter: parent.verticalCenter

                    Row {
                        id: lightColors

                        SettingsLightPickerBg { color: "white" }
                        SettingsLightPickerBg { color: "#F7F1E3" }
                        SettingsLightPickerBg { color: "#D1D8E0" }
                        SettingsLightPickerBg { color: "#DFE4EA" }
                        SettingsLightPickerBg { color: "#CED6E0" }
                        SettingsLightPickerBg { color: "#DCDDE1" }

                    }

                    Row {
                        id: darkColors

                        SettingsDarkPickerBg { color: "#596275" }
                        SettingsDarkPickerBg { color: "#303952" }
                        SettingsDarkPickerBg { color: "#485460" }
                        SettingsDarkPickerBg { color: "#596275" }
                        SettingsDarkPickerBg { color: "#2E2F30" }
                        SettingsDarkPickerBg { color: "#192A56" }
                    }
                }

                border.color: _themeColor
            }

            Rectangle {
                id: themeEditor
                width: scrollView.width
                height: scrollView.height / 3
                color: _generalColor
                SettingsText { id: themeText; text: "Theme color: " }

                Column {
                    id: themeSelector
                    anchors.left: themeText.right
                    anchors.verticalCenter: parent.verticalCenter

                    Row {
                        SettingsThemeColor { color: "#ccae62" }
                        SettingsThemeColor { color: "#ffb142" }
                        SettingsThemeColor { color: "#cc8e35" }
                        SettingsThemeColor { color: "#ff793f" }
                        SettingsThemeColor { color: "#cd6133" }
                        SettingsThemeColor { color: "#ffb8b8" }
                        SettingsThemeColor { color: "#3ae374" }
                    }

                    Row {
                        SettingsThemeColor { color: "#33d9b2" }
                        SettingsThemeColor { color: "#34ace0" }
                        SettingsThemeColor { color: "#227093" }
                        SettingsThemeColor { color: "#40407a" }
                        SettingsThemeColor { color: "#b33939" }
                        SettingsThemeColor { color: "#22a6b3" }
                        SettingsThemeColor { color: "#eb4d4b" }
                    }
                }

                border.color: _themeColor
            }

            Rectangle {
                id: comingSoon
                width: scrollView.width
                height: scrollView.height / 3
                color: _generalColor
                SettingsText { text: "Coming soon..."; anchors.centerIn: parent }

                border.color: _themeColor
            }
        }
    }
}
