import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Rectangle{
        width: 720 ; height: 384
        color: Constants.cardBackgroundColor
        x: 272 ; y: 117

        Row{
            Rectangle{
                width: 240 ; height: 47
                color: 'transparent'
                border{
                    width: 1
                    color: "gray"
                }
                Text{
                    anchors.centerIn: parent
                    text: "Signal Strength"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
            Rectangle{
                width: 240 ; height: 47
                color: 'transparent'
                border{
                    width: 1
                    color: "gray"
                }
                Text{
                    anchors.centerIn: parent
                    text: "Network Name"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
            Rectangle{
                width: 240 ; height: 47
                color: 'transparent'
                border{
                    width: 1
                    color: "gray"
                }
                Text{
                    anchors.centerIn: parent
                    text: "Status"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
        }

        ListView{
            id: wifiListId

            y: 47
            width: parent.width
            height: 337
            delegate: wifiDelegate
            model: wifiModel
        }

        Component{
            id: wifiDelegate
            Row{
                Rectangle{
                    width: 240 ; height: 47
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Image{
                        anchors.centerIn: parent
                        fillMode: Image.PreserveAspectFit
                        width: 40 ; height: 40
                        source: signal === "1" ? "qrc:/Assets/wifi.png" : "qrc:/Assets/usb-drive.png"
                    }
                }
                Rectangle{
                    width: 240 ; height: 47
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: name
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
                Rectangle{
                    width: 240 ; height: 47
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: status
                        color: status === "Connected" ? "red" : Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
            }
        }
        ListModel{
            id: wifiModel

            ListElement{
                signal: "1";
                name: "TurkTelekom_VB53"
                status: "Connected"
            }
            ListElement{
                signal: "2";
                name: "ASUS"
                status: "Not Connected"
            }
            ListElement{
                signal: "3";
                name: "DSMART"
                status: "Not Connected"
            }
            ListElement{
                signal: "4";
                name: "SuperOnline_VR01"
                status: "Not Connected"
            }
        }
    }

    Text{
        text: 'WIFI :'
        font{
            family: Constants.montserratNormal.name
            pixelSize: 20
        }
        color: Constants.darkTextColor
        width: 74 ; height: 25
        x: 324 //; y: 533
        anchors.verticalCenter: wifiToggleId.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    MToggleButton{
       id: wifiToggleId

       x: 430 ; y: 526
       firstText: 'ON'
       secondText: 'OFF'

       onFirstClicked: console.log("first clicked")
       onSecondClicked: console.log("second clicked")
    }

//    Rectangle{
//        visible: false
//        x: 430 ; y: 526
//        width: 170 ; height: 37
//        border{
//            width: 3
//            color: Constants.primaryColor
//        }
//        color: 'transparent'

//        Rectangle{
//            width: 88 ; height: 37
//            color: Constants.primaryColor
//        }

//        Text{
//            text: "ON"
//            width: 88 ; height: 37
//            font{
//                family: Constants.montserratNormal.name
//                pixelSize: 16
//            }
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//        }
//        Text{
//            text: "OFF"
//            width: 88 ; height: 37
//            x: 82
//            font{
//                family: Constants.montserratNormal.name
//                pixelSize: 16
//            }
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//        }
//    }

    Text{
        text: "Local IP: 192.168.1.103"
        width: 238 ; height: 28
        x: 764 ; y:532
        color: Constants.darkTextColor
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
