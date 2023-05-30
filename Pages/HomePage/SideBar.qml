import QtQuick 2.0
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../../"

Rectangle {
    id: root

    width: 137 ; height: parent.height
    gradient: Constants.blueGradient

    Rectangle{
        id: upperRect

        width: parent.width ; height: 225
        gradient: Constants.blueGradient
        Column{
            anchors.fill: parent
            Row{
                width: parent.width
                height: 55
                Rectangle{
                    width: 44 ; height: parent.height
                    color: 'transparent'
                    Image{
                        id: profileIcon

                        source: "qrc:/Assets/profile.png"
                        anchors.centerIn: parent
                        ColorOverlay{
                            anchors.fill: profileIcon
                            source: profileIcon
                            color: "white"
                        }
                    }
                }
                Rectangle{
                    width: 93 ; height: parent.height
                    color: 'transparent'
                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Guest"
                        font.pixelSize: 13
                        font.family: Constants.montserratNormal.name
                        color: 'white'
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Row{
                width: parent.width
                height: 55
                Rectangle{
                    width: 44
                    height: parent.height
                    color: 'transparent'
                    Image{
                        id: temperatureIcon

                        anchors.centerIn: parent
                        source: "qrc:/Assets/temperature.png"
                        ColorOverlay{
                            anchors.fill: temperatureIcon
                            source: temperatureIcon
                            color: 'white'
                        }
                    }
                }
                Rectangle{
                    width: 93 ; height: parent.height
                    color: 'transparent'
                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        text: '33 C'
                        color: 'white'
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 13
                        }
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Row{
                width: parent.width
                height: 55
                Rectangle{
                    width: 137/3
                    height: parent.height
                    color: 'transparent'
                    Image{
                        id: serverIconId
                        anchors.centerIn: parent
                        source: "qrc:/Assets/server.png"
                        ColorOverlay{
                            anchors.fill: serverIconId
                            source: serverIconId
                            color: 'white'
                        }
                    }
                }
                Rectangle{
                    width: 137/3
                    height: parent.height
                    color: 'transparent'
                    Image{
                        id: usbIconId
                        anchors.centerIn: parent
                        source: "qrc:/Assets/usb-drive.png"
                        width: 22 ; height: 22
                        ColorOverlay{
                            anchors.fill: usbIconId
                            source: usbIconId
                            color: 'white'
                        }
                    }
                }
                Rectangle{
                    width: 137/3
                    height: parent.height
                    color: 'transparent'
                    Image{
                        id: wifiIcon

                        anchors.centerIn: parent
                        source: "qrc:/Assets/wifi.png"
                        ColorOverlay{
                            anchors.fill: wifiIcon
                            source: wifiIcon
                            color: 'white'
                        }
                    }
                }
            }

            Text{
                id: timeLabelId
                width: parent.width
                height: 27
                horizontalAlignment: Text.AlignHCenter
                text: Qt.formatTime(new Date(),"hh:mm:ss")
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 13
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

                width: parent.width
                height: 27
                horizontalAlignment: Text.AlignHCenter
                text: Qt.formatDateTime(new Date(), "yyyy-MM-dd")
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 13
                }
            }

            Rectangle{
                width: parent.width
                height: 2
                color: 'white'
            }
        }



    }

    Rectangle{
        id: bottomRect

        anchors.top: upperRect.bottom
        //bottom part
        Row{
            id: temperature2Id
            width: parent.width
            height: 55
            Rectangle{
                width: 44
                height: parent.height
                color: 'transparent'
                Image{
                    source: 'qrc:/Assets/temperature.png'
                    anchors.centerIn: parent
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
            }
            Rectangle{
                width: 93
                height: parent.height
                color: 'transparent'
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    text: '33 C'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        Column{
//            anchors.horizontalCenter: parent.horizontalCenter
            x: 45
            anchors.top: temperature2Id.bottom
            anchors.topMargin: 20
            width: parent.width

            spacing: 14
            Rectangle{
                color: "#A9AC00"
                width: 46 ; height: 46
                radius: 8
            }
            Rectangle{
                border.color: "#A9AC00"
                border.width: 2
                color: "transparent"
                width: 46 ; height: 46
                radius: 8
            }
            Rectangle{
                color: "#DCFF06"
                width: 46 ; height: width
                radius: 8
            }
            Rectangle{
                color: "#00AFFA"
                width: 46 ; height: width
                radius: 8
            }
            Rectangle{
                color: "#F9FC73"
                width: 46 ; height: width
                radius: 8
            }
        }
    }
}
