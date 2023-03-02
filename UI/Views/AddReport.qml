import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane {
    property int txFwidth: 400
    property bool error: false
    Column{
        spacing:10
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.topMargin:-100
        Label{
            text: "Error: Make sure you all Fields are filled";
            visible: error
            color: "red"
        }

        Column{
            anchors.bottomMargin:50
            Label{
                text:"Pulisher Code"
            }
            TextField{
                id:pubcode
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Month"
            }
            Row{
                spacing: 20
                ComboBox{
                    id:month
                    model:['January', 'February', 'March', 'April', 'May', 'June',
                        'July', 'August', 'September', 'October', 'November', 'December']
                    width:txFwidth/2
                }
                ComboBox{
                    id:year
                    width:txFwidth/2
                    model:[Number(new Date().getFullYear()),Number(new Date().getFullYear())-1,Number(new Date().getFullYear())-2,Number(new Date().getFullYear())-3,Number(new Date().getFullYear())-4,Number(new Date().getFullYear())-5,Number(new Date().getFullYear())-6]
                }
            }
        }
        Column{
            Label{
                text:"Publications"
            }
            TextField{
                id:publishertxt
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Videos"
            }
            TextField{
                id:videostxt
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Hours"
            }
            TextField{
                id:hourstxt
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Return visits"
            }
            TextField{
                id:rvstxt
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Studies"
            }
            TextField{
                id:studiestxt
                width:txFwidth
            }
        }
        Column{
            Label{
                text:"Comment"
            }
            TextField{
                id:commenttxt
                width:txFwidth
            }
        }
        Row{
            spacing:20
            Button{
                text:"Send"
                width:txFwidth/2-10
                Material.background: Material.Teal
                onClicked: {
                    if(pubcode.text.length>=3){
                        let data={"code":pubcode.text,"month":month.currentText.toString(),"year":year.currentText.toString(),"Publications":Number(publishertxt.text),"Videos":Number(videostxt.text),"Hours":Number(hourstxt.text),"RVS":Number(rvstxt.text),"Studies":Number(studiestxt.text),"Comment":commenttxt.text, "regD":new Date()}
                        masterController.ui_database_controller.ui_Reports.onCreateReport(data)
                    }
                    else{
                        error=true;
                    }
                }
            }
            Button{
                text:"Cancel"
                width:txFwidth/2-10
                Material.background: Material.Red
            }
        }
    }

}
