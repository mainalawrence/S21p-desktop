import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    TableView{
        id:tableView
        anchors.fill: parent
        model: masterController.ui_itemviewsmodel  //the model is to be over here
        height: rootframe.height
        width: rootframe.width/2

        TableViewColumn{
            title: "Item Id"
            role:"id"
            width: 100
            horizontalAlignment:Text.AlignHCenter
        }
        TableViewColumn{
            title: "Name"
            role:"name"
            width: 100
            horizontalAlignment:Text.AlignHCenter
        }
        TableViewColumn{
            title: "Category"
            role:"category"
            width: 100
            horizontalAlignment:Text.AlignHCenter
        }
        TableViewColumn{
            title: "Item_Group"
            role:"itemgroup"
            width: 100
            horizontalAlignment:Text.AlignHCenter
        }
        TableViewColumn{
            title: "Cost"
            role:"cost"
            width: 100
            horizontalAlignment:Text.AlignHCenter
        }


    }
}
