import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
 import QtQml 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
Item {
   Row{
       spacing:20
       height: parent.height
       width: parent.width
       Pane{
           id:navigationMenu
           width: 0.2*parent.width
           height: parent.height
             Material.elevation: 10

          Column{
              spacing:20
           anchors.horizontalCenter: parent.horizontalCenter
           Button{
               text: "Home"
               Material.background:Material.BlueGrey
               onClicked: {
                   masterController.ui_navigationController.goCreateDashBoardView()
               }
           }
              Button{
                  text: "Group Setting"
                    Material.background:Material.BlueGrey
                  onClicked:{
                      settingView.replace(groupsetting,StackView.Immediate)
                  }
              }
              Button{
                  text: "Download Setting"
                    Material.background:Material.BlueGrey
                  onClicked:{
                      settingView.replace(downloadSetting,StackView.Immediate)
                  }
              }
              Button{
                  text: "Theme Setting"
                    Material.background:Material.BlueGrey
                  onClicked:{
                      settingView.replace(themeSetting,StackView.Immediate)
                  }
              }
              Button{
                  text: "Database Setting"
                    Material.background:Material.BlueGrey
                  onClicked:{
                      settingView.replace(databaseSetting,StackView.Immediate)
                  }
              }
          }
       }
       Pane{
           id:mainWindow
           width: 0.75*parent.width
           height: parent.height
           StackView{
               id:settingView
               anchors.fill: parent
   //            clip: true
               initialItem:groupsetting
           }

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
