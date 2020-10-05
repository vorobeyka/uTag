/****************************************************************************
** Meta object code from reading C++ file 'appcore.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.14.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "src/appcore.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'appcore.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.14.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_AppCore_t {
    QByteArrayData data[16];
    char stringdata0[161];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_AppCore_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_AppCore_t qt_meta_stringdata_AppCore = {
    {
QT_MOC_LITERAL(0, 0, 7), // "AppCore"
QT_MOC_LITERAL(1, 8, 14), // "setFoldersList"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 4), // "list"
QT_MOC_LITERAL(4, 29, 15), // "sendFolderError"
QT_MOC_LITERAL(5, 45, 10), // "invalidDir"
QT_MOC_LITERAL(6, 56, 11), // "readFolders"
QT_MOC_LITERAL(7, 68, 17), // "readDialogFolders"
QT_MOC_LITERAL(8, 86, 9), // "getRecurs"
QT_MOC_LITERAL(9, 96, 9), // "setRecurs"
QT_MOC_LITERAL(10, 106, 5), // "value"
QT_MOC_LITERAL(11, 112, 7), // "dirName"
QT_MOC_LITERAL(12, 120, 6), // "recurs"
QT_MOC_LITERAL(13, 127, 10), // "themeColor"
QT_MOC_LITERAL(14, 138, 12), // "generalColor"
QT_MOC_LITERAL(15, 151, 9) // "textColor"

    },
    "AppCore\0setFoldersList\0\0list\0"
    "sendFolderError\0invalidDir\0readFolders\0"
    "readDialogFolders\0getRecurs\0setRecurs\0"
    "value\0dirName\0recurs\0themeColor\0"
    "generalColor\0textColor"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_AppCore[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       5,   72, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x06 /* Public */,
       4,    1,   57,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    1,   60,    2, 0x0a /* Public */,
       6,    0,   63,    2, 0x2a /* Public | MethodCloned */,
       7,    1,   64,    2, 0x0a /* Public */,
       7,    0,   67,    2, 0x2a /* Public | MethodCloned */,
       8,    0,   68,    2, 0x0a /* Public */,
       9,    1,   69,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QStringList,    3,
    QMetaType::Void, QMetaType::QString,    5,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Int,
    QMetaType::Void, QMetaType::Int,   10,

 // properties: name, type, flags
      11, QMetaType::QString, 0x00095001,
      12, QMetaType::Int, 0x00095103,
      13, QMetaType::QString, 0x00095103,
      14, QMetaType::QString, 0x00095103,
      15, QMetaType::QString, 0x00095103,

       0        // eod
};

void AppCore::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AppCore *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setFoldersList((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->sendFolderError((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->readFolders((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->readFolders(); break;
        case 4: _t->readDialogFolders((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->readDialogFolders(); break;
        case 6: { int _r = _t->getRecurs();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 7: _t->setRecurs((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (AppCore::*)(QStringList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AppCore::setFoldersList)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (AppCore::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AppCore::sendFolderError)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<AppCore *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->dirName(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->getRecurs(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->getThemeColor(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->getGeneralColor(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->getTextColor(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<AppCore *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->setRecurs(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setThemeColor(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setGeneralColor(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setTextColor(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject AppCore::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_AppCore.data,
    qt_meta_data_AppCore,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *AppCore::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *AppCore::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_AppCore.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int AppCore::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void AppCore::setFoldersList(QStringList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void AppCore::sendFolderError(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
