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

        ListView{
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height
            model:["Mathaithi","Kiamabara","Town","Congration"]
            delegate: Rectangle{
                width: parent.width
                height: 20
                radius: 5
                Text {
                    id: name
                    text: qsTr(modelData)
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

                }
                Button{
                    text:"Cancel"              
                }
            }
        }

    }
}


