import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
import QtQml 2.12
Item {
    anchors.fill: parent
    Pane{
        id:navigationMenu
        width: 0.2*parent.width
        height: parent.height
        Material.elevation: 6
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
                text: "View Publishers"
                  Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(publisherComponent,StackView.Immediate)
                }
            }
            Button{
                text: "Add Publishers"
                  Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(addPublisher,StackView.Immediate)
                }
            }
            Button{
                text: "Update Publisher"
                  Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(updatePublisher,StackView.Immediate)
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
    Component{
        id:dashboard
        DashBoard{

        }
    }





}
