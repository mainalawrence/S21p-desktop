import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQml 2.12



ApplicationWindow {
    id:root

    visible: true
    width:1920
    height:1080
    property color lightFontColor: "#222"
    property color darkFontColor: "#e7e7e7"
    readonly property color lightBackgroundColor: "#cccccc"
    readonly property color darkBackgroundColor: "#161616"
    readonly property color darkbluegroundColor: "#181D31"
//    title: masterController.ui_message+"hello wolrd"
    Rectangle{
        anchors.fill: parent
        color:darkBackgroundColor
    }

   // QML_IMPORT_PATH
//    Connections{
//        //target:masterController.ui_navigationController
//        onGoCreateLoginView:mainview.push("Login.qml",StackView.Immediate)
//        onGoCreateReportView:mainview.replace("Report.qml", StackView.Immediate)
//        onGoCreateSettingView:mainview.replace("Settings.qml",StackView.Immediate)
//        onGoCreateServiceGroupsView:mainview.replace("UserClockin.qml", StackView.Immediate)
//        onGoCreatePublishersView:mainview.replace("Publishers.qml", StackView.Immediate)
//        onGoCreateDashBoardView:mainview.replace("DashBoard.qml", StackView.Immediate)
//        onGoCreateLoginoutView:mainview.clear()
//    }
    StackView{
        id:mainview
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("Publishers.qml")
        //initialItem: Qt.resolvedUrl("Login.qml")
    }
}

