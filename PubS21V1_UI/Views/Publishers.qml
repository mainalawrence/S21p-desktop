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
               text: "View Publishers"
               onClicked:{
                   settingView.replace(publisherComponent,StackView.Immediate)
               }
           }
           Button{
               text: "Add Publishers"
               onClicked:{
                   settingView.replace(addPublisher,StackView.Immediate)
               }
           }
           Button{
               text: "Update Publisher"
               onClicked:{
                   settingView.replace(updatePublisher,StackView.Immediate)
               }
           }
       }
    }
    Rectangle{
        id:mainWindow
        anchors{
            right: parent.right
            bottom: parent.bottom
            top: parent.top
            left: navigationMenu.right
            leftMargin: 10
        }
       color: "transparent"
        StackView{
            id:settingView
            anchors.fill: parent
//            clip: true
            initialItem:publisherComponent
        }

    }
Component{
    id:publisherComponent
    PublisherComponent{

    }
}

Component{
    id:addPublisher
    AddPublisher{}
}
Component{
    id:updatePublisher
    UpdatePublisher{}
}





}
