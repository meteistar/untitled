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

        Rectangle{
            id: upperRect

            width: parent.width ; height: 143
            gradient: Constants.blueGradient

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
                    leftSquareColor: '#A9AC00'
                    number: 1
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: '#A9AC00'
                    number: 2
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: '#DCFF06'
                    number: 3
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: '#00AFFA'
                    number: 4
                }
                IncubatorSlot{
                    y: 290
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftSquareColor: '#F9FC73'
                    number: 5
                }
            }
        }
    }

    PrimaryButton{
        enabled: false
        width: 274 ; height: 54
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
