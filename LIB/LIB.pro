QT -= gui

QT  +=sql network qml
QT += printsupport

TEMPLATE = lib
DEFINES += LIB_LIBRARY
TARGET +=s21
CONFIG += c++11
DEFINES += QT_DEPRECATED_WARNINGS
QMAKE_CXXFLAGS_WARN_ON = -Wall -Wno-unused-parameter

SOURCES += \
    Src/Controller/database_controller.cpp \
    Src/Controller/mastercontroller.cpp \
    Src/Data/datadecorator.cpp \
    Src/Data/date_data.cpp \
    Src/Data/double_data.cpp \
    Src/Data/enumerator_data.cpp \
    Src/Data/int_data.cpp \
    Src/Data/jsonarray_data.cpp \
    Src/Data/string_data.cpp \
    Src/Database/databaseinstance.cpp \
    Src/Database/login.cpp \
    Src/Model/View/report.cpp

HEADERS += \
    Src/Controller/Main_Databasecontroller.h \
    Src/Controller/database_controller.h \
    Src/Controller/mastercontroller.h \
    Src/Controller/navigation-controller.h \
    Src/Data/Data_collection.h \
    Src/Data/datadecorator.h \
    Src/Data/date_data.h \
    Src/Data/double_data.h \
    Src/Data/enumerator_data.h \
    Src/Data/int_data.h \
    Src/Data/jsonarray_data.h \
    Src/Data/string_data.h \
    Src/Database/databaseinstance.h \
    Src/Database/login.h \
    Src/Lib_global.h \
    Src/Model/View/report.h

INCLUDEPATH +=Src
# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
