#include "mastercontroller.h"
#include<QDebug>
namespace Controller {


class MasterController::Implimentation
{
public:
    Implimentation(MasterController* _masterc,Database_controller *_maindatabaec)
        :masterC(_masterc),database(_maindatabaec)
    {
        navigation=new NavigationController(masterC);

    }
    NavigationController *navigation{nullptr};
    MasterController *masterC{nullptr};

    Database_controller *database{nullptr};


};
MasterController::MasterController(QObject *parent, Database_controller *maincontroler) :
    QObject(parent)
{
    implimentation.reset(new Implimentation(this,maincontroler));
    getorderNum();




}
MasterController::~MasterController()
{


}

const QString MasterController::username() const
{
    return m_username;

}

const QString MasterController::userRole() const
{
    return Role;

}
const QString MasterController::message() const
{
    return "This is just for  testing..........";

}

const QString MasterController::Userid() const
{
    return userid;
}

const QString MasterController::clockin() const
{
    return m_Clockin;
}

const QString MasterController::OrderCategory() const
{
    return m_OrderCategory;
}

const QString MasterController::Category() const
{
    return m_Category;
}

void MasterController::sETOrderCategory(QString category)
{
    m_OrderCategory.clear();
    m_OrderCategory=category;
}

NavigationController *MasterController::navigationController()const
{
    return implimentation->navigation;

}






void MasterController::gettimePoint()
{

}



void MasterController::onLogin(QString use,QString pass)
{
    m_username="";
    Role="";
    auto ress= this->implimentation->database->logincheck(use,pass);
    if(!ress.isEmpty()){
        m_username=ress.at(1);
        Role= ress.at(2).toLower();
        userid=ress.at(0);

    }

    else {
        qDebug()<<"wrong password or username";

    }
}

void MasterController::onLogout()
{
    m_username="";
    Role="";

    this->navigationController()->goCreateLoginView();
}

void MasterController::onBClockclicked()
{
    implimentation->navigation->goCreateLoginView();
}


void MasterController::onGetOrderNumber()
{
    getorderNum();
}

void MasterController::onSearchBarReturn(QString Orederid)//returns
{
    //  need to convert from json document ot vector;
    auto data= this->implimentation->database->readTable_Id("bar_Returns",Orederid);
    //implimentation->BarReturnReport->populate();

}

void MasterController::onSearchBarSales(QString Date)
{
    auto data=implimentation->database->readTable_Date("bar_sales",Date);
    //implimentation->BarSaleReport->setSales(data);
}

void MasterController::onSearchRestaurantSales(QString Date)
{
    auto data= this->implimentation->database->readTable_Date("restaurant_orders",Date);
    // implimentation->RestReturnReport->populate();
}

void MasterController::onSearchRestaurantReturn(QString Orederid)//returtn
{
    auto data= this->implimentation->database->readTable_Id("restaurant_Returns",Orederid);
    // implimentation->RestReturnReport->populate();

}


void MasterController::updateordervier()
{

}








void MasterController::getorderNum()
{

    m_ordbarnum=implimentation->database->getorderNumber("bar_orders");
    m_ordrestNum=implimentation->database->getorderNumber("restaurant_orders");
}

void MasterController::settheclock()
{
    m_Clockin=implimentation->database->readclock(userid+QDate::currentDate().toString("MMMMdyyyy"));

}

void MasterController::Readsettings()
{
    QJsonDocument data;
    QFile file("settings.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return;
    while (!file.atEnd()) {
        data =QJsonDocument::fromJson(file.readAll());
    }
    m_Category=data["AppCategorly"].toString();
    BusinessName=data["BusinessName"].toString();
}


QString MasterController::getClockin() const
{
    return m_Clockin;
}

void MasterController::setClockin(const QString &Clockin)
{
    m_Clockin = Clockin;
}




QString MasterController::getOrdrestNum() const
{
    return m_ordrestNum;
}

void MasterController::setOrdrestNum(const QString &ordrestNum)
{
    m_ordrestNum = ordrestNum;
}

QString MasterController::getOrdbarnum() const
{
    return m_ordbarnum;
}

void MasterController::setOrdbarnum(const QString &ordbarnum)
{
    m_ordbarnum = ordbarnum;
}

QString MasterController::getOrderNumber() const
{
    return m_OrderNumber;
}

void MasterController::setOrderNumber(const QString &OrderNumber)
{
    m_OrderNumber = OrderNumber;
}



void MasterController::PopulateWaiterSalemodel(QString id)
{
Q_UNUSED(id)
}
void MasterController::PopulateWaiterReturnmodel()
{

}
}
