import QtQuick 2.0

import "../../"

Rectangle {
    id: root

    width: 137 ; height: parent.height

    gradient: Constants.blueGradient

    Rectangle{
        anchors.centerIn: parent
        width: parent.width-8
        height: parent.height-8
        gradient: Constants.bg
    }

    Rectangle{
        id: upperRect

        width: parent.width ; height: 225
        gradient: Constants.blueGradient

        Rectangle{
            anchors.centerIn: parent
            width: parent.width-8
            height: parent.height-8
            gradient: Constants.bg
        }

        Image{
            id: profileIcon

            source: "qrc:/Assets/profile.png"
            anchors{
                left: parent.left
                leftMargin: 17
                top: parent.top
                topMargin: 23
            }
        }
        Text{
            text: "Guest"
            font.pointSize: 13
            color: 'black'
            anchors{
                left: parent.left
                leftMargin: 60
                top: parent.top
                topMargin: 17
            }
        }
        //2nd row
        Image{
            id: temperatureIcon

            source: "qrc:/Assets/temperature.png"
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin: 67
            }
        }
        Text{
            text: "33 C"
            font.pointSize: 13
            color: 'black'
            anchors{
                left: parent.left
                leftMargin: 60
                top: parent.top
                topMargin: 69
            }
        }
        //3nd row
        Image{
            id: serverIcon

            source: "qrc:/Assets/server.png"
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin: 122
            }
        }
        Image{
            id: usbIcon

            source: "qrc:/Assets/usb-drive.png"
            anchors{
                left: parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 117
            }
            width: 22 ; height: 22
        }
        Image{
            id: wifiIcon

            source: "qrc:/Assets/wifi.png"
            anchors{
                left: parent.left
                leftMargin: 87
                top: parent.top
                topMargin: 117
            }
        }
        Text{
            id: timeLabelId
            text: Qt.formatTime(new Date(),"hh:mm:ss")
            anchors{
                left: parent.left
                leftMargin: 29
                top: parent.top
                topMargin: 158
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
            anchors{
                left: parent.left
                leftMargin: 29
                top: parent.top
                topMargin: 178
            }
        }

    }

    Rectangle{
        id: bottomRect

        anchors.top: upperRect.bottom
        //bottom part
        Image{
            source: "qrc:/Assets/temperature.png"
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin: 14
            }
        }
        Text{
            id: temperature2Id
            text: "33 C"
            anchors{
                left: parent.left
                leftMargin: 60
                top: parent.top
                topMargin: 15
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
