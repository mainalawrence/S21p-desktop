import QtQuick 2.0
import QtQuick.Controls 2.5



    Rectangle{
        anchors.fill: parent
        clip: true
        color: "red"
        Grid{
            clip: true
            columns: 2
            anchors.fill: parent

            Rectangle{
                color: "#181D31"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }
            Rectangle{
                color: "white"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }
            Rectangle{
                color: "#678983"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }
            Rectangle{
                color: "#E6DDC4"
                height: 0.5*parent.height
                width: 0.5*parent.width
            }
        }
    }

