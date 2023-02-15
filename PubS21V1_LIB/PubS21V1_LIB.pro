QT -= gui
QT  +=sql network qml
QT += printsupport


TEMPLATE = lib

DEFINES += LIB_LIBRARY

CONFIG += c++20

QMAKE_CXXFLAGS_WARN_ON = -Wall -Wno-unused-parameter

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
DEFINES += LIB_LIBRARY
TARGET =PubS21V1_LIB
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
    Src/LIB_global.h \
    Src/Model/View/report.h \
    Src/PubS21V1_LIB_global.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
