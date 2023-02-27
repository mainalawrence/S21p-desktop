import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5
import QtQml 2.12
Pane{

    GridView{
        anchors.fill: parent
        cellHeight: 310
        cellWidth: 310


        model: [{name:"Lawrence Maina",age:"25",BOD:"16/04/2017",type:["Publisher","Elder","Secretary"]},
        {name:"Lawrence Maina",age:"25",BOD:"16/04/2017",type:["Publisher","Elder","Secretary"]},
            {name:"Lawrence Maina",age:"25",BOD:"16/04/2017",type:["Publisher","Elder","Secretary"]},
            {name:"Lawrence Maina",age:"25",BOD:"16/04/2017",type:["Publisher","Elder","Secretary"]}
        ]
        delegate:delegate
    }
    Component{
        id:delegate
        Pane {
            width: 300
            height: 300
            Material.elevation: 6
            Material.background:Material.Light
            Column{
                spacing: 2
                Row{
                    spacing: 60
                    Label {
                        text: qsTr("Name: "+modelData.name)
                    }
                    Label {
                        text: qsTr("Age :"+modelData.age)
                    }
                }
                Row{
                    Label {
                        text:"Baptized: "+modelData.BOD
                    }

                }
                Label {
                    text:"Type: "+modelData.type
                }

            }
        }
    }

}


