#include "databaseinstance.h"
#include<QDebug>

namespace DATABASE {
DatabaseInstance::DatabaseInstance(QObject *parent) : QObject(parent)
{
    if(databaseinitialization()){
        if(createTable()){
            qDebug() << "Database tables created";
        }
        else {
            qDebug() << "ERROR: Unable to create database tables";
        }
    }
    else {
        qDebug() << "ERROR: Unable to open database";
    }
}
bool DatabaseInstance::createTable()
{
    return (CreatejsonTable("publishers"),
            CreatejsonTable("reports"),
            CreatejsonTable("groups")
            );

}

bool DatabaseInstance::CreatejsonTable(QString tableName) const
{
    QSqlQuery query(db);
    QString qstatement="CREATE TABLE IF NOT EXISTS "+tableName+"(id BIGSERIAL NOT NULL,UID text NOT NULL PRIMARY KEY,json JSONB NOT NULL);";
    if(!query.prepare(qstatement)) return false;
    return query.exec();
}

QSqlDatabase DatabaseInstance::GetDatabaseInstance() const
{
    return this->db;
}

bool DatabaseInstance::databaseinitialization()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName(DataBaseURL);
    db.setDatabaseName(DATABASEName);
    db.setUserName(mDbUsername);
    db.setPassword(mDbPassword);
    return db.open();
}

}
