import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle{
   anchors.fill: parent
   color: "transparent"
    Rectangle{
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
    Rectangle{
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
                Button{
                    text:"Cancel"
                    style:ButtonStyle{
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
}


