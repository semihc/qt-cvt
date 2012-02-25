#include <QtTest/QtTest>

#include "TestRunner.hh"

#include <QString>
#include <QStringList>
#include <QList>
#include <QVector>

#include "gmock/gmock.h"
#include "gtest/gtest.h"

using namespace std;



void TestRunner::tests()
{
  m_rv = RUN_ALL_TESTS();
  QVERIFY(0==m_rv);
}


// We don't use following macro to fine tune the runner
//QTEST_MAIN(TestRunner) 

int main(int argc, char* argv[])
{
  // Since Google Mock depends on Google Test, InitGoogleMock() is
  // also responsible for initializing Google Test.  Therefore there's
  // no need for calling testing::InitGoogleTest() separately.
  testing::InitGoogleMock(&argc, argv);
  
  QCoreApplication app(argc, argv);
  QStringList args = QCoreApplication::arguments();

  QStringList tr_args;
  QStringList qt_args;
  QString s;

  // Copy over the first argument which is program name
  s = args.at(0);
  tr_args.push_back(s);
  qt_args.push_back(s);

  QStringList* dest_args = &qt_args;
  for(int i=1; i<args.size(); ++i) {
    s = args[i];
    if(s=="--")  { // if -- is specified then 
      dest_args = &tr_args; // destination args is tr_args
      continue;
    }
    dest_args->push_back(s);
  }

  // qDebug() << args.join(",");
  // qDebug() << "qt" << qt_args.join(",");
  // qDebug() << "tr" << tr_args.join(",");
  
  TestRunner tr(tr_args);
  int rv;

  rv = QTest::qExec(&tr, qt_args);
  return rv;
}
