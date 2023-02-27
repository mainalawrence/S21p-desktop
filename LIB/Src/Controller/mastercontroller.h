#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H
#include <QObject>
#include<QTimer>
#include<chrono>
#include<QFile>
#include<QDataStream>
#include<QCryptographicHash>
#include<QString>
#include<QScopedPointer>
#include <Controller/navigation-controller.h>
#include <Controller/database_controller.h>


//#include<Printer/printecontrol.h>
#include "../Lib_global.h"

class Returns;
class Users;
class Orderdisp;
class Tables;
class itemView;
namespace Controller {

class LIB_EXPORT MasterController : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString ui_message READ message NOTIFY textChanged)
    Q_PROPERTY(Controller::NavigationController* ui_navigationController READ navigationController CONSTANT)

public:
    explicit MasterController(QObject *parent = nullptr,Database_controller *maincontroler=nullptr);
    ~MasterController();

    const QString username()const;
    const QString userRole()const;
    const QString message()const;
    const QString Userid()const;
    const QString clockin()const;
    const QString OrderCategory() const;
    const QString Category() const;
  Q_INVOKABLE void sETOrderCategory(QString category);
    NavigationController *navigationController()const;



private:

    void userssaved();


    QString getOrderNumber() const;
    void setOrderNumber(const QString &OrderNumber);

    QString getOrdbarnum() const;
    void setOrdbarnum(const QString &ordbarnum);

    QString getOrdrestNum() const;
    void setOrdrestNum(const QString &ordrestNum);
    Q_INVOKABLE  void getorderNum();
    Q_INVOKABLE void settheclock();
    QString getClockin() const;
    void setClockin(const QString &Clockin);

signals:
    void textChanged();
    void OrdbarnumChanged();
    void OrdrestnumChanged();
    void Clockinchanged();
public slots:
    void onLogin(QString,QString);


private:

    void PopulateRestSalemodel();
    void PopulateBarSalemodel();
    void PopulateRestReturnmodel();
    void PopulateBarReturnmodel();
    void PopulateUserViewmodel();
    void PopulateorderTablesmodel();
    void PopulateBarorderItesm();
    void PopulateRestorderItesm();
    void populateitemView();
    void PopulateWaiterSalemodel(QString id);
    void PopulateWaiterReturnmodel();
    void Readsettings();
    void populatethegroups();
    class Implimentation;
    QScopedPointer<Implimentation>implimentation;
    QString BusinessName;
    bool dbconnecteds;
    QString m_username;
    QString Role;
    QString userid;
    QString m_OrderCategory;
    QString m_Category;
    QString m_Clockin;
    QString m_OrderNumber;
    QString m_ordbarnum;
    QString m_ordrestNum;
    QTimer *timer;
    
};
}
#endif // MASTERCONTROLLER_H
