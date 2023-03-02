import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Pane{
    property int txFwidth: 400
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
                    checked:true;
                    text:"Publisher"
                }
                CheckBox{
                    checked:false;
                    text:"Un-Baptized"
                }
                CheckBox{
                    checked:false;
                    text:"Aux-Pioneer"
                }
            }
             Row{

                CheckBox{
                    checked:false;
                    text:"Reg-Pioneer"
                }
                CheckBox{
                    checked:false;
                    text:"Elder"
                }
                CheckBox{
                     checked:false;
                     text:"MS"
                 }
             }

        }
        Row{
            spacing: 20
            Button{
                text:"Save"
                width:txFwidth/2
                 Material.background: Material.Teal
            }
            Button{
                text:"Cancel"
                  width:txFwidth/2
                   Material.background: Material.Red
            }
        }
    }

}
