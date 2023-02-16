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
        Pane{
            height: parent.height
            width: parent.width*0.5

          ListView{
              anchors.horizontalCenter:parent.horizontalCenter
              height: root.height
              model:[1,2,3,4,5,5]
              delegate: Rectangle{
                  width: parent.width
                  height: 20
                  radius: 5
                  Text {
                      id: name
                      text: qsTr(modelData.toString())
                      color: "black"
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

