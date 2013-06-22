#ifndef CVT_TEST_RUNNER_HH
#define CVT_TEST_RUNNER_HH

#include <QObject>
#include <QStringList>

// FORWARDS
int CVT_main(int argc, char* argv[]);
class QStringList;


class TestRunner: public QObject
{
  Q_OBJECT

  public:
  // CREATORS
  TestRunner(const QStringList& args)
      : m_args(args), m_rv(0) {}

  // ACCESSORS
  int getRv() const  { return m_rv; }

  // MODIFIERS
  void setArgs(const QStringList& args)
  { m_args = args; }
                                               
  private slots:
  void tests();


 private:
  QStringList m_args;
  int m_rv;

};

#endif
