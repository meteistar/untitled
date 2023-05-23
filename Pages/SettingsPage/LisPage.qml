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

        Text{
            x: 23; y:52
            width: 86; height: 26
            text: 'IP Adress :'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }
        Text{
            x: 20; y:94
            width: 53; height: 26
            text: 'Port :'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }

        Rectangle{
            x: 116 ; y: 95
            width: 72 ; height: 26
            color: 'transparent'
            border{
                width: 2
                color: Constants.darkTextColor
            }
        }

        Row{
            x: 117 ; y: 52
            spacing: 8
            Rectangle{
                width: 46 ; height: 26
                color: 'transparent'
                border{
                    width: 2
                    color: Constants.darkTextColor
                }
            }
            Rectangle{
                width: 46 ; height: 26
                color: 'transparent'
                border{
                    width: 2
                    color: Constants.darkTextColor
                }
            }
            Rectangle{
                width: 46 ; height: 26
                color: 'transparent'
                border{
                    width: 2
                    color: Constants.darkTextColor
                }
            }
            Rectangle{
                width: 46 ; height: 26
                color: 'transparent'
                border{
                    width: 2
                    color: Constants.darkTextColor
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

        Text{
            x: 23; y:52
            width: 86; height: 26
            text: 'Ethernet :'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }
        Text{
            x: 131; y:52
            text: "DA:D5:D6:D5:D4:E1"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }

        Text{
            x: 20; y:94
            width: 53; height: 26
            text: 'WIFI :'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
        }
        Text{
            x: 131; y:94
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
    ////
    Text{
        x: 707 ; y: 304
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

    Rectangle{
        x: 785 ; y: 304
        width: 170 ; height: 37
        border{
            width: 3
            color: Constants.primaryColor
        }
        color: 'transparent'

        Rectangle{
            width: 88 ; height: 37
            color: Constants.primaryColor
        }

        Text{
            text: "ON"
            width: 88 ; height: 37
            font{
                family: Constants.montserratNormal.name
                pixelSize: 16
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            text: "OFF"
            width: 88 ; height: 37
            x: 82
            font{
                family: Constants.montserratNormal.name
                pixelSize: 16
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Button{
        id: testConnButtonId
        width: 250 ; height: 44
        x:708 ; y:370

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
            }
        }
        contentItem: Text{
            text: testConnButtonId.text
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
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
