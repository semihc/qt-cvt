include( $$(QMKBLD)/root.pri )

TEMPLATE = app
QT += widgets testlib
QT -= gui

TARGET = model_test
DESTDIR = $$PRJ_BIN
DEPENDPATH += . 
INCLUDEPATH += . $$PRJ_INC
LIBS += -L$$PRJ_LIB -lmodeltest

# Input
HEADERS += 
SOURCES += tst_modeltest.cpp
