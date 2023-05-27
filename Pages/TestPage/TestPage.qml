import QtQuick 2.15
import QtQuick.Layouts 1.15
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
            gradient: Constants.blueGradient
//            border.color: "#A9AC00"
//            border.width: 4

            Column{
                anchors.centerIn: parent
                spacing: 5

                Text{
                    text: 'INCUBATOR 30 C'
                    color: 'white'
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: 'pink'
                    number: 1
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: 'red'
                    number: 2
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: 'blue'
                    number: 3
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: 'green'
                    number: 4
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: 'yellow'
                    number: 5
                }
            }
        }
    }

    MButton{
        text: root.buttonTitle
        anchors.left: sidebar.right
    }

    StackLayout{
        id: testStackLayout
        anchors.fill: parent

        currentIndex: 2

        MainTestPage{}
        DetailedInfo{}
        Result{}
    }

}
