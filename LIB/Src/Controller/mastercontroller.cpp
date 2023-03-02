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
        database=new Database_controller(masterC);
    }
    NavigationController *navigation{nullptr};
    MasterController *masterC{nullptr};
    Database_controller * database={nullptr};

};

MasterController::MasterController(QObject *parent, Database_controller *maincontroler) :
    QObject(parent)
{
    implimentation.reset(new Implimentation(this,maincontroler));

}
MasterController::~MasterController()
{

}

const QString MasterController::username() const
{
    return m_username;
}

const QString MasterController::message() const
{
    return "KARATINA S21 SYSTEM";
}


NavigationController *MasterController::navigationController()const
{
    return implimentation->navigation;

}

Database_controller *MasterController::dabaseController() const
{
    return this->implimentation->database;
}
}
