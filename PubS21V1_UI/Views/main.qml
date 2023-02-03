import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQml 2.12

ApplicationWindow {
    id:root
    visible: true
    width:1920
    height:1080
    title: masterController.ui_message
   // QML_IMPORT_PATH
    Connections{
        //target:masterController.ui_navigationController
        onGoCreateLoginView:mainview.push("Login.qml",StackView.Immediate)
        onGoCreateReportView:mainview.replace("Report.qml", StackView.Immediate)
        onGoCreateSettingView:mainview.replace("Settings.qml",StackView.Immediate)
        onGoCreateServiceGroupsView:mainview.replace("UserClockin.qml", StackView.Immediate)
        onGoCreatePublishersView:mainview.replace("Publishers.qml", StackView.Immediate)
        onGoCreateDashBoardView:mainview.replace("DashBoard.qml", StackView.Immediate)
        onGoCreateLoginoutView:mainview.clear()
    }
    StackView{
        id:mainview
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("Settings.qml")
        //initialItem: Qt.resolvedUrl("Login.qml")
    }
}

