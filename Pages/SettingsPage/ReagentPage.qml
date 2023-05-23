import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'
    Rectangle{
        width: 720 ; height: 384
        color: Constants.cardBackgroundColor
        x: 262 ; y: 82
        Row{
        Rectangle{
            width: 180 ; height: 44
            color: 'transparent'
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Item"
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            color: 'transparent'
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Item No"
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            color: 'transparent'
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Reference Range"
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            color: 'transparent'
            border{
                width: 1
                color: "gray"
            }
            Text{
                anchors.centerIn: parent
                text: "Unit"
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
    }

        ListView{
            id: reagentListId

            y: 44
            width: parent.width
            height: 337
            delegate: reagentDelegate
            model: reagentModel
        }
        Component{
            id: reagentDelegate
            Row{
                Rectangle{
                    width: 180 ; height: 44
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: item
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
                Rectangle{
                    width: 180 ; height: 44
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: itemNo
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
                Rectangle{
                    width: 180 ; height: 44
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: referenceRange
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
                Rectangle{
                    width: 180 ; height: 44
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: unit
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
            id: reagentModel

            ListElement{
                item: "hsCRP"
                itemNo: "I4"
                referenceRange: "0-1"
                unit: "mg/L"
            }
            ListElement{
                item: "CRP"
                itemNo: "C2"
                referenceRange: "0-10"
                unit: "mg/L"
            }
            ListElement{
                item: "PTC"
                itemNo: "C3"
                referenceRange: "0.0-0.3"
                unit: "mg/L"
            }
            ListElement{
                item: "hbA1c"
                itemNo: "C4"
                referenceRange: "0-300.0"
                unit: "mg/L"
            }
        }
    }
    Row{
        x:556 ; y:480
        spacing: 20
        Image{
            id: upArrow
            source: "qrc:/Assets/arrow.png"
            width: 30 ; height: width

            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
        Text{
            text: "1/4"
            width:46
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Image{
            id: downArrow
            source: "qrc:/Assets/arrow.png"
            rotation: 180
            width: 30 ; height: width

            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
    }
    Row{
        x: 429 ; y:533
        spacing: 14

        SecondaryButton{
            text: 'ADD'
        }
        SecondaryButton{
            text: 'EDIT'
        }
        SecondaryButton{
            text: 'RESET'
        }
    }
}
