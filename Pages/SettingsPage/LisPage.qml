import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Text{
        x: 265 ; y: 80
        text: "LIS Server"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }
    ////Lis Server
    Rectangle{
        x: 257 ; y: 115
        width: 372 ; height: 146
        color: 'white'
        radius: 28
        Column{
            anchors.centerIn: parent
            spacing: 10
            Row{
                Text{
                    width: 91; height: 26
                    text: 'IP Adress : '
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }
                Row{
                    spacing: 8

                    Rectangle{
                        width: 46 ; height: 26
                        color: 'transparent'
                        border{
                            width: 2
                            color: Constants.darkTextColor
                        }
                        TextEdit{
                            anchors.fill: parent
                        }
                    }
                    Rectangle{
                        width: 46 ; height: 26
                        color: 'transparent'
                        border{
                            width: 2
                            color: Constants.darkTextColor
                        }
                        TextEdit{
                            anchors.fill: parent
                        }
                    }
                    Rectangle{
                        width: 46 ; height: 26
                        color: 'transparent'
                        border{
                            width: 2
                            color: Constants.darkTextColor
                        }
                        TextEdit{
                            anchors.fill: parent
                        }
                    }
                    Rectangle{
                        width: 46 ; height: 26
                        color: 'transparent'
                        border{
                            width: 2
                            color: Constants.darkTextColor
                        }
                        TextEdit{
                            anchors.fill: parent
                        }
                    }
                }

            }

            Row{
                Text{
                    width: 91; height: 26
                    text: 'Port : '
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }

                Rectangle{
                    width: 72 ; height: 26
                    color: 'transparent'
                    border{
                        width: 2
                        color: Constants.darkTextColor
                    }
                    TextEdit{
                        anchors.fill: parent
                    }
                }
            }
        }






    }
    ////Communication Mode
    Text{
        x: 667 ; y: 80
        text: "Communication Mode"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }
    Rectangle{
        x: 646 ; y: 115
        width: 372 ; height: 146
        color: 'white'
        radius: 28

        Text{
            x: 23; y:52
            width: 86; height: 26
            text: 'TCP'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }
    }
    ////MAC Adress
    Text{
        x: 265 ; y: 271
        text: "MAC Adress"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }
    Rectangle{
        x: 257 ; y: 304
        width: 372 ; height: 146
        color: 'white'
        radius: 28

        Column{
            spacing: 10
            anchors.centerIn: parent

            Row{
                Text{
//                    x: 23; y:52
                    width: 91; height: 26
                    text: 'Ethernet : '
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }
                Text{
//                    x: 131; y:52
                    text: "DA:D5:D6:D5:D4:E1"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }
            }

            Row{
                Text{
                    width: 91; height: 26
                    text: 'WIFI : '
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }
                Text{
                    text: "DA:D5:D6:D5:D4:E1"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 17
                    }
                }
            }
        }




    }
    ////
    Text{
        x: 707
        anchors.verticalCenter: lisToggleId.verticalCenter
        text: 'LIS :'
        font{
            family: Constants.montserratNormal.name
            pixelSize: 20
        }
        color: Constants.darkTextColor
        width: 74 ; height: 25
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    MToggleButton{
       id: lisToggleId

       x: 785 ; y: 304
       firstText: 'ON'
       secondText: 'OFF'

       onFirstClicked: console.log("first clicked")
       onSecondClicked: console.log("second clicked")
    }

    Button{
        id: testConnButtonId
        width: 250 ; height: 44
        x:708 ; y:370
        hoverEnabled: false
        text: "TEST CONNECTION"
        background: Rectangle{
            anchors.fill: parent
            radius: 8
            gradient: Constants.blueGradient

            Rectangle{
                anchors.centerIn: parent
                width: 246 ; height: 40
                radius: 8
                gradient: Gradient{
                    orientation: Gradient.Horizontal
                    GradientStop{position: 0.0 ;color: "#DFE6EE"}
                    GradientStop{position: 1.0 ;color: "#CAD8DB"}
                }
                visible: testConnButtonId.down ? false : true
            }
        }
        contentItem: Text{
            text: testConnButtonId.text
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: testConnButtonId.down ? 'white' : Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
    }

    PrimaryButton{
       x:430 ; y:510
       text: 'SAVE'
    }

    SecondaryButton{
       x:613 ; y:510
       text: 'CANCEL'
    }

}
