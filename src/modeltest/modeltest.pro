include( $$(QMKBLD)/root.pri )
QT -= gui
TEMPLATE = lib
CONFIG += static
TARGET = modeltest
DESTDIR = $$PRJ_LIB
DEPENDPATH += .
INCLUDEPATH += ../../inc

SOURCES         += modeltest.cpp dynamictreemodel.cpp
HEADERS         += $$PRJ_INC/modeltest.h $$PRJ_INC/dynamictreemodel.h



