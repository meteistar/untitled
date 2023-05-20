import QtQuick 2.15

Rectangle {
    id: root

    Rectangle{
        id: sidebar

        width: 213 ; height: parent.height
        border.color: "#A9AC00"
        border.width: 4

        Rectangle{
            id: upperRect

            width: parent.width ; height: 143
            border.color: "#A9AC00"
            border.width: 4

            Image{
                source: "qrc:/Assets/profile.png"
                x: 13 ; y:23
            }
            Text{
                text: "Guest"
                x: 50 ; y:23
            }
            Image{
                source: "qrc:/Assets/temperature.png"
                x: 75 ; y:23
            }
            Text{
                text: "33 C"
                x: 100 ; y:23
            }
            Image{
                source: "qrc:/Assets/server.png"
                x: 13 ; y: 50
            }
            Image{
                source: "qrc:/Assets/wifi.png"
                x: 53 ; y:50
            }
            Text{
                id: timeLabelId
                text: Qt.formatTime(new Date(),"hh:mm:ss")
                x: 75 ; y:50
//                anchors{
//                    left: parent.left
//                    leftMargin: 29
//                    top: parent.top
//                    topMargin: 158
//                }
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
                x: 75 ; y:75
//                anchors{
//                    left: parent.left
//                    leftMargin: 29
//                    top: parent.top
//                    topMargin: 178
//                }
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
            text: "TEST"
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
}
