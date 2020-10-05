/****************************************************************************
** Meta object code from reading C++ file 'AudioReader.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.14.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "src/AudioReader.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AudioReader.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.14.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_AudioReader_t {
    QByteArrayData data[28];
    char stringdata0[238];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_AudioReader_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_AudioReader_t qt_meta_stringdata_AudioReader = {
    {
QT_MOC_LITERAL(0, 0, 11), // "AudioReader"
QT_MOC_LITERAL(1, 12, 9), // "sendAudio"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 12), // "setMusicList"
QT_MOC_LITERAL(4, 36, 4), // "list"
QT_MOC_LITERAL(5, 41, 10), // "sendLyrics"
QT_MOC_LITERAL(6, 52, 3), // "str"
QT_MOC_LITERAL(7, 56, 9), // "sendImage"
QT_MOC_LITERAL(8, 66, 3), // "img"
QT_MOC_LITERAL(9, 70, 17), // "errorInvalidImage"
QT_MOC_LITERAL(10, 88, 3), // "msg"
QT_MOC_LITERAL(11, 92, 13), // "setAudioIndex"
QT_MOC_LITERAL(12, 106, 9), // "sortAudio"
QT_MOC_LITERAL(13, 116, 9), // "readMusic"
QT_MOC_LITERAL(14, 126, 6), // "recurs"
QT_MOC_LITERAL(15, 133, 8), // "setImage"
QT_MOC_LITERAL(16, 142, 9), // "saveImage"
QT_MOC_LITERAL(17, 152, 9), // "saveAudio"
QT_MOC_LITERAL(18, 162, 5), // "genre"
QT_MOC_LITERAL(19, 168, 8), // "filePath"
QT_MOC_LITERAL(20, 177, 8), // "fileName"
QT_MOC_LITERAL(21, 186, 6), // "artist"
QT_MOC_LITERAL(22, 193, 5), // "title"
QT_MOC_LITERAL(23, 199, 5), // "album"
QT_MOC_LITERAL(24, 205, 4), // "year"
QT_MOC_LITERAL(25, 210, 11), // "trackNumber"
QT_MOC_LITERAL(26, 222, 5), // "image"
QT_MOC_LITERAL(27, 228, 9) // "imgLoaded"

    },
    "AudioReader\0sendAudio\0\0setMusicList\0"
    "list\0sendLyrics\0str\0sendImage\0img\0"
    "errorInvalidImage\0msg\0setAudioIndex\0"
    "sortAudio\0readMusic\0recurs\0setImage\0"
    "saveImage\0saveAudio\0genre\0filePath\0"
    "fileName\0artist\0title\0album\0year\0"
    "trackNumber\0image\0imgLoaded"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_AudioReader[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
      10,  122, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x06 /* Public */,
       3,    1,   75,    2, 0x06 /* Public */,
       5,    1,   78,    2, 0x06 /* Public */,
       7,    1,   81,    2, 0x06 /* Public */,
       9,    1,   84,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      11,    1,   87,    2, 0x0a /* Public */,
      12,    1,   90,    2, 0x0a /* Public */,
      13,    2,   93,    2, 0x0a /* Public */,
      13,    1,   98,    2, 0x2a /* Public | MethodCloned */,
      15,    1,  101,    2, 0x0a /* Public */,
      16,    1,  104,    2, 0x0a /* Public */,
      17,    7,  107,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QStringList,    4,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::QImage,    8,
    QMetaType::Void, QMetaType::QString,   10,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,   14,    2,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,    2,    2,    2,    2,    2,    2,    2,

 // properties: name, type, flags
      18, QMetaType::QString, 0x00095001,
      19, QMetaType::QString, 0x00095001,
      20, QMetaType::QString, 0x00095001,
      21, QMetaType::QString, 0x00095001,
      22, QMetaType::QString, 0x00095001,
      23, QMetaType::QString, 0x00095001,
      24, QMetaType::QString, 0x00095001,
      25, QMetaType::QString, 0x00095001,
      26, QMetaType::QImage, 0x00095001,
      27, QMetaType::Bool, 0x00095001,

       0        // eod
};

void AudioReader::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AudioReader *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->sendAudio(); break;
        case 1: _t->setMusicList((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 2: _t->sendLyrics((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->sendImage((*reinterpret_cast< QImage(*)>(_a[1]))); break;
        case 4: _t->errorInvalidImage((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->setAudioIndex((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->sortAudio((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->readMusic((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 8: _t->readMusic((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->setImage((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 10: _t->saveImage((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 11: _t->saveAudio((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4])),(*reinterpret_cast< QString(*)>(_a[5])),(*reinterpret_cast< QString(*)>(_a[6])),(*reinterpret_cast< QString(*)>(_a[7]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (AudioReader::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AudioReader::sendAudio)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (AudioReader::*)(QStringList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AudioReader::setMusicList)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (AudioReader::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AudioReader::sendLyrics)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (AudioReader::*)(QImage );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AudioReader::sendImage)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (AudioReader::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AudioReader::errorInvalidImage)) {
                *result = 4;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<AudioReader *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->genre(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->filePath(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->fileName(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->artist(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->title(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->album(); break;
        case 6: *reinterpret_cast< QString*>(_v) = _t->year(); break;
        case 7: *reinterpret_cast< QString*>(_v) = _t->trackNumber(); break;
        case 8: *reinterpret_cast< QImage*>(_v) = _t->image(); break;
        case 9: *reinterpret_cast< bool*>(_v) = _t->imgLoaded(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject AudioReader::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_AudioReader.data,
    qt_meta_data_AudioReader,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *AudioReader::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *AudioReader::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_AudioReader.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int AudioReader::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 10;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void AudioReader::sendAudio()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void AudioReader::setMusicList(QStringList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void AudioReader::sendLyrics(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void AudioReader::sendImage(QImage _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void AudioReader::errorInvalidImage(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
