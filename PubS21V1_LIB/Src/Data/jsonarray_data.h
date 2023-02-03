#ifndef JSONARRAY_DATA_H
#define JSONARRAY_DATA_H

#include <QObject>
#include<QJsonArray>
#include"../PubS21V1_LIB_global.h"
#include "./datadecorator.h"

namespace Data {
class LIB_EXPORT JsonArray_data : public DataDecorator
{
    Q_OBJECT
    Q_PROPERTY(QJsonArray ui_value READ value WRITE setvalue NOTIFY valuechanged)

public:
    JsonArray_data(Entity *parent=nullptr,const QString &key="key",const QJsonArray &values={"hello"},const QString &label="label");
    QJsonArray value();
    JsonArray_data &setvalue(const QJsonArray &value);
    QJsonValue jsonvalue()const override;
    void update(const QJsonObject jsonobject) override;
signals:
    void valuechanged();
private:
        QString key;
        QJsonArray values;
        QString label;
        DataDecorator *decorator{nullptr};

};
}
#endif // JSONARRAY_DATA_H
