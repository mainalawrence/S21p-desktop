import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
 import QtQml 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
Item {
    anchors.fill: parent
    Pane{
        id:navigationMenu
        width: 0.2*parent.width
        height: parent.height

       Column{
           spacing:20
        anchors.horizontalCenter: parent.horizontalCenter

           Button{
               text: "Group Setting"
               onClicked:{
                   settingView.replace(groupsetting,StackView.Immediate)
               }
           }
           Button{
               text: "Download Setting"
               onClicked:{
                   settingView.replace(downloadSetting,StackView.Immediate)
               }
           }
           Button{
               text: "Theme Setting"
               onClicked:{
                   settingView.replace(themeSetting,StackView.Immediate)
               }
           }
           Button{
               text: "Database Setting"
               onClicked:{
                   settingView.replace(databaseSetting,StackView.Immediate)
               }
           }
       }
    }
    Pane{
        id:mainWindow
        anchors{
            right: parent.right
            bottom: parent.bottom
            top: parent.top
            left: navigationMenu.right
            leftMargin: 10
        }

        StackView{
            id:settingView
            anchors.fill: parent
//            clip: true
            initialItem:groupsetting
        }

    }
Component{
    id:groupsetting
    GroupSetting{

    }
}

Component{
    id:downloadSetting
    DownloadSetting{}
}
Component{
    id:themeSetting
    ThemeSetting{}
}
Component{
    id:databaseSetting
    DatabaseSetting{}
}





}
