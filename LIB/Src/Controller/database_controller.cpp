#include "./database_controller.h"
#include<QtDebug>
#include<QSqlError>
namespace Controller {

Database_controller::Database_controller(QObject *parent) : QObject(parent)
{
    mDatabaseInstance=new DATABASE::DatabaseInstance(this);
    mLogin=new DATABASE::Login(this,mDatabaseInstance);
}
}
