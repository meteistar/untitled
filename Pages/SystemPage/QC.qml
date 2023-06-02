import QtQuick 2.15
import QtQuick.Controls 2.15
//import QtCharts 2.5
import QtCharts 2.0
import "../../"

Rectangle {
    id: root

    color: 'transparent'

    MouseArea{
        anchors.fill: parent
        onClicked: {
            focus = true
            root.y = 0
        }
    }

    ChartView {
        id: chart
        title: "Top-5 car brand shares in Finland"
        width: 424 ; height: 330
        x: 403 ; y: 54
        legend.alignment: Qt.AlignBottom
        antialiasing: true

        LineSeries{

            XYPoint { x: -20; y: 0 }
            XYPoint { x: -13; y: 0 }
            XYPoint { x: -10; y: 0.2 }
            XYPoint { x: -7; y: 0 }
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 5; y:  0.1}
            XYPoint { x: 10; y: 0 }
        }
    }
    Rectangle{
        x: 298 ; y:397
        width: 710 ; height: 178
        radius: 35
        gradient: Constants.blueGradient

        Rectangle{
            anchors.centerIn: parent
            width: parent.width - 6
            height: parent.height - 6
            color: 'white'
            radius: parent.radius
        }
        Text{
            text: 'R&D Test'
            y: -40
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }

        Row{
            x: 22 ; y:62
            spacing: 32
            Row{
                spacing: 7
                Text{
                    text: 'Delay(s):'
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                TextInput{
                    text: '0'
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    onFocusChanged: {
                        if(focus){
                            root.y = -310
                        }
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Row{
                spacing:0
                Text{
                    text: 'Total :'
                    width: 62
                    height: 27
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                TextInput{
                    text: '6000'
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    onFocusChanged: {
                        if(focus){
                            root.y = -310
                        }
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Row{
                spacing: 0
                Text{
                    text: 'Test Times:'
                    width: 92 ; height: 27
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                TextInput{
                    text: '310'
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                    onFocusChanged:{
                        if(focus){
                            root.y = -310
                        }
                    }
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

        }

        CheckBox{
            x:182 ; y:120
            text: "Auto print"
            font{
                family: Constants.montserratNormal.name
                pixelSize: 16
            }
        }

        Row{
            x: 350 ; y:128

            Text{
                text: 'SN:'
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 16
                }
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            TextInput{
                text: 'data'
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 16
                }
                onFocusChanged:{
                    if(focus){
                        root.y = -310
                    }
                }
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        PrimaryButton{
            x:548 ; y:48
            text: "START"
        }

        SecondaryButton{
            x: 549 ; y:108
            text: "SAVE"
        }
    }
}
