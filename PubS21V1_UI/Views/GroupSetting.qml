import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle{
    anchors.fill: parent
    Row{
        spacing: 100
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle{
            width:0.5*parent.width
            height:400
            id:viewGroups
           ListView{
               model:["Mathaithi","Kiamabara","Town","Congration"]
               delegate: Rectangle{
                   width: parent.width
                   height: 200
                   radius: 5

               }
           }
        }
        Rectangle{
            id:addGroups
            anchors.centerIn: parent


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
