import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Item {

   Pane{
       width: parent.width
       height: parent.height
       Pane {
           width: 120
           height: 120
           Material.elevation: 6
           Label {
               text: qsTr("I'm a card!")
               anchors.centerIn: parent
           }
           Material.background:Material.Light
       }

   }
}
