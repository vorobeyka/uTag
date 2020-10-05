#ifndef AUDIO_READER_H
#define AUDIO_READER_H

#include <QtCore>
#include <QObject>
#include <QDate>
#include <QQueue>
#include <QFileInfoList>
#include <QImage>
#include <vector>
#include <tag.h>
#include <fileref.h>
#include <iterator>
#include <mpegfile.h>
#include <id3v2tag.h>
#include <unsynchronizedlyricsframe.h>

#if defined(Q_OS_WIN)
    #define OS 1
#elif defined(Q_OS_MAC)
    #define OS 2
#elif defined(Q_OS_LINUX)
    #define OS 3
#endif

using namespace TagLib;

class AudioReader : public QObject {
    Q_OBJECT
public:
    AudioReader(QObject* parent = 0);

    Q_PROPERTY(QString genre READ genre)
    Q_PROPERTY(QString filePath READ filePath)
    Q_PROPERTY(QString fileName READ fileName)
    Q_PROPERTY(QString artist READ artist)
    Q_PROPERTY(QString title READ title)
    Q_PROPERTY(QString album READ album)
    Q_PROPERTY(QString year READ year)
    Q_PROPERTY(QString trackNumber READ trackNumber)
    // Q_PROPERTY(QString lyrics READ lyrics)
    Q_PROPERTY(QImage image READ image)
    Q_PROPERTY(bool imgLoaded READ imgLoaded)

    struct AudioData {
        FileRef fileRef;
        ID3v2::UnsynchronizedLyricsFrame *frame;
        QString genre;
        QString filePath;
        QString fileName;
        QString artist;
        QString title;
        QString album;
        QString year;
        QString absolutePath;
        QString trackNumber;
        QString lyrics;
        QImage  img;
        ByteVector data;
        bool imgLoaded;
    };

    QString genre() const;
    QString filePath() const;
    QString fileName() const;
    QString artist() const;
    QString title() const;
    QString album() const;
    QString year() const;
    QString trackNumber() const;
    QImage  image() const;

    bool imgLoaded() const;
    
    void setAudioData(QFileInfoList);


    
    QStringList sortedAudios();

signals:
    void sendAudio();
    void setMusicList(QStringList list);
    void sendLyrics(QString str);
    void sendImage(QImage img);
    void errorInvalidImage(QString msg);

public slots:
    void setAudioIndex(int);
    void sortAudio(int);
    void readMusic(int recurs, QString = "");
    void setImage(QString);
    void saveImage(QString);
    void saveAudio(QString, QString, QString, QString,
                   QString, QString, QString);

private:
    int m_audioIndex = 0;
    int m_sortedValue = 0;

    double m_imageSize = 0;

    bool m_sort = true;

    std::vector<AudioData> m_audioData;

    AudioData m_lastAudio;

    QString m_dirPath;

    enum Sort {
        Name,
        Artist,
        Title,
        Album,
        Genre
    };

    //sorting Audios
    void sortByName();
    void sortByArtist();
    void sortByTitle();
    void sortByAlbum();
    void sortByGenre();

    // void getImg(QString);

    bool checkSuffix(QString, QString);
    QFileInfoList recursRead(QString);

    bool sortCompare(QString, QString, QString, QString);
    // void sort(int);
    //end sorting Audios
};

#endif
