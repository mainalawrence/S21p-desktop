#include <QApplication>
#include <QQmlApplicationEngine>
#include<QtQuickControls2>
#include<QQmlContext>
#include<QIcon>
#include<Controller/mastercontroller.h>
#include<Controller/navigation-controller.h>

int main(int argc, char *argv[])
{

    auto icon= QImage("../images/logo.png");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    app.setWindowIcon(QIcon( QPixmap::fromImage(icon)));

    qmlRegisterType<Controller::MasterController>("Lib",1,0,"Mastercontroller");
    qmlRegisterType<Controller::NavigationController>("Lib", 1, 0,"NavigationController");

    QQmlApplicationEngine engine;
    QQuickStyle::setStyle("Material");
    engine.load(QUrl(QStringLiteral("qrc:/Views/main.qml")));
    return app.exec();

}
