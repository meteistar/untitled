import QtQuick 2.15
import QtGraphicalEffects 1.15

import "../../"

Rectangle{
    id: sidebar

    width: 113 ; height: parent.height
    gradient: Constants.blueGradient
    Rectangle{
        id: upperRect

        color: 'transparent'
        width: parent.width ; height: upperColumnId.implicitHeight+20
        Column{
            id: upperColumnId

            anchors.centerIn: parent
            spacing: 10
            Row{
                spacing: 5
                Image{
                    source: "qrc:/Assets/profile.png"
                    width: 30 ; height: 30
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
                Text{
                    text: "Guest"
                    verticalAlignment: Text.AlignVCenter
                    height: 30
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 13
                    }
                }
            }
            Row{
                spacing: 5
                Image{
                    source: "qrc:/Assets/temperature.png"
                    width: 30 ; height: 30
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
                Text{
                    text: "33 C"
                    verticalAlignment: Text.AlignVCenter
                    height: 30
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 13
                    }
                }
            }
            Row{
                spacing: 5
                Image{
                    source: "qrc:/Assets/server.png"
                    width: 30 ; height: 30
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
                Image{
                    source: "qrc:/Assets/wifi.png"
                    width: 30 ; height: 30
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
            }
            Text{
                id: timeLabelId
                text: Qt.formatTime(new Date(),"hh:mm:ss")
                anchors.horizontalCenter: parent.horizontalCenter
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 13
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
            }

            Text{
                id: dateLabelId
                text: Qt.formatDateTime(new Date(), "yyyy-MM-dd")
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 13
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
        color: 'transparent'
        Column{
            anchors.centerIn: parent
            spacing: 10

            Row{
                spacing: 10
                Image{
                    source: "qrc:/Assets/temperature.png"
                    width: 30 ; height: 30
                    ColorOverlay{
                        anchors.fill: parent
                        source: parent
                        color: 'white'
                    }
                }
                Text{
                    text: "33 C"
                    height: 30
                    verticalAlignment: Text.AlignVCenter
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 13
                    }
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
