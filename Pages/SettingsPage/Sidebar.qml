import QtQuick 2.15
import QtGraphicalEffects 1.15

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
