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
#include"navigation-controller.h"
#include "./database_controller.h"


//#include<Printer/printecontrol.h>
#include "../PubS21V1_LIB_global.h"

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
    Q_INVOKABLE void gettimePoint();
    Q_INVOKABLE void getorders();
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
    Q_INVOKABLE void onLoginsystemsales();
    void onLogin(QString,QString);
    void onLogout();
    void onClockin(QString,QString);
    void onCreateuser();
    void onUpdateUser();
    void onCreateStock();
    void onneworder();
    void onSaleSaved();
    void onReturnorder();
    void onCreateclock();
    void onClockout();
    void onBClockclicked();
    void onLoadingReport();
    void onItemdelete(QString id,int index);
    void onDroprow(QString tablename,QString id,int index);
    void onDeletPosuser(QString id,int index);
    void onUpdateuser(QString uid);
    void onSettings();
    void onGetOrderNumber();
    //the report slots
    void onSearchBarReturn(QString Orederid);
    void onSearchBarSales(QString Date);
    void onSearchRestaurantSales(QString Date);
    void onSearchRestaurantReturn(QString Orederid);
    //the Pos user slots
    void onViewUserclock(QString userId);
    void updateordervier();
    void onUpdatestockusers();
    void onCashierviewsales(QString userId);
    void onLoadCashierView();

    // the naccw
    void onReportViewOpen();
    void onReportviewclosed();
    void onRestaurantSalesbtn(QString u_id);
    void onRestaurantReturnbtn(QString u_id);
    void onBarSalesbtn(QString u_id);
    void onBarreturnsbtn(QString u_id);
    //the clock view sales
    void   onReportViewClockOpen();
    void   onReportviewClockclosed();
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
