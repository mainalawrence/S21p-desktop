import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Pane{
    id:rootpane
    property int txFwidth: 400
    property var pubprivilage: [];
    Column{
        spacing:5
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.topMargin:-100
        Column{
              anchors.bottomMargin:50
            Label{
                text:"Pulisher Code"
            }
            TextField{
                width:txFwidth
                  placeholderText:"MT001"
            }
        }
        Column{
            Label{
                text:"First name"

            }
            TextField{
                width:txFwidth
                placeholderText:"Caleb"
            }
        }
        Column{
            Label{
                text:"Last Name"
            }
            TextField{
                width:txFwidth
                placeholderText:"Kamau"
            }
        }
        Column{
            Label{
                text:"Date of birth"
            }
            TextField{
                width:txFwidth
                placeholderText:"1/1/2000"
            }
        }
        Column{
            Label{
                text:"Date of baptism"
            }
            TextField{
                width:txFwidth
                  placeholderText:"1/1/2010"
            }
        }
        Column{
            Label{
                text:"Group Publisher"
            }
            TextField{
                width:txFwidth
                placeholderText:""
            }
        }
        Column{
            Label{
                text:"Preaching Group"
            }
            TextField{
                width:txFwidth
                  placeholderText:"Mathaithi"
            }
        }
        Column{
            Label{
                text:"Type Publisher"
            }
            Row{
                CheckBox{
                    id:publisherchkbox
                    checked:true;
                    text:"Publisher"
                    onClicked: {
                       rootpane.pubprivilage.push("Publisher")
                    }
                }
                CheckBox{
                    id:ubbaptizedchkbox
                    checked:false;
                    text:"Un-Baptized"
                    onClicked: {
                       rootpane.pubprivilage.push("Un-Baptized")
                    }
                }
                CheckBox{
                    id:auxpioneerchkbox
                    checked:false;
                    text:"Aux-Pioneer"
                    onClicked: {
                       rootpane.pubprivilage.push("Auxilary Pioneer")
                    }
                }
            }
             Row{

                CheckBox{
                    id:regpioneerchkbox
                    checked:false;
                    text:"Reg-Pioneer"
                    onClicked: {
                       rootpane.pubprivilage.push("Regular Pioneer")
                    }
                }
                CheckBox{
                    id:elderschkbox
                    checked:false;
                    text:"Elder"
                    onClicked: {
                       rootpane.pubprivilage.push("Elder")
                    }
                }
                CheckBox{
                   id:mschkbox
                     checked:false;
                     text:"MS"
                     onClicked: {
                        rootpane.pubprivilage.push("MS")
                     }
                 }
                CheckBox{
                    id:spchkbox
                     checked:false;
                     text:"SP"
                     onClicked: {
                        rootpane.pubprivilage.push("SP")
                     }
                 }
             }

        }
        Row{
            spacing: 20
            Button{
                text:"Save"
                width:txFwidth/2
                 Material.background: Material.Teal
                onClicked: {
                     console.log(rootpane.pubprivilage)
                }
            }
            Button{
                text:"Cancel"
                  width:txFwidth/2
                   Material.background: Material.Red
            }
        }
    }

}
