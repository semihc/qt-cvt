include( $$(QMKBLD)/root.pri )
QT -= gui
TEMPLATE = lib
CONFIG += static
TARGET = gtm
DESTDIR = $$PRJ_LIB
DEPENDPATH += .
INCLUDEPATH += ../../inc

# Input
SOURCES += gmock-gtest-all.cc
