#include "dbreport.h"

namespace DATABASE {

Report::Report(QObject *parent,DatabaseInstance *instance)
    : QObject(parent),mInstance(instance)
{
mInstance=new DatabaseInstance(this);
}
bool Report::onCreateReport(QJsonObject json)
{
    return mInstance->CreateRow(mTabeName,mUID.createUuid().toString(),json);
}

QJsonArray Report::onGetReports()
{
    return mInstance->readTable(mTabeName);
}
QJsonObject Report::onGetReport(QString id)
{
    return mInstance->readRow(mTabeName,id);
}

bool Report::onRemoveReport(QString id)
{

    return  mInstance->DeleteRow(mTabeName,id);
}

bool Report::onUpdateReport(QString id,QJsonObject json)
{
    return  mInstance->updateRow(mTabeName,id,json);
}

bool Report::onGetReortbyDate(QDate date)
{
    return true;
}

}
