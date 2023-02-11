import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
 import QtQml 2.12
Item {
    anchors.fill: parent
    Rectangle{
        id:navigationMenu
        width: 0.2*parent.width
        height: parent.height
        color: "#222"
       Column{
           spacing:20
        anchors.horizontalCenter: parent.horizontalCenter
           Button{
               text: "Group Setting"
               onClicked:{
                   settingView.replace(GroupSetting, StackView.Immediate)
               }
           }
           Button{
               text: "Download Setting"
               onClicked:{

                   settingView.replace(DownloadSetting, StackView.Immediate)
               }
           }
           Button{
               text: "Theme Setting"
               onClicked:{

                   settingView.replace(ThemeSetting, StackView.Immediate)
               }
           }
           Button{
               text: "Database Setting"
               onClicked:{
                   settingView.push(DatabaseSetting, StackView.Immediate)
               }
           }
       }
    }
    Rectangle{
        id:mainWindow
        width:0.7*parent.width
        anchors{
            right: parent.right
            bottom: parent.bottom
            top: parent.top
            left: navigationMenu.right
        }
       color: "transparent"
        StackView{
            id:settingView
            initialItem:"ThemeSetting.qml"
        }

    }






}
