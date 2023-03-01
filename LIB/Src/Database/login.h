#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>
#include<QString>
#include<Lib_global.h>
#include<Database/databaseinstance.h>

namespace DATABASE {

class LIB_EXPORT Login :public QObject
{
    Q_OBJECT
public:
    explicit Login(QObject *parent = nullptr,DatabaseInstance *databaseInstance=nullptr);

signals:
public slots:
   bool onLogin(QString pubcode,QString pubPassword);

private:
   DatabaseInstance *mInstance={nullptr};



};
#endif // LOGIN_H
}
