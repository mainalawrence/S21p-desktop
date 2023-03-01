#ifndef PUBLISHER_H
#define PUBLISHER_H

#include <QObject>
#include<QString>
#include<Lib_global.h>
#include<Database/databaseinstance.h>
namespace DATABASE {

class LIB_EXPORT Publisher : public QObject
{
    Q_OBJECT
public:
    explicit Publisher(QObject *parent = nullptr,DatabaseInstance *databaseInstance=nullptr);

signals:
private:
       DatabaseInstance *mInstance={nullptr};
};
#endif // PUBLISHER_H
}
