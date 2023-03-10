#include "databaseinstance.h"
#include<QDebug>
//nice
namespace DATABASE {
DatabaseInstance::DatabaseInstance(QObject *parent) : Main_DatabaseController(parent)
{
    if(databaseinitialization()){
        QSqlQuery query("SELECT * FROM groups");
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
    QString qstatement="CREATE TABLE IF NOT EXISTS "+tableName+"(id BIGSERIAL NOT NULL,code text NOT NULL PRIMARY KEY,json JSONB NOT NULL);";
    return query.exec(qstatement);
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

bool DatabaseInstance::CreateRow(const QString &Tablename, const QString UID, const QJsonObject &jsonObject)const
{
    QSqlQuery query(db);
    if(Tablename.isEmpty()|| UID.isEmpty()) return false;

    QString sqlstatement="INSERT INTO "+  Tablename +" (UID,json) VALUES(:UID,:json)";
    if(!query.prepare(sqlstatement)) return  false;
    query.bindValue(":UID",QVariant(UID));
    query.bindValue(":json",QVariant(QJsonDocument(jsonObject).toJson(QJsonDocument::Compact)).toString());
    if(!query.exec()) return  false;
    return  query.numRowsAffected()>0;
}

bool DatabaseInstance::DeleteRow(const QString &Tablename, const QString &UID)const
{
    QSqlQuery query(db);
    QString sqlstatement;
    if(Tablename.isEmpty()||UID.isEmpty()) return false;
    if(Tablename=="users"){
        sqlstatement  ="DELETE  FROM "+Tablename +" WHERE uid=:id";
    }
    else {
        sqlstatement  ="DELETE FROM "+Tablename +" WHERE uid=:id";
    }

    if(!query.prepare(sqlstatement)) return  false;
    query.bindValue(":id",UID);
    if(!query.exec()) return  false;
    return  query.numRowsAffected()>0;

}

bool DatabaseInstance::DeleteRowS(const QString &Tablename, const QString &id) const
{
    QSqlQuery query(db);
    QString sqlstatement;
    sqlstatement  ="DELETE  FROM "+Tablename +" WHERE id=:id";
    if(!query.prepare(sqlstatement)) return  false;
    query.bindValue(":id",id);
    if(!query.exec()) return  false;
    return  query.numRowsAffected()>0;
}

QJsonArray DatabaseInstance::Find(const QString &Tablename, const QString &searchText) const
{
    QSqlQuery query(db);
        if(Tablename.isEmpty()||searchText.isEmpty()) return {};
        QString sqlStatement="SELECT json FROM " + Tablename + "WHERE lower(json) like :searchText";
        if(!query.prepare(sqlStatement)) return {};
        query.bindValue(":searchText",QVariant("% "+searchText.toLower()+"%"));
        if(!query.exec()) return {};
        QJsonArray returnvalue;

        while (query.next()) {
            auto json = query.value(0).toByteArray();
            auto jsonDocument = QJsonDocument::fromJson(json);
            if (jsonDocument.isObject()) {
                returnvalue.append(jsonDocument.object());
            }
        }
        return returnvalue;
}

bool DatabaseInstance::updateRow(const QString &tablename, const QString &UID, const QJsonObject &jsonobject)const
{
    QSqlQuery query(db);
    if(tablename.isEmpty()||UID.isEmpty()||jsonobject.isEmpty()) return false;
    QString sqlstatement="UPDATE"+tablename+"SET json=:json WHERE id=:id";
    if(!query.prepare(sqlstatement)) return false;
    query.bindValue(":id",QVariant(UID));
    query.bindValue(":json",QVariant(QJsonDocument(jsonobject).toJson(QJsonDocument::Compact)).toString());
    if(!query.exec())return false;
    return query.numRowsAffected()>0;

}

QJsonObject DatabaseInstance::readRow(const QString &Tablename, QString &UID)const
{
    QSqlQuery query(db);
    if(Tablename.isEmpty()||UID.isEmpty()) return {};
    QString sqlStatement="SELECT json FROM "+Tablename+"WHERE id=:id";
    if(!query.prepare(sqlStatement)) return {};
    query.bindValue(":id",QVariant(UID));
    if(!query.exec()) return  {};
    if(!query.first())return {};
    auto json=query.value(0).toByteArray();
    auto jsonDocument=QJsonDocument::fromJson(json);
    if(jsonDocument.isEmpty())return {};
    return  jsonDocument.object();

}

QJsonArray DatabaseInstance::readTable(const QString &Tablename) const
{

    QJsonArray doc;
    if(Tablename.isEmpty()) return {};
    QSqlQuery query(db);
    QString qstatement="SELECT uid , json From "+Tablename;
    if(!query.prepare(qstatement)) return {};
    if(!query.exec()) return  {};
    if(!query.first())return {};
    while (query.next()) {
       doc.append('{'+QVariant("\"uid\"").toByteArray()+':'+'\"'+query.value(0).toByteArray()+'\"'+','+QVariant("\"data\"").toString()+':'+query.value(1).toByteArray()+'}');
    }
    return doc;
}QJsonArray DatabaseInstance::readTableByPrivilage(const QString &Tablename, const QString privilage)const
{
    QJsonArray doc;
    if(Tablename.isEmpty()) return {};
    QSqlQuery query(db);
    QString qstatement="SELECT id ,json From "+Tablename+"  WHERE json->>'priv'=':priv'";
    query.bindValue(":priv",privilage);
    if(!query.prepare(qstatement)) return {};
    if(!query.exec()) return  {};
    if(!query.first())return {};
    while (query.next()) {
           doc.append('{'+QVariant("\"uid\"").toByteArray()+':'+'\"'+query.value(0).toByteArray()+'\"'+','+QVariant("\"data\"").toString()+':'+query.value(1).toByteArray()+'}');
    }
    return doc;
}

QJsonArray DatabaseInstance::readTableMultipleTables(const QString &Table1name, const QString &Table2name, const QString &join1, const QString &join2) const
{
    QJsonArray doc;
    if(Table1name.isEmpty()|| Table2name.isEmpty() || join1.isEmpty() || join2.isEmpty()){
        return {};
    }

    QSqlQuery query(db);
        QString qstatement="SELECT id ,json From "+Table1name+" JOIN "+Table2name +"ON "+Table1name+"."+join1+ "="+Table2name+"."+join2;
        if(!query.prepare(qstatement)) return {};
        if(!query.exec()) return  {};
        if(!query.first())return {};
        while (query.next()) {
               doc.append('{'+QVariant("\"uid\"").toByteArray()+':'+'\"'+query.value(0).toByteArray()+'\"'+','+QVariant("\"data\"").toString()+':'+query.value(1).toByteArray()+'}');
        }
        return doc;
}

QJsonArray DatabaseInstance::readTableDate(const QString &Tablename, const QString month, const QString year)const
{
    QJsonArray doc;
    if(Tablename.isEmpty()) return {};
    QSqlQuery query(db);
    QString qstatement="SELECT id ,json From "+Tablename+"  WHERE json->>'month'=':month' AND json->>'year'=:year";
    query.bindValue(":month",month);
    query.bindValue(":year",year);
    if(!query.prepare(qstatement)) return {};
    if(!query.exec()) return  {};
    if(!query.first())return {};
    while (query.next()) {
           doc.append('{'+QVariant("\"uid\"").toByteArray()+':'+'\"'+query.value(0).toByteArray()+'\"'+','+QVariant("\"data\"").toString()+':'+query.value(1).toByteArray()+'}');
    }
    return doc;
}

QJsonDocument DatabaseInstance::readTable_Id(const QString &Tablename, const QString id)const
{
    QJsonDocument doc;
    if(Tablename.isEmpty()) return {};
    QSqlQuery query(db);
    QString qstatement="SELECT id ,json From "+Tablename +" WHERE json->>'UID'=':id'";
    query.bindValue(":id",id);
    if(!query.prepare(qstatement)) return {};
    if(!query.exec()) return  {};
    if(!query.first())return {};
    while (query.next()) {
        auto jsonkey=query.value(0).toString();
        auto json= query.value(1).toByteArray();
        //QJsonObject w(jsonkey,json);
        doc=QJsonDocument::fromJson(json);
        if(doc.isEmpty())return {};
        qDebug()<<json;
    }
    return doc;
}


}
