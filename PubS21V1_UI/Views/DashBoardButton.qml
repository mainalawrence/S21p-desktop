import QtQuick 2.0
import QtQml 2.12


Rectangle{
    property string title:"Testing";
    id:root
    height: 160
    width: root.height<700 ?370:smallscreensize
    color:"#1B4166"
    radius: 4
    Image {
        id: itemimg
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.Left

        source: "../images/close.png"
    }
    Text{
        id:reporttxt
        anchors.margins:50
        anchors.left: itemimg.right
        anchors.verticalCenter: parent.verticalCenter
        text: qsTr(root.title)
        font.pointSize: 18
        color: "white"
        font.bold:true

    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            //            masterController.ui_navigationController.goCreateReportView()
        }
    }
}



