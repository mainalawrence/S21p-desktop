import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane {

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
                text:"year"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Publications"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Videos"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Hours"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Return visits"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Studies"
            }
            TextField{
                width:200
            }
        }
        Column{
            Label{
                text:"Comment"
            }
            TextField{
                width:200
            }
        }
        Row{
            Button{
                text:"Send"
            }
            Button{
                text:"Cancel"
            }
        }
    }

}
