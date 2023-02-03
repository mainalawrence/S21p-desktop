#ifndef REPORT_H
#define REPORT_H

#include <QAbstractTableModel>
#include "../../PubS21V1_LIB_global.h"
#include<QJsonDocument>
#include <QJsonObject>
#include <QJsonDocument>
#include <QJsonObject>
#include<QStringList>
#include <QVector>
#include<QVariantList>
#include<QVariant>

namespace Model {
namespace View {

class LIB_EXPORT Report : public QAbstractTableModel
{
    Q_OBJECT
    enum{
        code=1,
        year,
        Month,
        Publications,
        Videos,
        Hours,
        ReturnVisits,
        Studies,
        Comment
    };
public:
    explicit Report(QObject *parent = nullptr);

    // Header:
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;
    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    QHash<int, QByteArray> roleNames() const override;
    void parse(QJsonDocument Data);

private:
    QVariantList finalJson;
    QStringList mheaders ={ "code","year","Month","Publications","Videos","Hours","ReturnVisits","Studies", "Comment"};
    QStringList mdata;

};

#endif // REPORT_H

}
}
