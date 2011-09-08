include( $$(QMKBLD)/root.pri )
QT -= gui
TEMPLATE = lib
CONFIG += dynamic
TARGET = gtm
DESTDIR = $$PRJ_LIB
DEPENDPATH += .
INCLUDEPATH += ../../inc

# Input
SOURCES += gmock-gtest-all.cc
