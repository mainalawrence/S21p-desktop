import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    anchors.fill: parent
    TabView {
        anchors.fill: parent
        Tab {
            anchors.fill: parent
            title: "Analysis"
            ReportAnalysis{}
        }
        Tab {
            title: "Report"
            ReportTable{
            }
        }
        Tab {
            title: "Add"
            AddReport{

            }
        }

        style: TabViewStyle {
            frameOverlap:1
            tab: Rectangle {
                color: styleData.selected ? "steelblue" :"lightsteelblue"
                border.color: "steelblue"
                implicitWidth: Math.max(text.width + 4, 80)
                implicitHeight: 35
                radius: 5
                Text {
                    id: text
                    anchors.centerIn: parent
                    text: styleData.title
                    color: styleData.selected ? "white" : "black"
                }
            }
            frame: Rectangle { color: "steelblue" }
            tabsAlignment:Qt.AlignHCenter

        }

    }
}
