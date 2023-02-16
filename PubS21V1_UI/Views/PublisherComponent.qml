import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
import QtQml 2.12
Pane{

    Grid{
      columns:3
      spacing:2
      anchors.fill: parent
      Pane {
          width: 300
          height: 300
          Material.elevation: 6
          Label {
              text: qsTr("I'm a card!")
              anchors.centerIn: parent
          }
          Material.background:Material.Light
      }
      Pane {
          width: 300
          height: 300
          Material.elevation: 6
          Label {
              text: qsTr("I'm a card!")
              anchors.centerIn: parent
          }
          Material.background:Material.Light
      }
      Pane {
          width: 300
          height: 300
          Material.elevation: 6
          Label {
              text: qsTr("I'm a card!")
              anchors.centerIn: parent
          }
          Material.background:Material.Light
      }
      Pane {
          width: 300
          height: 300
          Material.elevation: 6
          Label {
              text: qsTr("I'm a card!")
              anchors.centerIn: parent
          }
          Material.background:Material.Light
      }
    }
}


