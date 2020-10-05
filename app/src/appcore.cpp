#include "appcore.h"

AppCore::AppCore(AudioReader* audioReader, QString dirPath, QObject* parent)
                 : QObject(parent), m_audioReader(audioReader) {
    
    if (QDir(dirPath).exists()) {
        m_dirPath = QDir(dirPath).absolutePath();
    } else {
        if (checkSuffix(dirPath)) {
            m_dirPath = QFileInfo(dirPath).absolutePath() + "/";
        } else {
            m_dirPath = dirPath;
        }
    }
    m_themesData.setFileName("./build/ThemesData.txt");
    m_themesData.open(QIODevice::ReadWrite);
    if (m_themesData.isOpen()) {
        QTextStream stream(&m_themesData);

        if (stream.atEnd()) {
            stream << "white" << "\n" << "#ff793f" << "\n" << "black" << "\n";
        } else {
            m_generalColor = stream.readLine();
            m_themeColor = stream.readLine();
            m_textColor = stream.readLine();
        }
        m_themesData.close();
    }
}

AppCore::~AppCore() {
    delete m_audioReader;
}

QString AppCore::getThemeColor() const {
    return m_themeColor;
}

void AppCore::setThemeColor(QString color) {
    m_themeColor = color;
    setTheme();
}

QString AppCore::getGeneralColor() const {
    return m_generalColor;
}

void AppCore::setGeneralColor(QString color) {
    m_generalColor = color;
    setTheme();
}

QString AppCore::getTextColor() const {
    return m_textColor;
}

void AppCore::setTextColor(QString color) {
    m_textColor = color;
    setTheme();
}

void AppCore::setTheme() {
    m_themesData.setFileName("ThemesData.txt");
    m_themesData.open(QIODevice::WriteOnly);
    if (m_themesData.isOpen()) {
        QTextStream out(&m_themesData);

        out << m_generalColor << "\n" << m_themeColor << "\n" << m_textColor << "\n";
        m_themesData.close();
    }
}

bool AppCore::checkSuffix(QString dirPath) {
    QString suffix;
    QStringList sfxs;
    QFileInfo fileInfo;
    
    fileInfo.setFile(dirPath);
    suffix = fileInfo.suffix();
    sfxs << "mp3" << "wav" << "flac" << "ogg" << "aiff"
         << "ape" << "ac3" << "amr" << "aud"
         << "iff" << "m3u" << "m3u8" << "m4a";

    for (auto& i : sfxs) {
        if (i == suffix)
            return true;
    }
    return false;
}

void AppCore::readDir(QString dirPath) {
    QDir dir(dirPath);

    bool ok = dir.exists();

    m_dirPath = dir.absolutePath();
    if (ok) {
        if (m_dirPath != dir.rootPath()) {
            m_dirInfo.dirsName << "..";
        }
        dir.setFilter(QDir::NoDotAndDotDot | QDir::Dirs);
        dir.setSorting(QDir::Name);
        QFileInfoList list = dir.entryInfoList();
        for (auto& i : list) {
            m_dirInfo.dirsName << i.fileName();
        }
    }
    m_audioReader->readMusic(m_recurs, m_dirPath);
}



QString AppCore::dirName() const {
    return m_dirPath;
}

void AppCore::readFolders(QString folder) {
    if (QDir(m_dirPath).exists()) {
        m_dirInfo.dirsName.clear();
        readDir(m_dirPath + "/" + folder);
        emit setFoldersList(m_dirInfo.dirsName);
    }
    else {
        emit sendFolderError(m_dirPath);
    }
}

void AppCore::readDialogFolders(QString folder) {
    QString parsedFolder;
    
    for (int i = OS == 1 ? 8 : 7; i < folder.length(); ++i)
        parsedFolder.push_back(folder[i]);

    m_dirInfo.dirsName.clear();
    readDir(parsedFolder);
    emit setFoldersList(m_dirInfo.dirsName);
}

int AppCore::getRecurs() const {
    return m_recurs;
}

void AppCore::setRecurs(int value) {
    m_recurs = value;
    readFolders();
}
