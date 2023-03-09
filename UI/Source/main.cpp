#include <QApplication>
#include <QQmlApplicationEngine>
#include<QtQuickControls2>
#include<QQmlContext>
#include<QIcon>
#include<Controller/mastercontroller.h>
#include<Controller/navigation-controller.h>
#include<Controller/database_controller.h>

int main(int argc, char *argv[])
{
    auto icon= QImage("./jw.svg");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    app.setWindowIcon(QIcon( QPixmap::fromImage(icon)));
    app.setApplicationDisplayName("KARATINA S21 SYSTEM");
    QQmlApplicationEngine engine;
    qmlRegisterType<Controller::MasterController>("Lib",1,0,"Mastercontroller");
    QQuickStyle::setStyle("Material");
    engine.load(QUrl(QStringLiteral("qrc:/Views/main.qml")));
    return app.exec();

}

