import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    property bool isTestSlotEmpty: false

    color: 'transparent'

    Rectangle{
        id: testInfoId
        width: 373 ; height: 150
        radius: 26
        gradient: Constants.blueGradient
        x:260 ; y:100

        Rectangle{
            width: parent.width-4 ; height: parent.height-4
            radius: 26
            anchors.centerIn: parent
            color: 'white'
        }
        Text{
            text: "Test Info"
            y: -30
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }

            color: Constants.darkTextColor
        }
        Row{
            height: 23
            x:29 ; y: 19
            Text{
                width: 126 ; height: parent.height
                text: 'Patient No'
                verticalAlignment: Text.AlignVCenter
                color: Constants.text1Color
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 16
                }

            }
            Rectangle{
                width: 185 ; height: 23
                color: 'transparent'
                border.color: Constants.text1Color
                TextInput{
                    anchors.fill: parent
                    text: "31524841"
                    color: Constants.text1Color
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                }
            }
        }
        Row{
            height: 23
            x:29 ; y: 49
            Text{
                width: 126 ; height: parent.height
                text: 'Sample Type'
                verticalAlignment: Text.AlignVCenter
                color: Constants.text1Color
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 16
                }

            }
            Rectangle{
                width: 185 ; height: 23
                color: 'transparent'
                border.color: Constants.text1Color
                TextInput{
                    anchors.fill: parent
                    text: "SERUM/PLASMA"
                    color: Constants.text1Color
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 16
                    }
                }
            }
        }

        Row{
            spacing: 32
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 13
            PrimaryButton{
                fontSize: 16
                text: 'FROM<br>INCUBATOR'
            }
            SecondaryButton{
                fontSize: 16
                text: 'DETAILED<br>INFO'
                onClicked: {
                    //goto to detailed page
                    testStackLayout.currentIndex = 1
                }
            }
        }
    }
    Rectangle{
        id: testModeId
        width: 373 ; height: 150
        radius: 26
        gradient: Constants.blueGradient
        x:672 ; y:100

        Rectangle{
            width: parent.width-4 ; height: parent.height-4
            radius: 26
            anchors.centerIn: parent
            color: 'white'
        }
        Text{
            text: "Test Mode"
            y: -30
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }

            color: Constants.darkTextColor
        }

        //TODO standart quick
        Rectangle{
            anchors.centerIn: parent
            width: 250 ; height: 50
            border.color: 'black'
            Rectangle{
                id: handleId
                width: parent.width/2
                height: parent.height
                gradient: Constants.blueGradient
                x: 0
            }
            MouseArea{
                width: parent.width/2
                height: parent.height
                x: 0
                onClicked: {
                    handleId.x = 0
                    standardTextId.color = 'white'
                    quickTextId.color = Constants.darkTextColor
                }
            }
            MouseArea{
                width: parent.width/2
                height: parent.height
                x: parent.width/2
                onClicked: {
                    handleId.x = parent.width/2
                    quickTextId.color = 'white'
                    standardTextId.color = Constants.darkTextColor
                }
            }

            Text{
                id: standardTextId

                text: "Standart"
                anchors.verticalCenter: parent.verticalCenter
                width: 120
                height: 35
                x: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 12
                }
            }
            Text{
                id: quickTextId

                text: "Quick"
                anchors.verticalCenter: parent.verticalCenter
                width: 120
                height: 35
                x: 139
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font{
                    family: Constants.montserratNormal.name
                    pointSize: 12
                }
            }
        }
    }
    Rectangle{
        color: 'transparent'
        border{
            width: 3
            color: Constants.outlineColor
        }
        width: 718 ; height: 277
        radius: 39
        x: 260 ; y: 305
        Image{
            visible: isTestSlotEmpty
            source: 'qrc:/Assets/insertCartridge.png'
            width: 569
            height: 255
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: -16
        }
        Text{
            visible: isTestSlotEmpty
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            width: 395 ; height: 61
            horizontalAlignment: Text.AlignHCenter
            text: 'Please inser test cartridge'
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
        }

        CircularProgressBar{
            id: bar

            anchors.centerIn: parent
            current: 25
        }
    }

}
