import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane{
    id:root
    anchors.fill: parent
    Row{
        anchors.fill: parent
        spacing: 10
        Pane {
            height: parent.height
            width: parent.width*0.5
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
        Pane{
            height: parent.height
            width: parent.width*0.5
            Button{
                anchors.centerIn: parent
                text:"Update"


            }
        }
    }
}

