import QtQuick 2.0
import QtQuick.Controls 2.5
 import QtQml 2.12
Component {
    id:root

    Frame{
        clip: true
        height: 0.5*root.height
        width: 0.5*root.width
        anchors.centerIn: parent
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
}
