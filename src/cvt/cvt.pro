include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = lib
CONFIG += static
QT += testlib
TARGET = cvt
DESTDIR = $$PRJ_LIB
DEPENDPATH += . ../gtm
INCLUDEPATH += . ../../inc
LIBS += -L$$PRJ_LIB -lgtm

# Input
HEADERS += $$PRJ_INC/TestRunner.hh
SOURCES += TestRunner.cc
