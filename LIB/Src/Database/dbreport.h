#ifndef REPORT_H
#define REPORT_H

#include <QObject>
#include<QString>
#include<Lib_global.h>
#include<Database/databaseinstance.h>

namespace DATABASE {
class LIB_EXPORT Report : public QObject
{
    Q_OBJECT
public:
    explicit Report(QObject *parent = nullptr,DatabaseInstance *databaseInstance=nullptr);

signals:
private:
   DatabaseInstance *mInstance={nullptr};

};

}
#endif // REPORT_H
