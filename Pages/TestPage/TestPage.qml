import QtQuick 2.15
import QtGraphicalEffects 1.15

import "../"
import "../../"
import "../SettingsPage"

BasePage{
    id: root

    buttonTitle: "TEST"

    Rectangle{
        id: sidebar

        width: 213 ; height: parent.height
        gradient: Constants.blueGradient
//        border.color: "#A9AC00"
//        border.width: 4

        Rectangle{
            id: upperRect

            width: parent.width ; height: 143
            gradient: Constants.blueGradient
//            border.color: "#A9AC00"
//            border.width: 4
            Column{
                anchors.fill: parent
                Row{
                    width: parent.width
                    height: parent.height/2
                    Rectangle{
                        width: 44; height: parent.height
                        color: 'transparent'
                            Image{
                                source: "qrc:/Assets/profile.png"
                                anchors.centerIn: parent
                                ColorOverlay{
                                    anchors.fill: parent
                                    source: parent
                                    color: 'white'
                                }
                            }
                    }
                    Rectangle{
                        width: parent.width/2 - 44 ; height: parent.height
                        color: 'transparent'
                        Text{
                            anchors.verticalCenter: parent.verticalCenter
                            text: "Guest"
                            font{
                                family: Constants.montserratNormal.name
                                pointSize: 13
                            }
                            color: 'white'
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                    Rectangle{
                        width: 44; height: parent.height
                        color: 'transparent'
                            Image{
                                source: "qrc:/Assets/temperature.png"
                                anchors.centerIn: parent
                                ColorOverlay{
                                    anchors.fill: parent
                                    source: parent
                                    color: 'white'
                                }
                            }
                    }
                    Rectangle{
                        width: parent.width/2 - 44 ; height: parent.height
                        color: 'transparent'
                        Text{
                            anchors.verticalCenter: parent.verticalCenter
                            text: "33 C"
                            font{
                                family: Constants.montserratNormal.name
                                pointSize: 13
                            }
                            color: 'white'
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                }

                Row{
                    width: parent.width ; height: parent.height/2
                    Rectangle{
                        width: parent.width/3 ; height: parent.height
                        color: 'transparent'
                        Image{
                            anchors.centerIn: parent
                            source: "qrc:/Assets/server.png"
                            ColorOverlay{
                                anchors.fill: parent
                                source: parent
                                color: 'white'
                            }
                        }
                    }
                    Rectangle{
                        width: parent.width/3 ; height: parent.height
                        color: 'transparent'
                        Image{
                            anchors.centerIn: parent
                            source: "qrc:/Assets/usb-drive.png"
                            width: 22
                            height: 22
                            ColorOverlay{
                                anchors.fill: parent
                                source: parent
                                color: 'white'
                            }
                        }
                    }
                    Rectangle{
                        width: parent.width/3 ; height: parent.height
                        color: 'transparent'
                        Column{
                            anchors.centerIn: parent
                            Text{
                                id: timeLabelId
                                text: Qt.formatTime(new Date(),"hh:mm:ss")
                                color: 'white'
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                font{
                                    family: Constants.montserratNormal.name
                                    pointSize: 10
                                }
                            }
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
                            Text{
                                id: dateLabelId
                                text: Qt.formatDateTime(new Date(), "yyyy-MM-dd")
                                color: 'white'
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                font{
                                    family: Constants.montserratNormal.name
                                    pointSize: 10
                                }
                            }
                        }
                    }
                }
            }

        }

        Rectangle{
            id: bottomRect

            width: parent.width
            anchors.top: upperRect.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            border.color: "#A9AC00"
            border.width: 4
            Text{
                text: "INCUBATOR 30 C"
                anchors.horizontalCenter: parent.horizontalCenter
                y: 5
            }
            Rectangle{
                id: firstRectId
                anchors.horizontalCenter: parent.horizontalCenter
                y: 30
                width: 190 ; height: 73
                radius: 8
                color: "transparent"
                border{
                    color: "#F8C70F"
                    width: 3
                }
                Rectangle{
                    width: 28 ; height: width
                    radius: 5
                    color: "#F8C70F"
                    Text{
                        text: "1"
                        anchors.centerIn: parent
                    }
                }
                Rectangle{
                    width: 61 ; height: 61
                    radius: 8
                    color: "#F8C70F"
                    anchors{
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 6
                    }
                    Text{
                        id: firstTimerId
                        property int minute: 14
                        property int second: 59
                        anchors.centerIn: parent
                        text: minute + ":" + second
                    }
                    Timer {
                        id: timer1
                        interval: 1000
                        repeat: true
                        running: true

                        onTriggered:
                        {
                            firstTimerId.second--
                            if(firstTimerId.second == 0){
                                firstTimerId.second = 59
                                firstTimerId.minute--
                            }

                        }
                    }
                }
            }
            Rectangle{
                id: secondRectId
                anchors.horizontalCenter: parent.horizontalCenter
                y: 110
                width: 190 ; height: 73
                radius: 8
                color: "transparent"
                border{
                    color: "#12CDD4"
                    width: 2
                }
                Rectangle{
                    width: 28 ; height: width
                    radius: 8
                    color: "#12CDD4"
                    Text{
                        text: "2"
                        anchors.centerIn: parent
                    }
                }
                Rectangle{
                    width: 61 ; height: 61
                    radius: 8
                    color: "#12CDD4"
                    anchors{
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 6
                    }
                }
            }
            Rectangle{
                id: thirdRectId
                anchors.horizontalCenter: parent.horizontalCenter
                y: 200
                width: 190 ; height: 73
                radius: 8
                color: "transparent"
                border{
                    color: "#CEE741"
                    width: 2
                }
                Rectangle{
                    width: 28 ; height: width
                    radius: 8
                    color: "#12CDD4"
                    Text{
                        text: "3"
                        anchors.centerIn: parent
                    }
                }
                Rectangle{
                    width: 61 ; height: 61
                    radius: 8
                    color: "#CEE741"
                    anchors{
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 6
                    }
                }
            }
        }
    }

    MButton{
        text: root.buttonTitle
        anchors.left: sidebar.right
    }

    Rectangle{
        id: testInfoId
        width: 373 ; height: 150
        radius: 26
        gradient: Constants.blueGradient
        x:260 ; y:100

        Rectangle{
            width: parent.width-4 ; height: parent.height-4
            radius: 26
            anchors.centerIn: parent
            color: 'white'
        }
        Text{
            text: "Test Info"
            y: -30
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }

            color: Constants.darkTextColor
        }

        Row{
            spacing: 32
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 13
            PrimaryButton{
                text: 'FROM<br>INCUBATOR'
            }
            SecondaryButton{
                text: 'DETAILED<br>INFO'
            }
        }
    }

    Rectangle{
        id: testModeId
        width: 373 ; height: 150
        radius: 26
        gradient: Constants.blueGradient
        x:672 ; y:100

        Rectangle{
            width: parent.width-4 ; height: parent.height-4
            radius: 26
            anchors.centerIn: parent
            color: 'white'
        }
        Text{
            text: "Test Mode"
            y: -30
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }

            color: Constants.darkTextColor
        }

        //TODO standart quick
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

//    DropShadow {
//        anchors.fill: testInfoId
//        horizontalOffset: 3
//        verticalOffset: 3
//        radius: 8.0
//        samples: 17
//        color: "#BCC4C9"//"#80000000"
//        source: testInfoId
//    }

//    Rectangle{
////        id: testModeId
//        width: 373 ; height: 150
//        radius: 10
//        gradient: Gradient{
//            orientation: Gradient.Horizontal
//            GradientStop{position: 0.0 ;color: "#FEFEFE"}
//            GradientStop{position: 1.0 ;color: "#ECEDF1"}
//        }
//        x:760 ; y:100
////        border{
////            color: "#372DFE"
////            width: 3
////        }
//        Text{
//            text: "Test Info"
////            anchors.centerIn: parent
//            x: 5 ; y:5
//            color: "#3D3D3D"
//            font.bold: true
//            font.pointSize: 14
//        }
////        Rectangle{
////            width: 102 ; height: 31
////            gradient: Gradient{
////                orientation: Gradient.Horizontal
////                GradientStop{position: 0.0 ;color: "#2A8DEA"}
////                GradientStop{position: 1.0 ;color: "#372DFE"}
////            }
////            Text{
////                text: "Test Info"
////                anchors.centerIn: parent
////                color: "#ECF1FC"
////            }
////        }

//    }

//    DropShadow {
//        anchors.fill: testInfoId
//        horizontalOffset: 3
//        verticalOffset: 3
//        radius: 8.0
//        samples: 17
//        color: "#BCC4C9"//"#80000000"
//        source: testInfoId
//    }


}
