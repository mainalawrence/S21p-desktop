import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle{
    id:root
    anchors.fill: parent
    Row{
        anchors.fill: parent
        spacing: 10
        Rectangle{
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
        Rectangle{
            height: parent.height
            width: parent.width*0.5
            Button{
                anchors.centerIn: parent
                text:"Update"
                style: ButtonStyle {
                    background: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 4
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                            GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                        }
                    }
                }
            }
        }
    }
}

