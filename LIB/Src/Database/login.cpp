#include "login.h"
namespace DATABASE {
Login::Login(QObject *parent, DatabaseInstance *instance) :QObject(parent),mInstance(instance)
{

}

bool Login::onLogin(QString pubcode, QString pubPassword)
{
        QStringList data;
        data.clear();
        QSqlQuery query(this->mInstance->GetDatabaseInstance());
        QString sql="SELECT * FROM publishers WHERE code=:username AND password=:password;";
        query.exec(sql);

        return true;

}

}
