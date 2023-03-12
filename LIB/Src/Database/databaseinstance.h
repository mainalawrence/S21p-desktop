#ifndef DATABASEINSTANCE_H
#define DATABASEINSTANCE_H
#include <QObject>
#include <QSqlQuery>
#include<QSqlDatabase>
#include<Lib_global.h>
#include<QByteArray>
#include<Controller/Main_Databasecontroller.h>

namespace DATABASE {
class LIB_EXPORT  DatabaseInstance : public Controller::Main_DatabaseController
{
    Q_OBJECT
public:
    explicit DatabaseInstance(QObject *parent = nullptr);
    bool databaseinitialization();
    bool createTable();
    bool CreatejsonTable(QString tableName)const ;
    QSqlDatabase GetDatabaseInstance() const;

    bool CreateRow(const QString &Tablename,const QString UID,const QJsonObject &jsonObject)const;
    bool DeleteRow(const QString &Tablename,const QString &UID)const;
    bool updateRow(const QString &tablename,const QString &UID,const QJsonObject &jsonobject)const;
    QJsonObject readRow(const QString &Tablename, QString &id)const;
    bool DeleteRowS(const QString &Tablename, const QString &id) const;
    QJsonArray Find(const QString &Tablename, const QString &searchText)const;
    QJsonArray readTable(const QString &Tablename) const;
    QJsonArray readTableDate(const QString &Tablename, const QString month,const QString year)const;
    QJsonDocument readTable_Id(const QString &Tablename, const QString id)const;
   QJsonArray readTableByPrivilage(const QString &Tablename, const QString privilage)const;
   QJsonArray readTableMultipleTables(const QString &Table1name,const QString &Table2name,const QString &join1,const QString &join2)const;
   void DatabaseInizialization();
private:
    QSqlDatabase db;
    QString mDbPassword="pass";
    QString mDbUsername="postgres";
    int mDbPort=5432;
    QString DATABASEName="pubs21";
    QString DataBaseURL="127.0.0.1";
};
}
#endif // DATABASEINSTANCE_H

