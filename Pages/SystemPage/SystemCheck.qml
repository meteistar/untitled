import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Text{
        x:452 ; y:424
        text: 'Status: Quality inspection completed!'
        font{
            family: Constants.montserratNormal.name
            pixelSize: 21
        }
        color: Constants.text1Color
    }

    Rectangle{
        width: 569 ; height: 287
        color: Constants.cardBackgroundColor
        x:335 ; y:120


        ListView{
            id: systemCheckListId

            y: 47
            width: parent.width
            height: 239
            delegate: systemCheckDelegate
            model: systemCheckModel
        }
        Row{
            Rectangle{
                width: 285 ; height: 48
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: "Name"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
            Rectangle{
                width: 285 ; height: 48
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: "Result"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 18
                    }
                }
            }
        }

        Component{
            id: systemCheckDelegate
            Row{
                Rectangle{
                    width: 285 ; height: 48
                    color: 'transparent'
                    border{
                        width: 1
                        color: Constants.primaryColor
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
                    width: 285 ; height: 48
                    color: 'transparent'
                    border{
                        width: 1
                        color: Constants.primaryColor
                    }
                    Text{
                        anchors.centerIn: parent
                        text: result
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
            }
        }
        ListModel{
            id: systemCheckModel

            ListElement{
                name: "Transmission Check"
                result: "Normal"
            }
            ListElement{
                name: "Barcode System Check"
                result: "Normal"
            }
            ListElement{
                name: "Optical System Check"
                result: "Normal"
            }
            ListElement{
                name: "Electric Circuit Check"
                result: "Normal"
            }
            ListElement{
                name: "Incubator Check"
                result: "Normal"
            }
        }

    }

    Row{
        x:365 ; y:501
        spacing: 13
        SecondaryButton{
            text: 'IN'
        }
        SecondaryButton{
            text: 'OUT'
        }
        SecondaryButton{
            text: 'PRINT'
        }
        SecondaryButton{
            text: 'START'
        }
    }
}
