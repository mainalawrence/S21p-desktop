import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

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
               spacing: 20
               width: parent.width
               height: parent.height
               model:["Mathaithi","Kiamabara","Town","Congration"]
               delegate: Rectangle{
                   width: parent.width
                   height:50
                   radius: 5
                   Text {
                       id: name
                        anchors.centerIn: parent
                       text: qsTr(modelData)
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
                width:200
            }
            Row{
                spacing: 35
                Button{
                    text:"Add"
                    Material.background: Material.Teal

                }
                Button{
                    text:"Cancel"
                      Material.background: Material.Red
                }
            }
        }

    }
}


