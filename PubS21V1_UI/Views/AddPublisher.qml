import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    width: parent.width
    height: parent.height
    Column{
        spacing:10
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.topMargin:-100
        Column{
              anchors.bottomMargin:50
            Label{
                text:"Pulisher Code"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"First name"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Last Name"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Date of birth"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Date of baptism"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Group Publisher"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Preaching Group"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Type Publisher"
            }
            TextField{
                width:200
            }
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
