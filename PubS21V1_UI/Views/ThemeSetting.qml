import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12


Pane{
    Label {
         text: "Choose Themes"
         font.pixelSize: 22
         font.italic: true
     }
    Column {
        anchors{
            top: parent.top
            topMargin: 30
        }
        RadioButton { text: qsTr("Dark");  checked: true  }
        RadioButton { text: qsTr("Light")}
        RadioButton { text: qsTr("System Theme") }
    }


}

