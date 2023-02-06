import QtQuick 2.0


    Rectangle{
        anchors.fill: parent
        Row{
           spacing: 10
           Rectangle{
               height: parent.height
               width: parent.width*0.5
               color: "green"
           }
           Rectangle{
               height: parent.height
               width: parent.width*0.5
               color: "red"
           }
        }
    }

