#ifndef NAVIGATIONCONTROLLER_H
#define NAVIGATIONCONTROLLER_H


#include <QObject>
#include <Lib_global.h>


namespace Controller{
class LIB_EXPORT NavigationController:public QObject
{
    Q_OBJECT
public:
    explicit NavigationController(QObject* parent = nullptr)
        :QObject(parent)
    {}
signals:
    void goCreateLoginView();
    void goCreateReportView();
    void goCreateSettingView();
    void goCreateServiceGroupsView();
    void goCreatePublishersView();
    void goCreateLoginoutView();
    void goCreateDashBoardView();
    void gooCreateLoginView();

};
}
#endif
