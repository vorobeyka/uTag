#include "AudioReader.h"
#include <QImage>
#include <id3v2frame.h>
#include <frames/attachedpictureframe.h>
#include <id3v2tag.h>
#include <unsynchronizedlyricsframe.h>
#include <mpegfile.h>
#include <attachedpictureframe.h>

AudioReader::AudioReader(QObject* parent) : QObject(parent) {

}

QStringList AudioReader::sortedAudios() {
    QStringList rez;

    for (auto& i : m_audioData)
        rez << i.fileName;
    return rez;
}

bool AudioReader::checkSuffix(QString str, QString suff) {
    short int sfx = suff.length();
    int len = str.length();

    for (int i = 1; i <= sfx; i++) {
        if (str[len - i] != suff[sfx - i]) {
            return false;
        }
    }
    return true;
}

void AudioReader::setAudioData(QFileInfoList list) {
    m_audioData.clear();

    for (auto& i : list) {
        AudioData data;
        String filePath = i.filePath().toStdWString().c_str();
        FileRef file(filePath.toCString(1));
        if (file.isNull())
            continue;
        data.fileRef = file;
        data.filePath = i.absolutePath();
        data.fileName = i.fileName();
        data.album = QString::fromStdWString(file.tag()->album().toWString());
        data.genre = QString::fromStdWString(file.tag()->genre().toWString());
        data.artist = QString::fromStdWString(file.tag()->artist().toWString());
        data.title = QString::fromStdWString(file.tag()->title().toWString());
        data.trackNumber = QString::fromStdString(std::to_string(file.tag()->track()));
        data.year = QString::fromStdString(std::to_string(file.tag()->year()));
        data.absolutePath = i.absolutePath();

        MPEG::File f(filePath.toCString(1));
        ID3v2::FrameList frames = f.ID3v2Tag()->frameListMap()["USLT"];
        ID3v2::UnsynchronizedLyricsFrame *frame = NULL;

        if (!frames.isEmpty()) {
            frame = dynamic_cast<ID3v2::UnsynchronizedLyricsFrame *>(frames.front());
            if (frame) data.lyrics = QString::fromStdWString(frame->text().toWString());
            else data.lyrics = "";
        }

        TagLib::ID3v2::FrameList frameList = f.ID3v2Tag()->frameList("APIC");
        if (!frameList.isEmpty()) {
            TagLib::ID3v2::AttachedPictureFrame *coverImg = static_cast<TagLib::ID3v2::AttachedPictureFrame *>(frameList.front());
            QImage coverQImg;
            coverQImg.loadFromData((const uchar *) coverImg->picture().data(), coverImg->picture().size());
            data.img = coverQImg.scaled(226, 226, Qt::KeepAspectRatio);
            data.imgLoaded = 1;
        } else {
            data.imgLoaded = 0;
        }
        m_audioData.push_back(data);
    }
    sortAudio(-1);
}

void AudioReader::setAudioIndex(int index) {
    m_audioIndex = index;
    m_lastAudio = m_audioData[m_audioIndex];

    emit sendAudio();
    emit sendLyrics(m_lastAudio.lyrics);
}

QString AudioReader::genre() const {
    return m_lastAudio.genre;
}

QString AudioReader::filePath() const {
    return m_lastAudio.filePath;
}

QString AudioReader::fileName() const {
    return m_lastAudio.fileName;
}

QString AudioReader::artist() const {
    return m_lastAudio.artist;
}

QString AudioReader::title() const {
    return m_lastAudio.title;
}

QString AudioReader::album() const {
    return m_lastAudio.album;
}

QString AudioReader::year() const {
    return m_lastAudio.year;
}

QString AudioReader::trackNumber() const {
    return m_lastAudio.trackNumber;
}

QImage AudioReader::image() const {
    return m_lastAudio.img;
}

class ImageFile : public TagLib::File {
public:
    ImageFile(const wchar_t *file) : TagLib::File(FileName(file)) { }
    ImageFile(const char *file) : TagLib::File(file) { }

    TagLib::ByteVector data() {
        return readBlock(length());
    }
private:
    virtual TagLib::Tag *tag() const { return 0; }
    virtual TagLib::AudioProperties *audioProperties() const { return 0; }
    virtual bool save() { return false; }
};

void AudioReader::setImage(QString url) {
    QString _path;

    for (int i = OS == 1 ? 8 : 7; i < url.length(); ++i)
        _path.push_back(url[i]);
    QImage _img = QImage(_path).scaled(226, 226, Qt::KeepAspectRatio);
    if (!_img.isNull()) {
        m_lastAudio.img = QImage(_img);
        m_lastAudio.imgLoaded = 1;

        String fpath = _path.toStdWString().c_str();
        ImageFile img(fpath.toCString(1));

        m_lastAudio.data = img.data();
        if (m_audioData.size() != 0) {
            m_audioData[m_audioIndex].imgLoaded = 1;
            m_audioData[m_audioIndex].img = QImage(m_lastAudio.img);
            m_audioData[m_audioIndex].data = m_lastAudio.data;
        }
        emit sendAudio();
    } else {
        emit errorInvalidImage(_path);
    }
}

bool AudioReader::imgLoaded() const {
    return m_lastAudio.imgLoaded;
}

void AudioReader::saveImage(QString url) {
    QString _path;

    for (int i = OS == 1 ? 8 : 7; i < url.length(); ++i)
        _path.push_back(url[i]);

    m_lastAudio.img.save(_path + "/downloadedImage.png");
}

bool AudioReader::sortCompare(QString token1, QString token2, QString name1, QString name2) {
    if (m_sort) {
        if (token1 < token2) return true;
        if (token1 == token2 && name1 < name2) return true;
    } else {
        if (token1 > token2) return true;
        if (token1 == token2 && name1 > name2) return true;
    }
    return false;
}

void AudioReader::sortByName() {
    std::sort(m_audioData.begin(), m_audioData.end(), [&](auto a, auto b) {
        return sortCompare(a.fileName, b.fileName, "", "");
    });
}

void AudioReader::sortByArtist() {
    std::sort(m_audioData.begin(), m_audioData.end(), [&](auto a, auto b) {
        return sortCompare(a.artist, b.artist, a.fileName, b.fileName);
    });
}

void AudioReader::sortByTitle() {
    std::sort(m_audioData.begin(), m_audioData.end(), [&](auto a, auto b) {
        return sortCompare(a.title, b.title, a.fileName, b.fileName);
    });
}

void AudioReader::sortByAlbum() {
    std::sort(m_audioData.begin(), m_audioData.end(), [&](auto a, auto b) {
        return sortCompare(a.album, b.album, a.fileName, b.fileName);
    });
}

void AudioReader::sortByGenre() {
    std::sort(m_audioData.begin(), m_audioData.end(), [&](auto a, auto b) {
        return sortCompare(a.genre, b.genre, a.fileName, b.fileName);
    });
}

void AudioReader::sortAudio(int value) {
    m_sort = m_sortedValue == value ? !m_sort : true;

    if (m_audioData.size() != 0) {
        switch (value == -1 ? m_sortedValue : value) {
        case Name: sortByName();
            break;
        case Artist: sortByArtist();
            break;
        case Title: sortByTitle();
            break;
        case Album: sortByAlbum();
            break;
        case Genre: sortByGenre();
            break;
        }
    }
    m_sortedValue = value == -1 ? m_sortedValue : value;
    emit setMusicList(sortedAudios());
}

QFileInfoList AudioReader::recursRead(QString path) {
    QFileInfoList list;
    QFileInfoList dirsList;
    QDir dir(path);
    dir.setFilter(QDir::NoDotAndDotDot | QDir::Dirs | QDir::NoSymLinks);
    dirsList << dir.entryInfoList();
    for (auto& i : dirsList)
        list << recursRead(i.absoluteFilePath());
    QDir audios(path);
    audios.setNameFilters(QStringList() << "*.mp3"
                                 << "*.wav" << "*.flac"
                                 << "*.ogg" << "*.aiff"
                                 << "*.ape" << "*.ac3"
                                 << "*.amr" << "*.aud"
                                 << "*.iff" << "*.m3u"
                                 << "*.m3u8" << "*.m4a");
    list << audios.entryInfoList();
    return list;
}

void AudioReader::readMusic(int recurs, QString dirPath) {
    if (dirPath == "")
        dirPath = m_dirPath;
    QDir dir(dirPath);
    QFileInfoList list;
    m_dirPath = dirPath;
    if (recurs) {
        list << recursRead(m_dirPath);
    }   
    else {
        dir.setNameFilters(QStringList() << "*.mp3"
                           << "*.wav" << "*.flac"
                           << "*.ogg" << "*.aiff"
                           << "*.ape" << "*.ac3"
                           << "*.amr" << "*.aud"
                           << "*.iff" << "*.m3u"
                           << "*.m3u8" << "*.m4a");
        list << dir.entryInfoList();
    }
    
    setAudioData(std::move(list));
}

void AudioReader::saveAudio(QString artist, QString title, QString album,
                            QString genre, QString year, QString number,
                            QString lyrics) {
    m_lastAudio.artist = artist;
    m_lastAudio.title = title;
    m_lastAudio.album = album;
    m_lastAudio.genre = genre;
    m_lastAudio.year = year;
    m_lastAudio.trackNumber = number;
    m_lastAudio.lyrics = lyrics;
    m_lastAudio.fileRef.tag()->setArtist(artist.toStdWString());
    m_lastAudio.fileRef.tag()->setTitle(title.toStdWString());
    m_lastAudio.fileRef.tag()->setAlbum(album.toStdWString());
    m_lastAudio.fileRef.tag()->setGenre(genre.toStdWString());
    m_lastAudio.fileRef.tag()->setYear(year.toUInt());
    m_lastAudio.fileRef.tag()->setTrack(number.toUInt());
    m_lastAudio.fileRef.save();

    String filePath = m_lastAudio.filePath.toStdWString() + "/" + m_lastAudio.fileName.toStdWString();
    MPEG::File f(filePath.toCString(1));
    ID3v2::UnsynchronizedLyricsFrame *frame = new ID3v2::UnsynchronizedLyricsFrame();

    if (!f.ID3v2Tag()->frameListMap()["USLT"].isEmpty())
        f.ID3v2Tag()->removeFrames(f.ID3v2Tag()->frameListMap()["USLT"].front()->frameID());
    frame->setText(lyrics.toStdWString());
    f.ID3v2Tag()->addFrame(frame);
    if (checkSuffix(m_lastAudio.fileName, ".mp3")) {
        if (!f.ID3v2Tag()->frameListMap()["APIC"].isEmpty())
            f.ID3v2Tag()->removeFrames(f.ID3v2Tag()->frameListMap()["APIC"].front()->frameID());
        ID3v2::AttachedPictureFrame *imgFrame = new ID3v2::AttachedPictureFrame();
        ByteVector byteImg;
        QByteArray arr;
        QBuffer buffer(&arr);

        buffer.open(QIODevice::WriteOnly);
        m_lastAudio.img.save(&buffer, "image/jpeg");
        byteImg.setData(arr);
        imgFrame->setMimeType("image/jpeg");
        imgFrame->setPicture(m_lastAudio.data);
        f.ID3v2Tag()->addFrame(imgFrame);
    }
    f.save();
    if (m_audioData.size() > static_cast<unsigned int>(m_audioIndex))
        m_audioData[m_audioIndex] = m_lastAudio;
}
