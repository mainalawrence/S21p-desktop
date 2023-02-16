import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12



Item {
    id: name
    anchors.fill: parent

    property bool  timerpageS: false

    Pane{
        id:rectroot
        anchors.fill: parent

        Image {
            id: myimg
            //                source: "../images/hotel.jpeng"
            anchors.fill: parent
            height: 200
            width:rectroot.width/2+10
            Label{
                anchors.right: parent.right
                anchors.topMargin: 40
                anchors.top: parent.top
                anchors.rightMargin: 20
//                text:Qt.formatTime(id_root.currentDate,"h:m.s ap")
                color:"Black"
                font.pixelSize:16
            }
        }

        Column{
            id:columnid
            spacing:25
            y:rectroot.height/6
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width/4
            Column{
                spacing: 10
                anchors.left: parent.left
                anchors.right: parent.right
                Label {

                    text: "Publisher Id..  "
                    anchors.left: parent.left
                    font.pixelSize: 14
                    font.italic: true
                    font.bold: true
                }
                TextField {
                    id:usernametxt
                    width: parent.width
                    height:parent.height*0.6
                    focus: true
                    placeholderText: "MT001"
                    KeyNavigation.backtab:passwordtxt
                    Keys.onEnterPressed:passwordtxt
                }
            }
            Column{
                spacing: 10
                anchors.left: parent.left
                anchors.right: parent.right
                Label {

                    text: "Password "
                    anchors.left: parent.left
                    font.italic: true
                    font.pixelSize: 14
                    font.bold: true
                }
                TextField {
                    id: passwordtxt
                    width: parent.width
                    height:parent.height*0.6
                    echoMode: TextInput.Password
                    placeholderText: "  Enter Password..."
                    inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                    onAccepted: enterbtn.activeFocus
                    KeyNavigation.backtab: usernametxt
                    Keys.onEnterPressed:enterbtn
                }
            }
            RowLayout {
                id:buttons
                width: parent.width
                spacing: 5
                Button {
                    id:enterbtn
                    text: "ENTER "
                    focus: true
                    Material.background: Material.primary
                      width:parent.width/2-10
                       enabled: activateenterclockbtn()
                    onClicked: {
                        masterController.onLogin(usernametxt.text.toLowerCase(),passwordtxt.text.toLowerCase())
                        passwordtxt.clear()
                        usernametxt.clear()
                    }
                }
                Button {
                    id:clockbtn
                    text: "CANCEL"
                    focus: true
                    enabled: activateenterclockbtn()
                    width:parent.width/2-10
                    Material.background: Material.Red
                    onClicked: {
                        passwordtxt.clear()
                        usernametxt.clear()
                    }

                }
            }
        }
    }

    function backmainlogin(){
        mainstackview.replace(mainlogin)
    }
    function activateenterclockbtn(){
        if(passwordtxt.text.length>0&&usernametxt.text.length>0){ return true}
        else {
            return false;
        }
    }

}
