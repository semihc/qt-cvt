include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = lib
CONFIG += static qtestlib
TARGET = cvt
DESTDIR = $$PRJ_LIB
DEPENDPATH += . ../gtm
INCLUDEPATH += . ../../inc
LIBS += -L$$PRJ_LIB -lgtm

# Input
HEADERS += TestRunner.hh
SOURCES += TestRunner.cc
