import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane {
  property int txFwidth: 400
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
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Month"
            }
            ComboBox{
                model:['January', 'February', 'March', 'April', 'May', 'June',
                    'July', 'August', 'September', 'October', 'November', 'December']
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Publications"
            }
            TextField{
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Videos"
            }
            TextField{
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Hours"
            }
            TextField{
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Return visits"
            }
            TextField{
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Studies"
            }
            TextField{
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Comment"
            }
            TextField{
                width:txFwidth
            }
        }
        Row{
            spacing:0
            Button{
                text:"Send"
                width:txFwidth/2-10
                Material.background: Material.Teal
            }
            Button{
                text:"Cancel"
                  width:txFwidth/2-10
                  Material.background: Material.Red
            }
        }
    }

}
