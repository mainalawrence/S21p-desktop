#ifndef REPORT_H
#define REPORT_H

#include <QObject>
#include<QUuid>
#include<QString>
#include<QJsonDocument>
#include<Lib_global.h>
#include<Database/databaseinstance.h>
#include<QDate>

namespace DATABASE {
class LIB_EXPORT Report : public QObject
{
    Q_OBJECT
public:
    explicit Report(QObject *parent = nullptr,DatabaseInstance *databaseInstance=nullptr);


public slots:
    bool onCreateReport(QJsonObject json);
    QJsonArray onGetReports();
    QJsonObject onGetReport(QString id);
    bool onRemoveReport(QString id);
    bool onUpdateReport(QString id,QJsonObject json);
    QJsonArray onGetReortbyDate(QString month,QString year);
    QJsonArray onGetReortbyPrivilage(QString privilage);
signals:
private:
   DatabaseInstance *mInstance={nullptr};
   QString mTabeName="reports";
   QUuid mUID;
};

}
#endif // REPORT_H
