import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane {
    id:root
    Grid{
        id:grid
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            leftMargin:0.005*parent.width
        }
        columns:4
        spacing:20
        Pane{
            width:0.2*parent.width
            height:450
            Label {
                id: name3
                text: qsTr("<u>PUBLISHERS</u>")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1
                Column{
                    Label{
                        text:"Month/Year"
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
        }
        Pane{
            width:0.2*parent.width
            height:450
            Label {
                id: aux
                text: qsTr("<u>Aux</u>")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1
                Column{
                    Label{
                        text:"Month/Year"
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
        }
        Pane{
            width:  0.2*parent.width
            height:450
            Label {
                id: namee3
                text: qsTr("<u>REGULAR</u>")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1

                Column{
                    Label{
                        text:"Month/Year"
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


        }
        Pane{
            width:  0.2*parent.width
            height:450
            Label {
                id: w
                text: qsTr("<u>SPECIAL/MISSIONARY</u>")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Column{
                anchors.centerIn: parent
                spacing:1

                Column{
                    Label{
                        text:"Month/Year"

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

        }
    }
    Pane{
        width: 300
        height:300
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: grid.bottom
            margins: 20
        }
        Label {
            text: qsTr("<u>   Summary  </u>")
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Row{
            anchors.centerIn: parent
            spacing:1

            Column{
                Label{
                    text:"Month/Year"
                }
                TextField{
                    width:150
                    readOnly: true
                }
            }
            Column{
                Label{
                    text:"Publications"

                }
                TextField{
                    width:150
                    readOnly: true
                }
            }
            Column{
                Label{
                    text:"Videos"

                }
                TextField{
                    width:150
                    readOnly: true
                }
            }
            Column{
                Label{
                    text:"Hours"
                }
                TextField{
                    width:150
                    readOnly: true
                }
            }
            Column{
                Label{
                    text:"RVs"
                }
                TextField{
                    width:150
                    readOnly: true
                }
            }
            Column{
                Label{
                    text:"Studies"
                }
                TextField{
                    width:150
                    readOnly: true
                }
            }


        }
    }
}
