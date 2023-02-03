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
#include "../PubS21V1_LIB_global.h"
#include<QVector>
#include "./Main_Databasecontroller.h"
#include<QFile>

namespace Controller

{
class LIB_EXPORT  Database_controller:public Main_DatabaseController
{
    Q_OBJECT
public:
    explicit Database_controller(QObject *parent = nullptr);
    bool CreatetableRow(QString data)const;

    bool CreateRow(const QString &Tablename,const QString UID,const QJsonObject &jsonObject)const;
    bool DeleteRow(const QString &Tablename,const QString &id)const ;
    bool DeleteRowS(const QString &Tablename,const QString &id)const;
    bool updateRow(const QString &tablename,const QString &id,const QJsonObject &jsonobject)const ;
    QJsonObject readRow(const QString &Tablename, QString &id)const ;
    QJsonArray Find(const QString &Tablename, const QString &searchText)const ;
    bool CreatejsonTable(QString tableName)const ;
    bool CreateOderTable(QString tableName)const;
    bool CreateorderRow(const QString &Tablename,const QJsonObject &jsonObject)const;
    bool updateclockRow(const QString,const QJsonObject &jsonobject);
    QString getorderNumber(QString Tnumber);
    // bool CreateSaleTable(QString tableName)const;
    QHash<QString,QVariant> readTable(const QString &Tablename)const ;
    QJsonDocument readTable_Date(const QString &Tablename,const QString Date)const ;
    QJsonDocument readTable_Id(const QString &Tablename,const QString id)const ;
    QString readclock(const QString id);
    QString getServer() const;
    void setServer(const QString &value);
    QString getDatabaseName() const;
    void setDatabaseName(const QString &value);
    bool createTable();
    bool creatabletable();
    QStringList res;

    //public slots:
    QStringList logincheck(QString ,QString);

    QString getServerName() const;
    void setServerName(const QString &value);

    QString getDataBaseUserName() const;
    void setDataBaseUserName(const QString &value);

    QString getDatabasepassword() const;
    void setDatabasepassword(const QString &value);

    int getDatabaseport() const;
    void setDatabaseport(int value);

    bool getDatabaseconnected() const;

signals:
    void Databaseconnected();
    void dbconnected(bool);

private:
    Main_DatabaseController* maindb{nullptr};
    QSqlDatabase db;
    bool databaseinitialization();
    QString ServerName;
    QString DatabaseName;
    QString DataBaseUserName;
    QString Databasepassword;
    int databaseport;
    void Readfile();
    bool m_databaseconnected=false;
};
}
#endif // DATABASE_CONTROLLER_H
