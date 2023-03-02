#include "groups.h"
#include<QDebug>
#include<QJsonDocument>
namespace DATABASE {
Groups::Groups(QObject *parent,DatabaseInstance *databaseInstance)
    : QObject(parent),mInstance(databaseInstance)
{

}
bool Groups::onCreateGroup(QJsonObject json)
{
    return mInstance->CreateRow(mTabeName,mUID.createUuid().toString(),json);
}

QJsonArray Groups::onGetGroups()
{
    QJsonArray data;
    auto doc=QJsonDocument::fromJson(mInstance->readTable(mTabeName));
    qDebug()<<doc.object();
    return data;
}
QJsonObject Groups::onGetGroup(QString id)
{
    return mInstance->readRow(mTabeName,id);
}

bool Groups::onRemoveGroup(QString id)
{
        qDebug()<<id;
    return  mInstance->DeleteRow(mTabeName,id);
}

bool Groups::onUpdateGroup(QString id,QJsonObject json)
{
    return  mInstance->updateRow(mTabeName,id,json);
}
}

