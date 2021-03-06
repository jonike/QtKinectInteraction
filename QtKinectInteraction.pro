#-------------------------------------------------
#
# Project created by QtCreator 2017-10-23T13:48:48
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtKinectInteraction
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += _USE_OPENCV
DEFINES += _USE_MATH_DEFINES
DEFINES += "WINVER=0x0500"

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    EasyKinect.cpp \
    viewmodel.cpp \
    kinectopencvtools.cpp \
    jointfilter.cpp \
    dollarone.cpp \
    statemachine.cpp \
    handprocess.cpp \
    qgraphicsviewwithmouseevent.cpp

HEADERS += \
        mainwindow.h \
    EasyKinect.h \
    viewmodel.h \
    KinectOpenCvTools.h \
    jointfilter.h \
    dollarone.h \
    statemachine.h \
    handprocess.h \
    qgraphicsviewwithmouseevent.h \
    publictools.h

FORMS += \
        mainwindow.ui

win64: LIBS += -lIphlpapi

# Kinect config
INCLUDEPATH += "C:/Program Files/Microsoft SDKs/Kinect/v2.0_1409/inc"
LIBS += \
        "C:/Program Files/Microsoft SDKs/Kinect/v2.0_1409/Lib/x64/Kinect20.lib" \
        "C:/Program Files/Microsoft SDKs/Kinect/v2.0_1409/Lib/x64/Kinect20.Face.lib" \
        "C:/Program Files/Microsoft SDKs/Kinect/v2.0_1409/Lib/x64/Kinect20.Fusion.lib" \
        "C:/Program Files/Microsoft SDKs/Kinect/v2.0_1409/Lib/x64/Kinect20.VisualGestureBuilder.lib"

# OpenCV 3.1.0 config
INCLUDEPATH += "C:/Libs/OpenCV31/opencv/build/include"
CONFIG(debug)
{
    LIBS += "C:/Libs/OpenCV31/opencv/build/x64/vc14/lib/opencv_world310d.lib"
}
CONFIG(release)
{
    LIBS += "C:/Libs/OpenCV31/opencv/build/x64/vc14/lib/opencv_world310.lib"
}

# Windows Kits
LIBS += "C:/Program Files (x86)/Windows Kits/8.1/Lib/winv6.3/um/x64/user32.lib"

DISTFILES += \
    .gitignore \
    README.md

RESOURCES += \
    resources.qrc
