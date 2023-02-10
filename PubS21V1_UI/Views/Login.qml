import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3



Item {
    id: name
    anchors.fill: parent

    property bool  timerpageS: false

        Rectangle{
            id:rectroot
            anchors.fill: parent
            color:"#e7e7e7"

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
                    text:Qt.formatTime(id_root.currentDate,"h:m.s ap")
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
                       color: "#565758"
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
                       placeholderText: " Pub id..."
                       KeyNavigation.backtab:passwordtxt
                       Keys.onEnterPressed:passwordtxt

                       background: Rectangle {
                                   radius:10
                                   border.width: 2
                       }
                   }
               }
               Column{
                   spacing: 10
                   anchors.left: parent.left
                   anchors.right: parent.right
                Label {
                    color: "#565758"
                    text: "Publisher's Password "
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
                    background: Rectangle {
                                radius:10
                                border.width: 2

                    }


                }
}
                RowLayout {
                    id:buttons
                    spacing: 5
                    Button {
                        id:enterbtn
                        text: "ENTER "
                        focus: true
                        enabled:activateenterclockbtn()
                        contentItem: Text {
                            text: enterbtn.text
                            font: enterbtn.font
                            opacity: enabled ? 1.0 : 0.3
                            color: enterbtn.down ? "#17a81a" : "#21be2b"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle{
                            implicitHeight: 30
                            implicitWidth: columnid.width/2
                            opacity: enabled ? 1 : 0.7
                            border.color: enterbtn.down ? "#17a81a" : "#21be2b"
                            border.width: 1
                            radius: 4
                        }
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
                        onClicked: {
                            passwordtxt.clear()
                            usernametxt.clear()
                        }
                        contentItem: Text {
                            text: clockbtn.text
                            font: clockbtn.font

                            opacity: enabled ? 1.0 : 0.7
                            color: clockbtn.down ? "#17a81a" : "#21be2b"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle{
                            implicitHeight: 30
                            implicitWidth: columnid.width/2
                            opacity: enabled ? 1 : 0.3
                            border.color: clockbtn.down ? "#17a81a" : "#21be2b"
                            border.width: 1
                            radius: 4
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
