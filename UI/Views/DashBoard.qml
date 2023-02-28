import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Pane{
    id:dashBoard
    Pane{
        anchors.centerIn: parent
        anchors.topMargin:-100
        height:500
        width: maingride.width+50

        Grid{
            id:maingride
            clip: true
            anchors.centerIn: parent
            anchors.margins: 20
            spacing: 10
            columns:2
            Rectangle{
                id:report
                height: 160
                width: root.height<700 ?370:smallscreensize
                color:"#1B4166"
                radius: 4
                Image {
                    id: reportimg
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.Left

                    source: "../images/close.png"
                }
                Text{
                    id:txtreport
                    anchors.margins:50
                    anchors.left: reportimg.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Report")
                    font.pointSize: 18
                    color: "white"
                    font.bold:true

                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        masterController.ui_navigationController.goCreateReportView()
                    }
                }
            }

//***************************************Report*********************************
            Rectangle{
                id:publisherroot
                height: 160
                width: root.height<900 ?370:smallscreensize
                color: "#1B4166"
                radius: 4
                Image {
                    id: publisherimgs
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.Left
                    source: "../images/close.png"
                }
                Text{
                    id:pubtxt
                    anchors.margins:50
                    anchors.left: publisherimgs.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Report")
                    font.pointSize: 18
                    color: "white"
                    font.bold:true
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                       masterController.ui_navigationController.goCreateReportView()
                    }
                }
            }

   //***************************************Report*********************************
            Rectangle{
                id:publisherroot2
                height: 160
                width: root.height<900 ?370:smallscreensize
                color: "#1B4166"
                radius: 4
                Image {
                    id: publisherimgs2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.Left
                    source: "../images/close.png"
                }
                Text{
                    id:pubtxt2
                    anchors.margins:50
                    anchors.left: publisherimgs2.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Publisher")
                    font.pointSize: 18
                    color: "white"
                    font.bold:true
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        masterController.ui_navigationController.goCreatePublishersView()
                    }
                }
            }
//***************************************setting*********************************

            Rectangle{
                id:setting
                height: 160
                width: root.height<900 ?370:smallscreensize
                color: "#1B4166"
                radius: 4
                Image {
                    id: imgsetting
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.Left
                    source: "../images/tools.png"
                    height: 50
                    width: 50

                }
                Text{
                    id:txtsetting
                    anchors.left: imgsetting.right
                    anchors.margins:50
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Setting")
                    font.pointSize: 18
                    color: "white"
                    font.bold:true
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        masterController.ui_navigationController.goCreateSettingView()
                    }
                }
            }

//***************************************logout*********************************
            Rectangle{
                id:logout
                height: 160
                width: root.height<900?370:smallscreensize
                color: "#1B4166"
                radius: 4
                Image {
                    id: imglogout
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.Left
                    source: "../images/close.png"
                }
                Text{
                    id:txtlogout
                    anchors.left: imglogout.right
                    anchors.margins:50
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Logout")
                    font.pointSize: 18
                    color: "white"
                    font.bold:true
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        masterController.ui_navigationController.gooCreateLoginView()
                    }
                }
            }
        }
    }
}
