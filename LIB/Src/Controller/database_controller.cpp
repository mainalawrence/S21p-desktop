#include "./database_controller.h"
#include<QtDebug>
#include<QSqlError>
namespace Controller {

Database_controller::Database_controller(QObject *parent) : QObject(parent)
{
    mDatabaseInstance=new DATABASE::DatabaseInstance(this);
    mLogin=new DATABASE::Login(this,mDatabaseInstance);
    mGroups=new DATABASE::Groups(this,mDatabaseInstance);
    mReports=new DATABASE::Report(this,mDatabaseInstance);
}

DATABASE::Login *Database_controller::getLogin() const
{
    return this->mLogin;
}

DATABASE::Groups *Database_controller::getGroups() const
{
    return this->mGroups;
}

DATABASE::Report *Database_controller::getReports() const
{
    return this->mReports;
}

}
