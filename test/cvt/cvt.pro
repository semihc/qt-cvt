include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = app
QT += testlib
TARGET = cvt_test
DESTDIR = $$PRJ_BIN
DEPENDPATH += . ../src/gtm
INCLUDEPATH += . $$PRJ_INC
LIBS += -L$$PRJ_LIB -lgtm

# Use cvt runner, integrated with Qt qtestlib
LIBS += -lcvt
# Use gtest/gmock runner
#LIBS += -lgtm_runner

# Input
HEADERS += sample1.h
SOURCES += sample1.cc sample1_unittest.cc
