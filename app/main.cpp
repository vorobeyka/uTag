#include <QtCore>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QIcon>
#include <tag.h>
#include <fileref.h>

#include "./src/appcore.h"
#include "./src/LiveImage.h"

using namespace TagLib;

int main(int argc, char *argv[]) {
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    qmlRegisterType<LiveImage>("ImageProvider", 1, 0, "LiveImage");

    QGuiApplication app(argc, argv);

    app.setWindowIcon(QIcon(":/resources/logo-music.png"));

    AudioReader* audioReader = new AudioReader();
    AppCore appCore(audioReader, argv[1] ? argv[1] : QDir().homePath());
    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();

    context->setContextProperty("appCore", &appCore);
    context->setContextProperty("audioReader", audioReader);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}
