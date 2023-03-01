#ifndef DATABASE_CONTROLLER_H
#define DATABASE_CONTROLLER_H

#include <QObject>
#include<QJsonArray>
#include<QJsonObject>
#include<QJsonValue>
#include<QJsonDocument>
#include<QSql>
#include<QSqlQuery>
#include<QSqlDatabase>
#include<QDateTime>
#include<QVariant>
#include <Lib_global.h>
#include<QVector>
#include <Controller/Main_Databasecontroller.h>
#include<QFile>
#include<Database/databaseinstance.h>
#include<Database/login.h>

namespace Controller
{
class LIB_EXPORT  Database_controller:public QObject
{
    Q_OBJECT
public:
    explicit Database_controller(QObject *parent = nullptr);

signals:

private:
    Main_DatabaseController* maindb{nullptr};
    DATABASE::DatabaseInstance *mDatabaseInstance={nullptr};
    DATABASE::Login *mLogin={nullptr};
};
}
#endif // DATABASE_CONTROLLER_H
