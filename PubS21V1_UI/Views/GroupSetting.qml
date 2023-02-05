import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle{
    anchors.fill: parent
    Row{
        spacing: 100
       anchors.fill: parent
        Rectangle{
            id:grouplist
            width:0.5*parent.width
            height:400
            ListView{
                anchors.fill: parent
                model:["Mathaithi","Kiamabara","Town","Congration"]
                delegate: Rectangle{
                    width: parent.width
                    height: 200
                    radius: 5
                    Text {
                        id: name
                        text: qsTr("text")
                    }

                }
            }
        }
        Rectangle{
            id:addGroups
            anchors{
                left: grouplist.left
                leftMargin:0.2*parent.width
                right:parent.left
                rightMargin:0.2*parent.width
            }

            Column{
                Label{
                    text: qsTr("ADD SERVICE GROUP")
                }
                TextField{
                    width:200
                }
                Row{
                    Button{
                        text:"Save"
                    }
                    Button{
                        text:"Cancel"
                    }
                }
            }
        }
    }
}
