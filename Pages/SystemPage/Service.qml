import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Grid{
        x: 384 ; y: 169
        columns: 2 ; rows: 2
        columnSpacing: 140
        rowSpacing: 68

        Column{
            Rectangle{
                width: 139 ; height: 111
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
                Image{
                    source: 'qrc:/Assets/softwareUpgrade.png'
                    width: 101 ; height: 75
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {}
                }
            }
            Text{
                text: 'Software Upgrade'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -30
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Column{
            Rectangle{
                width: 139 ; height: 111
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
                Image{
                    source: 'qrc:/Assets/firmwareUpgrade.png'
                    width: 93 ; height: 73
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {}
                }
            }
            Text{
                text: 'Firmware Upgrade'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -30
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Column{
            Rectangle{
                width: 139 ; height: 111
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
                clip: true
                Image{
                    source: 'qrc:/Assets/onlineUpgrade.png'
                    width: 161 ; height: 92
                    anchors.centerIn: parent
                }
            }
            Text{
                text: 'Online Upgrade'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -30
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Column{
            Rectangle{
                width: 139 ; height: 111
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
                clip: true
                Image{
                    source: 'qrc:/Assets/ethernetConfiguration.png'
                    width: 153 ; height: 116
                    anchors.centerIn: parent
                }
            }
            Text{
                text: 'Ethernet Configuration'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -50
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
                horizontalAlignment: Text.AlignHCenter
            }
        }



    }
}
