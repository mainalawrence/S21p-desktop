import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    anchors.fill: parent
    Rectangle{
        id:navigationMenu
//        width:20
//        height: parent.height
        anchors{
            bottom: parent.bottom
            top: parent.top
            left: parent.right

        }
        color: "red"
       Column{
        anchors.fill: parent
           Button{
               text: "Group Setting"
               onClicked:{
                   settingView.pop();
                   settingView.push(GroupSetting)
               }
           }
           Button{
               text: "Download Setting"
               onClicked:{
                   settingView.pop();
                   settingView.push(DownloadSetting)
               }
           }
           Button{
               text: "Theme Setting"
               onClicked:{
                   settingView.pop();
                   settingView.push(ThemeSetting)
               }
           }
           Button{
               text: "Database Setting"
               onClicked:{
                   settingView.pop();
                   settingView.push(DatabaseSetting)
               }
           }
       }
    }
    Rectangle{
        id:mainWindow
        width: 0.7*parent.width
        anchors{
            right: parent.right
            bottom: parent.bottom
            top: parent.top
            left: navigationMenu.right
        }
         color: "green"
        StackView{
            id:settingView
            anchors.fill: parent
            initialItem: Qt.resolvedUrl("Settings.qml")

        }
    }


}
