TEMPLATE = app

QT += qml quick svg
CONFIG += c++11

SOURCES += cpp/main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    CustomSlider.qml
