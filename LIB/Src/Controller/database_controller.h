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
#include<Database/groups.h>
#include<Database/dbreport.h>


namespace Controller
{
class LIB_EXPORT  Database_controller:public QObject
{
    Q_OBJECT
    Q_PROPERTY( DATABASE::Login* ui_Logins READ getLogin CONSTANT)
    Q_PROPERTY( DATABASE::Groups* ui_Groups READ getGroups CONSTANT)
    Q_PROPERTY(DATABASE::Report* ui_Reports READ getReports CONSTANT)
public:
    explicit Database_controller(QObject *parent = nullptr);
    DATABASE::Login *getLogin() const;
    DATABASE::Groups *getGroups() const;
    DATABASE::Report *getReports() const;
signals:

private:
    Main_DatabaseController* maindb{nullptr};
    DATABASE::DatabaseInstance *mDatabaseInstance={nullptr};
    DATABASE::Login *mLogin={nullptr};
    DATABASE::Groups *mGroups={nullptr};
    DATABASE::Report *mReports={nullptr};
};
}
#endif // DATABASE_CONTROLLER_H
