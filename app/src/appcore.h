#ifndef APPCORE_H
#define APPCORE_H

#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QDir>
#include <QList>
#include <string>
#include <QFile>

#include "AudioReader.h"

class AppCore : public QObject {
    Q_OBJECT

public:
    Q_PROPERTY(QString dirName READ dirName)
    Q_PROPERTY(int recurs READ getRecurs WRITE setRecurs)
    Q_PROPERTY(QString themeColor READ getThemeColor WRITE setThemeColor)
    Q_PROPERTY(QString generalColor READ getGeneralColor WRITE setGeneralColor)
    Q_PROPERTY(QString textColor READ getTextColor WRITE setTextColor)

    AppCore(AudioReader* audioReader, QString dirPath, QObject* parent = 0);
    ~AppCore();
    QString dirName() const;

    QString getGeneralColor() const;
    void setGeneralColor(QString);
    QString getThemeColor() const;
    void setThemeColor(QString);
    QString getTextColor() const;
    void setTextColor(QString);

signals:
    void setFoldersList(QStringList list);
    void sendFolderError(QString invalidDir);
    // void setFolderName(QString path);

public slots:
    void readFolders(QString = "");
    void readDialogFolders(QString = "");
    int getRecurs() const;
    void setRecurs(int value);

private:
    int m_recurs = 0;
    QFile m_themesData;
    QString m_generalColor = "white";
    QString m_themeColor = "#ff793f";
    QString m_textColor = "black";

    struct DirInfo {
        QStringList dirsName;
        QStringList audioName;
        int index = 0;
    };

    DirInfo m_dirInfo;

    QString m_dirPath = "";

    void readDir(QString);
    void setTheme();
    
    bool checkSuffix(QString);

    AudioReader* m_audioReader;

};

#endif // APPCORE_H
