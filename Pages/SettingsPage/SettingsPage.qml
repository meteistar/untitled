import QtQuick 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: root

    property string buttonTitle: "default"

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }
    //TODO component yap
    Rectangle{
        id: sidebar

        width: 113 ; height: parent.height
//        border.color: "#A9AC00"
//        border.width: 4
        color: "gray"
        Rectangle{
            id: upperRect

            width: parent.width ; height: upperColumnId.implicitHeight+20
            border.color: "#372DFE"
            border.width: 4
            Column{
                id: upperColumnId

                anchors.centerIn: parent
                spacing: 10
                Row{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/profile.png"
                        width: 30 ; height: 30
                    }
                    Text{
                        text: "Guest"
                        verticalAlignment: Text.AlignVCenter
                        height: 30
                    }
                }
                Row{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/temperature.png"
                        width: 30 ; height: 30
                    }
                    Text{
                        text: "33 C"
                        verticalAlignment: Text.AlignVCenter
                        height: 30
                    }
                }
                Row{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/server.png"
                        width: 30 ; height: 30
                    }
                    Image{
                        source: "qrc:/Assets/wifi.png"
                        width: 30 ; height: 30
                    }
                }
                Text{
                    id: timeLabelId
                    text: Qt.formatTime(new Date(),"hh:mm:ss")
                    anchors.horizontalCenter: parent.horizontalCenter
                    Timer {
                        id: timer
                        interval: 1000
                        repeat: true
                        running: true

                        onTriggered:
                        {
                            timeLabelId.text =  Qt.formatTime(new Date(),"hh:mm:ss")
                        }
                    }
                }

                Text{
                    id: dateLabelId
                    text: Qt.formatDateTime(new Date(), "yyyy-MM-dd")
                }
            }

        }

        Rectangle{
            id: bottomRect

            width: parent.width
            anchors.top: upperRect.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            border.color: "#372DFE"
            border.width: 4
            Column{
                anchors.centerIn: parent
                spacing: 10

                Row{
                    spacing: 10
                    Image{
                        source: "qrc:/Assets/temperature.png"
                        width: 30 ; height: 30
                    }
                    Text{
                        text: "33 C"
                        height: 30
                        verticalAlignment: Text.AlignVCenter
                    }
                }
                Rectangle{
                    color: "#A9AC00"
                    width: 46 ; height: 46
                    radius: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    border.color: "#A9AC00"
                    border.width: 2
                    color: "transparent"
                    width: 46 ; height: 46
                    radius: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "#DCFF06"
                    width: 46 ; height: width
                    radius: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "#00AFFA"
                    width: 46 ; height: width
                    radius: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "#F9FC73"
                    width: 46 ; height: width
                    radius: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
    //TODO componenta cevir
    Rectangle{
        id: testButton

        x:213
        width: 221 ; height: 51
        border.color: "#A9AC00"
        border.width: 2
        Text{
            text: root.buttonTitle
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }
    //TODO componenta cevir
    Rectangle{
        id: homeButton

        x:803
        width: 221 ; height: 51
        border.color: "#A9AC00"
        border.width: 2
        Text{
            text: "HOME"
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }

    Rectangle{
        id: testInfoId
        width: 373 ; height: 150
        radius: 10
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop{position: 0.0 ;color: "#FEFEFE"}
            GradientStop{position: 1.0 ;color: "#ECEDF1"}
        }
        x:260 ; y:100
//        border{
//            color: "#372DFE"
//            width: 3
//        }
        Rectangle{
            width: 102 ; height: 31
            gradient: Gradient{
                orientation: Gradient.Horizontal
                GradientStop{position: 0.0 ;color: "#2A8DEA"}
                GradientStop{position: 1.0 ;color: "#372DFE"}
            }
            Text{
                text: "Test Info"
                anchors.centerIn: parent
                color: "#ECF1FC"
            }
        }
    }

    DropShadow {
        anchors.fill: testInfoId
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#BCC4C9"//"#80000000"
        source: testInfoId
    }

    Rectangle{
        id: testModeId
        width: 373 ; height: 150
        radius: 10
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop{position: 0.0 ;color: "#FEFEFE"}
            GradientStop{position: 1.0 ;color: "#ECEDF1"}
        }
        x:760 ; y:100
//        border{
//            color: "#372DFE"
//            width: 3
//        }
        Text{
            text: "Test Info"
//            anchors.centerIn: parent
            x: 5 ; y:5
            color: "#3D3D3D"
            font.bold: true
            font.pointSize: 14
        }
//        Rectangle{
//            width: 102 ; height: 31
//            gradient: Gradient{
//                orientation: Gradient.Horizontal
//                GradientStop{position: 0.0 ;color: "#2A8DEA"}
//                GradientStop{position: 1.0 ;color: "#372DFE"}
//            }
//            Text{
//                text: "Test Info"
//                anchors.centerIn: parent
//                color: "#ECF1FC"
//            }
//        }
        Rectangle{
            anchors.centerIn: parent
            width: 250 ; height: 50
            Text{
                text: "Standart"
                anchors.verticalCenter: parent.verticalCenter
                x: 10
            }
            Text{
                text: "Quick"
                anchors.verticalCenter: parent.verticalCenter
                x: 60
            }
        }
    }

    DropShadow {
        anchors.fill: testInfoId
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#BCC4C9"//"#80000000"
        source: testInfoId
    }
}
