import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Pane {
    Column{
        width: parent.width
        height: parent.height
        Pane{
            id:filterroot
            width: parent.width
            height: parent.height*0.1
            property var yearModel:[]
            Row{
                width: parent.width
                spacing:50
                ComboBox{
                    id:filterbymonth
                    width: filterroot.width/4
                    model:['January', 'February', 'March', 'April', 'May', 'June',
                        'July', 'August', 'September', 'October', 'November', 'December']
                }
                ComboBox{
                    id:filterbyyear
                    width: filterroot.width/4
                    model:[Number(new Date().getFullYear()),Number(new Date().getFullYear())-1,Number(new Date().getFullYear())-2,Number(new Date().getFullYear())-3,Number(new Date().getFullYear())-4,Number(new Date().getFullYear())-5,Number(new Date().getFullYear())-6]
                }
                ComboBox{
                    id:filterbyPrivilages
                    width: filterroot.width/4
                    model:["Publishers","Elders","MS","Regular Pioneer","Auxiliary Pioneer"]
                }


            }
        }
        TableView{
            id:tableView
            height: parent.height*0.9
            width: parent.width
            //        model: masterController.ui_itemviewsmodel  //the model is to be over here
            TableViewColumn{
                title: "Id"
                role:"uid"
                width: 50
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "Name"
                role:"code"
                width: 200
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "Month"
                role:"month"
                width: 100
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "Year"
                role:"year"
                width: 70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "Pubs"
                role:"publications"
                width:70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "VDs"
                role:"videos"
                width: 70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "HRs"
                role:"hours"
                width: 70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "RVS"
                role:"rvs"
                width: 70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "STds"
                role:"studies"
                width: 70
                horizontalAlignment:Text.AlignHCenter
            }
            TableViewColumn{
                title: "Comment"
                role:"comment"
                width: 170
                horizontalAlignment:Text.AlignHCenter
            }

        }
    }

}
