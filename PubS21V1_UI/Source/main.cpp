#include <QApplication>
#include <QQmlApplicationEngine>
#include<QtQuickControls2>
#include<QQmlContext>
#include<QIcon>
#include <../../PubS21V1_LIB/Src/Controller/mastercontroller.h>

int main(int argc, char *argv[])
{

    auto icon= QImage("../images/logo.png");


    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);

    //qmlRegisterType<Controller::MasterController>("pos",1,0,"Mastercontroller");
    app.setWindowIcon(QIcon( QPixmap::fromImage(icon)));

  //  Controller::MasterController MasterController;
    QQmlApplicationEngine engine;
   // engine.rootContext()->setContextProperty("masterController",&MasterController);
    QQuickStyle::setStyle("Fusion");
    engine.load(QUrl(QStringLiteral("qrc:/Views/main.qml")));
    return app.exec();

}
