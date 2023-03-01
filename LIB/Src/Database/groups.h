#ifndef GROUPS_H
#define GROUPS_H
#include <QObject>
#include<QString>
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
   bool onCreateGroup(QString name);
   void ongetGroups();
   bool onRemoveGroup(QString id);
   bool onUpdateGroup(QString id);
private:
   DatabaseInstance *mInstance={nullptr};
};
#endif // GROUPS_H
}
