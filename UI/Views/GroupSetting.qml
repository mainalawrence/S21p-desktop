import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
import Lib 1.0

Pane{
    anchors.fill: parent

    Pane{
        id:groups
        height: parent.height
        width: parent.width*0.5

        Pane {
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height
            width: parent.width/1.2
            Material.elevation: 6
            ListView{
                id:serviceGrouplist
                spacing: 20
                width: parent.width
                height: parent.height
                model: masterController.ui_database_controller.ui_Groups.onGetGroups()
                delegate: Rectangle{
                    width: parent.width
                    height:50
                    radius: 5
                    Row{
                        spacing: 10
                        width: parent.width
                        height: parent.height
                        Text {
                            id: nametxt
                            text:"   "+JSON.parse(modelData)["data"]["name"]
                            //                            text: modelData
                            width: parent.width*0.8
                            anchors.verticalCenter: parent.verticalCenter
                            font.bold:true
                            font.pixelSize: 16
                        }
                        Button{
                            text: "X"
                            onClicked: {
                                masterController.ui_database_controller.ui_Groups.onRemoveGroup(JSON.parse(modelData)["uid"])
                                serviceGrouplist.model=masterController.ui_database_controller.ui_Groups.onGetGroups()
                                serviceGrouplist.forceLayout()
                            }
                        }
                    }
                }


            }
        }
    }
    Pane{
        id:addGroup
        anchors{
            left: groups.right
            top: parent.top
            bottom: parent.bottom
            right: parent.right
        }

        Column{
            spacing: 10
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            Label{
                text: qsTr("ADD SERVICE GROUP")
            }
            TextField{
                id:serviceGroupNametxf
                width:200
            }
            Row{
                spacing: 35
                Button{
                    text:"Add"
                    Material.background: Material.Teal
                    onClicked:{
                        if(serviceGroupNametxf.text.length>3){
                            masterController.ui_database_controller.ui_Groups.onCreateGroup({"name":serviceGroupNametxf.text,"regD":Date().toString()})
                            serviceGrouplist.model=masterController.ui_database_controller.ui_Groups.onGetGroups()
                            serviceGrouplist.forceLayout()
                        }
                    }
                }
                Button{
                    text:"Cancel"
                    Material.background: Material.Red
                }
            }
        }

    }
}



