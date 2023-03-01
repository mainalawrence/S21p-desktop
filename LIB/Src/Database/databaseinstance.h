#ifndef DATABASEINSTANCE_H
#define DATABASEINSTANCE_H
#include <QObject>
#include <QSqlQuery>
#include<QSqlDatabase>
#include<Lib_global.h>

namespace DATABASE {
class LIB_EXPORT  DatabaseInstance : public QObject
{
    Q_OBJECT
public:
    explicit DatabaseInstance(QObject *parent = nullptr);
    bool databaseinitialization();
    bool createTable();
    bool CreatejsonTable(QString tableName)const ;
   QSqlDatabase GetDatabaseInstance() const;

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

