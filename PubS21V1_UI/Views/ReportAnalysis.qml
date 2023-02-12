import QtQuick 2.0
import QtQuick.Controls 1.4
Rectangle {
    id:root
    anchors.fill: parent
    Grid{
        id:grid
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
            leftMargin:0.08*parent.width
        }
        columns:3
        spacing:30
        clip: true
        Rectangle{
            width:0.3*parent.width
            height:350
            Text {
                id: name3
                text: qsTr("PUBLISHERS")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1
                Column{
                    Label{
                        text:"Pulisher Code"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"year"

                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Publications"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Videos"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Hours"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Return visits"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Studies"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
            }

            border.color:"black"
            radius: 10
            border.width: 2
        }
        Rectangle{
            width:  0.3*parent.width
            height:350
            Text {
                id: namee3
                text: qsTr("REGULAR")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1
                Column{
                    Label{
                        text:"Pulisher Code"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"year"

                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Publications"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Videos"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Hours"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Return visits"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Studies"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
            }

            border.color:"black"
            radius: 10
            border.width: 2
        }
        Rectangle{
            width:  0.3*parent.width
            height:350
            Text {
                id: w
                text: qsTr("SPECIAL/MISSIONARY")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1
                Column{
                    Label{
                        text:"Pulisher Code"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"year"

                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Publications"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Videos"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Hours"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Return visits"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
                Column{
                    Label{
                        text:"Studies"
                    }
                    TextField{
                        width:200
                        readOnly: true
                    }
                }
            }
            border.color:"black"
            radius: 10
            border.width: 2
        }


    }
    Rectangle{
        width: 300
        height:500
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: grid.bottom
            margins: 20
        }

        Text {
            id: summary
            text: qsTr("Summary")
            anchors.horizontalCenter: parent.horizontalCenter
        }
        border.color:"black"
        radius: 10
        border.width: 2
    }
}
