#include "report.h"

namespace Model {
namespace View {
Report::Report(QObject *parent)
    : QAbstractTableModel(parent)
{
}

QVariant Report::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(role != Qt::DisplayRole)
            return QVariant();
        if(orientation == Qt::Horizontal){
            return mheaders.at(section); //return vertical header data at position
        }else
            return mdata.at(section);//return horizontal header data at position
}

int Report::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;

     return finalJson.size();
}

int Report::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;

    return finalJson.at(0).toJsonObject().size();
}

QVariant Report::data(const QModelIndex &index, int role) const
{
    switch (role) {
       case Qt::UserRole+1:
           //return table cell data
           return finalJson.at(index.row()).toJsonObject().value(mheaders.at(index.column()));
       case Qt::UserRole+2:
           //this is regarding header data
          if(index.row()==0)
              return true;
          else
              return false;
       default:
           break;
        }
    // FIXME: Implement me!
    return QVariant();


}

void Report::parse(QJsonDocument Data)
{

        QJsonObject jsonObject = Data.object();
        mdata.clear();
        // Sets number of items in the list as integer.
        for(const auto &model : jsonObject.keys()){
            QJsonValue values = jsonObject.value(model);
            for(const auto &items : values.toObject().keys()){
                QJsonObject item = values.toObject().value(items).toObject();
                mdata.append(items); //add first column values// horizontal header
                finalJson.append(item); //add table data
            }
        }
}
QHash<int, QByteArray> Report::roleNames() const
{
    QHash<int, QByteArray>  role;
    role[Qt::UserRole+1] = "tabledata";
    role[Qt::UserRole+2] = "heading";

    return role;
}


}
}
