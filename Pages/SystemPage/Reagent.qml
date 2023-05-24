import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    ListModel{
        id: reagentModel
        ListElement{
            mItem: "HbA1c"
            lotNo: "2202K101"
            expiryDate: "2023-6-14"
        }
        ListElement{
            mItem: "2019-nCoV Ag"
            lotNo: "2205G103"
            expiryDate: "2024-5-11"
        }
        ListElement{
            mItem: "HbA1c"
            lotNo: "2202K140"
            expiryDate: "2025-6-11"
        }
        ListElement{
            mItem: "HbA1c"
            lotNo: "2202K199"
            expiryDate: "2025-6-11"
        }
    }

    ListView{
        x:278 ; y:162
        width: 728 ; height: 332
        model: reagentModel
        delegate: reagentDelegate
    }

    Component{
        id: reagentDelegate
            Row{
            Rectangle{
                width: 240 ; height: 46
                color: 'white'
                border{
                    width: 1
                    color: Constants.primaryColor
                }
                Text{
                    anchors.centerIn: parent
                    text: mItem
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
            Rectangle{
                width: 240 ; height: 46
                color: 'white'
                border{
                    width: 1
                    color: Constants.primaryColor
                }
                Text{
                    anchors.centerIn: parent
                    text: lotNo
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
            Rectangle{
                width: 240 ; height: 46
                color: 'white'
                border{
                    width: 1
                    color: Constants.primaryColor
                }
                Text{
                    anchors.centerIn: parent
                    text: expiryDate
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
        }
    }

    Row{
        x: 278 ; y:116
        Rectangle{
            width: 240 ; height: 46
//            color: 'transparent'
            gradient: Constants.blueGradient
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Item"
                color: "white"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 18
                }
            }
        }
        Rectangle{
            width: 240 ; height: 46
//            color: 'transparent'
            gradient: Constants.blueGradient
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Lot Number"
                color: "white"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 18
                }
            }
        }
        Rectangle{
            width: 240 ; height: 46
//            color: 'transparent'
            gradient: Constants.blueGradient
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Expiry Date"
                color: "white"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 18
                }
            }
        }
    }
    Row{
        x: 560 ; y:525
        width: 129 ; height: 25
        spacing: 27
        Image{
            source: "qrc:/Assets/arrow.png"
            width: 20 ; height: parent.height
            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
        Text{
            text: '1/1'
            width: 36 ; height: parent.height
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pixelSize: 21
            }
        }
        Image{
            source: "qrc:/Assets/arrow.png"
            rotation: 180
            width: 20 ; height: parent.height
            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
    }

    SecondaryButton{
        text: 'CLEAN CALIBRATION'
        width: 245 ; height: 48
        x: 733 ; y:514
    }

}
