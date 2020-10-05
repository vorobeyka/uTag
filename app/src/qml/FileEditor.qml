import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import QtQuick.Dialogs 1.2
import ImageProvider 1.0
import QtGraphicalEffects 1.0

Column {
    id: edtiorSection

    property bool isAudioSet: false
    property bool isImageSet: false


    Connections {
        target: audioReader
        onSendAudio: {
            album.text = audioReader.album
            artist.text = audioReader.artist
            year.text = audioReader.year
            genre.text = audioReader.genre
            path.text = audioReader.filePath
            title.text = audioReader.title
            trackNumber.text = audioReader.trackNumber
            if (audioReader.imgLoaded == true) {
                audioImgSec.visible = false
                audioImg.visible = true
                audioImg.image = audioReader.image
            } else {
                audioImgSec.visible = true
                audioImg.visible = false
            }
            isAudioSet = true
            isImageSet = audioReader.imgLoaded
        }
        
        onErrorInvalidImage: {
            // errorMsg = msg
            imageDownloadError.open()
        }
    }

    Dialog {
        id: imageDownloadError
        width: 400
        height: 200
        
        contentItem: Rectangle {
            anchors.fill: parent
            color: _generalColor

            Column {
                y: 10
                x: 20
                spacing: 20
                width: parent.width - 40

                Text {
                    text: "Error"
                    color: _themeColor
                    font.pointSize: 30
                }

                Text {
                    text: "Invalid image file."
                    color: _themeColor
                    font.pointSize: 20
                }

                Rectangle {
                    width: 100
                    height: 50
                    color: _generalColor
                    border.color: _themeColor
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        text: "OK"
                        font.pointSize: 15
                        anchors.centerIn: parent
                        color: _themeColor
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: imageDownloadError.close()
                    }
                }
            }
        }
    }

    Row {
        id: topSection
        width: parent.width
        height: 228

        Rectangle {
            id: audioImageWrapper
            color: _generalColor
            border.color: _themeColor
            height: 228
            width: 228
            
            LiveImage {
                id: audioImg
                width: 226
                height: 226
                visible: false
                anchors.centerIn: parent
            }

            Image {
                id: audioImgSec
                source: "resources/music-note.png"
                anchors.margins: 10
                width: 154
                height: 154
                visible: true
                anchors.centerIn: parent
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                hoverEnabled: isAudioSet
                onEntered: {
                    coloredUploadImg.visible = true
                    coloredDownloadImg.visible = isImageSet
                }
                onExited: {
                    coloredUploadImg.visible = false
                    coloredDownloadImg.visible = false
                }
            }

            Image {
                id: uploadImg
                width: 60
                height: 60
                x: isImageSet ? parent.width * 0.2 : parent.width / 2 - 25
                anchors.verticalCenter: parent.verticalCenter
                visible: false
                source: "resources/upload.png"
            }

            ColorOverlay {
                id: coloredUploadImg
                anchors.fill: uploadImg
                source: uploadImg
                color: _themeColor
                visible: false

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        fileDialog.open()
                    }

                    FileDialog {
                        id: fileDialog
                        title: "Choose an image"
                        nameFilters: ["images (*.jpg *.png *.jpeg)"]
                        folder: shortcuts.home
                        onAccepted: audioReader.setImage(fileUrl)
                        visible: false
                    }
                }
            }

            Image {
                id: downloadImg
                width: 60
                height: 60
                x: parent.width * 0.6
                anchors.verticalCenter: parent.verticalCenter
                visible: false
                source: "resources/download.png"
            }

            ColorOverlay {
                id: coloredDownloadImg
                anchors.fill: downloadImg
                source: downloadImg
                color: _themeColor
                visible: false

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        downloadFileDialog.open()
                    }

                    FileDialog {
                        id: downloadFileDialog
                        title: "Save dialog"
                        nameFilters: ["all files (*)"]
                        folder: shortcuts.home
                        selectFolder: true
                        onAccepted: audioReader.saveImage(fileUrl)
                        visible: false
                    }
                }
            }
        }

        Rectangle {
            id: firstEditWrapper
            color: _generalColor
            border.color: _themeColor
            width: parent.width - audioImageWrapper.width
            height: parent.height

            Column {
                id: textColumn
                property int _verticalSpacingFirst: (parent.height - artist.height * 3) / 4
                y: _verticalSpacingFirst
                width: parent.width
                height: parent.height - _verticalSpacingFirst
                spacing: _verticalSpacingFirst

                Row {
                    id: artistWrapper
                    width: parent.width - 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    FileEditorLabel { id: artistLabel; text: "Artist:"; anchors.verticalCenter: artist.verticalCenter  }

                    FileEditorText {
                        id: artist
                        width: parent.width - artistLabel.width - artistWrapper.spacing
                    }
                }

                Row {
                    id: titleWrapper
                    width: parent.width - 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    FileEditorLabel { id: titleLabel; text: "Title:"; anchors.verticalCenter: title.verticalCenter }

                    FileEditorText {
                        id: title;
                        width: parent.width - titleLabel.width - titleWrapper.spacing
                    }
                }

                Row {
                    id: albumWrapper
                    width: parent.width - 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    FileEditorLabel { id: albumLabel; text: "Album:"; anchors.verticalCenter: album.verticalCenter  }

                    FileEditorText {
                        id: album;
                        width: parent.width - albumLabel.width - albumWrapper.spacing
                    }
                }
            }
        }

    }

    Rectangle {
        id: centerSection
        width: parent.width
        height: parent.height - footer.height - topSection.height
        border.color: _themeColor
        color: _generalColor

        Column {
            id: textColumnSecond
            property int _verticalSpacingSecond: (parent.height - artist.height * 4) / 5
            y: _verticalSpacingSecond
            width: parent.width
            height: parent.height - _verticalSpacingSecond
            spacing: _verticalSpacingSecond

            Row {
                id: genreWrapper
                width: parent.width - 20
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                FileEditorLabel { id: genreLabel; text: "Genre:"; anchors.verticalCenter: genre.verticalCenter }

                FileEditorText {
                    id: genre;
                    width: parent.width - genreLabel.width - genreWrapper.spacing
                }
            }

            Row {
                id: yearWrapper
                width: parent.width - 20
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                FileEditorLabel { id: yearLabel; text: "Year:"; anchors.verticalCenter: year.verticalCenter }

                FileEditorText {
                    id: year;
                    width: parent.width - yearLabel.width - yearWrapper.spacing
                }
            }

            Row {
                id: trackNumberWrapper
                width: parent.width - 20
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                FileEditorLabel { id: trackNumberLabel; text: "Track number:"; anchors.verticalCenter: trackNumber.verticalCenter; width: 100 }

                FileEditorText {
                    id: trackNumber;
                    width: parent.width - trackNumberLabel.width - trackNumberWrapper.spacing
                }
            }

            Row {
                id: pathWrapper
                width: parent.width - 20
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                FileEditorLabel { id: pathLabel; text: "Audio file path:"; anchors.verticalCenter: path.verticalCenter; width: 100 }

                FileEditorText {
                    id: path
                    width: parent.width - pathLabel.width - pathWrapper.spacing
                    readOnly: true
                }
            }

        }
    }

    Connections {
        target: audioReader
        onSendLyrics: { lyricsText.text = str }
    }

    Dialog {
        id: editLyricsDialog
        width: 500
        height: 500

        contentItem:  Rectangle {
            anchors.fill: parent
            color: _generalColor

            Column {
                width: parent.width * 0.8
                height: parent.height * 0.8
                anchors.centerIn: parent
                spacing: (height * 0.1) / 2

                Text {
                    height: parent.height * 0.1
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Lyrics:"
                    font.pointSize: 20
                    color: _textColor
                }

                Rectangle {
                    height: parent.height * 0.7
                    width: parent.width
                    color: _generalColor
                    border.color: _themeColor

                    ScrollView {
                        width: parent.width * 0.98
                        height: parent.height * 0.98
                        anchors.centerIn: parent
                        clip: true

                        TextEdit {
                            id: lyricsText
                            anchors.fill: parent
                            color: _textColor
                            font.pixelSize: 15

                        }
                    }
                }

                Rectangle {
                    height: parent.height * 0.1
                    width: parent.width / 3
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: _generalColor
                    border.color: _themeColor

                    Button {
                        anchors.fill: parent
                        flat: true

                        Text {
                            text: "Save"
                            color: _textColor
                            font.pixelSize: 20
                            anchors.centerIn: parent
                        }

                        onClicked: {
                            editLyricsDialog.close()
                            //DOPISAT
                        }
                    }
                }
            }
        }

    }

    Rectangle {
        id: footer
        width: parent.width
        height: 30
        border.color: _themeColor
        color: _generalColor

        Row {
            Rectangle {
                id: editLyrics
                width: footer.width * 0.7
                height: footer.height
                color: _generalColor
                border.color: _themeColor

                Button {
                    id: lyricsButton
                    anchors.fill: parent
                    flat: true
                    visible: isAudioSet

                    Text {
                        text: "Edit lyrics"
                        font.pixelSize: parent.height / 2
                        color: _textColor
                        anchors.centerIn: parent
                    }

                    onClicked: { editLyricsDialog.open() }
                }

            }

            Rectangle {
                id: saveButtonWrapper
                color: _generalColor
                border.color: _themeColor
                height: footer.height
                width: footer.width * 0.3
                visible: isAudioSet

                Button {
                    id: saveButton
                    anchors.fill: parent
                    flat: true
                    height: parent.height

                    Text {
                        text: "Save"
                        font.pixelSize: parent.height / 2
                        color: _textColor
                        anchors.centerIn: parent
                    }
                    
                    onClicked: {
                        audioReader.saveAudio(artist.text, title.text, album.text, genre.text,
                                              year.text, trackNumber.text, lyricsText.text);
                    }
                }
            }
        }
    }
}
