#include <QApplication>
#include <QQmlApplicationEngine>
#include<QtQuickControls2>
#include<QQmlContext>
#include<QIcon>


int main(int argc, char *argv[])
{

    auto icon= QImage("../images/logo.png");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    app.setWindowIcon(QIcon( QPixmap::fromImage(icon)));
    QQmlApplicationEngine engine;
       QQuickStyle::setStyle("Material");
    engine.load(QUrl(QStringLiteral("qrc:/Views/main.qml")));
    return app.exec();

}
