include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = app

TARGET = gtm_runner
DESTDIR = $$PRJ_BIN
DEPENDPATH += . ../gtm
INCLUDEPATH += . ../../inc
LIBS += -L$$PRJ_LIB -lgtm

# Input
SOURCES += gmock_main.cc
