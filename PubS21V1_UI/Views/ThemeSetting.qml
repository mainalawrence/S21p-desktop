import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12


    Pane{
        anchors.fill: parent
        clip: true

        Grid{
            clip: true
            columns: 2
            anchors.fill: parent

            Rectangle{
                color: "#222"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }
            Rectangle{
                color: "white"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }

        }
    }

