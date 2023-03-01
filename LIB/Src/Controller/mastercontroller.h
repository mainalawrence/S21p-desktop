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
#include <Lib_global.h>

namespace Controller {

class LIB_EXPORT MasterController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ui_message READ message NOTIFY textChanged)
    Q_PROPERTY(Controller::NavigationController* ui_navigationController READ navigationController CONSTANT)
    Q_PROPERTY(Controller::Database_controller* ui_database_controller READ dabaseController CONSTANT)
public:
    explicit MasterController(QObject *parent = nullptr,Database_controller *maincontroler=nullptr);
    ~MasterController();
    const QString username()const;
    NavigationController *navigationController()const;
    Database_controller *dabaseController()const;
    const QString message() const;
private:
signals:
    void textChanged();


private:
    class Implimentation;
    QScopedPointer<Implimentation>implimentation;
    QString m_username;
    
};
}
#endif // MASTERCONTROLLER_H
