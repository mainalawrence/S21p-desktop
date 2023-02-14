import QtQuick 2.0

Item {

   Rectangle{
       width: parent.width
       height: parent.height
       Text {
           id: name
           text: qsTr("text")
           anchors.centerIn: parent
       }
   }
}
