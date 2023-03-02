#ifndef GROUPS_H
#define GROUPS_H
#include <QObject>
#include<QString>
#include<QUuid>
#include<Lib_global.h>
#include<Database/databaseinstance.h>

namespace DATABASE {
class LIB_EXPORT Groups : public QObject
{
    Q_OBJECT
public:
    explicit Groups(QObject *parent = nullptr,DatabaseInstance *databaseInstance=nullptr);
signals:
public slots:
   bool onCreateGroup(QJsonObject json);
   QJsonArray onGetGroups();
   QJsonObject onGetGroup(QString id);
   bool onRemoveGroup(QString id);
   bool onUpdateGroup(QString id,QJsonObject json);
private:
   DatabaseInstance *mInstance={nullptr};
   QString mTabeName="groups";
   QUuid mUID;
};
#endif // GROUPS_H
}
