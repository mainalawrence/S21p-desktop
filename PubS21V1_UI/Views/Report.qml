import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Item {
    anchors.fill: parent
    Pane{
        id:navigationMenu
        width: 0.2*parent.width
        height: parent.height
        Material.elevation: 8
        Column{
            spacing:20
            anchors.horizontalCenter: parent.horizontalCenter
            Button{
                text: "Home"
                Material.background:Material.BlueGrey
            }
            Button{
                text: "Report Analysis"
                Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(reportAnalysis,StackView.Immediate)
                }
            }
            Button{
                text: "Report Table"
                Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(reportTable,StackView.Immediate)
                }
            }
            Button{
                text: "Add Report"
                Material.background:Material.BlueGrey
                onClicked:{
                    settingView.replace(addreport,StackView.Immediate)
                }
            }

        }
    }
    Pane{
        id:mainWindow
        anchors{
            right: parent.right
            bottom: parent.bottom
            top: parent.top
            left: navigationMenu.right
            leftMargin: 10
        }

        StackView{
            id:settingView
            anchors.fill: parent
            initialItem:reportAnalysis
        }

    }
    Component{
        id:reportAnalysis
        ReportAnalysis{}
    }

    Component{
        id:reportTable
        ReportTable{ }
    }
    Component{
        id:addreport
        AddReport{}
    }

}


