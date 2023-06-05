import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    property int totalPage: 4
    property int currentPage: 1

    color: 'transparent'
    Rectangle{
        width: 720 ; height: 384
        color: Constants.cardBackgroundColor
        x: 262 ; y: 82

        ListView{
            id: reagentListId

            y: 44
            width: parent.width
            height: 337
            delegate: reagentDelegate
            model: reagentModel
            highlight: Rectangle{
                gradient: Constants.blueGradient

            }
        }
        Component{
            id: reagentDelegate
            Rectangle{
                color: 'transparent'
                width: 720 ; height: 44
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
                        text: referenceLow + '-' + referenceHigh
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
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    reagentListId.currentIndex = index
                }
            }
            }
        }
        ListModel{
            id: reagentModel

            ListElement{
                item: "hsCRP"
                itemNo: "I4"
                referenceLow: 0
                referenceHigh: 98
                //referenceRange: "0-1"
                unit: "mg/L"
            }
            ListElement{
                item: "CRP"
                itemNo: "C2"
                referenceLow: 0
                referenceHigh: 100
                //referenceRange: "0-10"
                unit: "mg/L"
            }
            ListElement{
                item: "PTC"
                itemNo: "C3"
                referenceLow: 0
                referenceHigh: 100
                //referenceRange: "0.0-0.3"
                unit: "mg/L"
            }
            ListElement{
                item: "hbA1c"
                itemNo: "C4"
                referenceLow: 0
                referenceHigh: 100
                //referenceRange: "0-300.0"
                unit: "mg/L"
            }
        }

        Row{
        Rectangle{
            width: 180 ; height: 44
            gradient: Constants.blueGradient
            Text{
                anchors.centerIn: parent
                text: "Item"
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            gradient: Constants.blueGradient
            Text{
                anchors.centerIn: parent
                text: "Item No"
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            gradient: Constants.blueGradient
            Text{
                anchors.centerIn: parent
                text: "Reference Range"
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
        }
        Rectangle{
            width: 180 ; height: 44
            gradient: Constants.blueGradient
            Text{
                anchors.centerIn: parent
                text: "Unit"
                color: 'white'
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 17
                }
            }
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
                onClicked: {
                    if(currentPage === totalPage)
                        return
                    currentPage += 1
                }
            }
        }
        Text{
            text: currentPage + "/" + totalPage
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
                onClicked: {
                    if(currentPage === 1)
                        return
                    currentPage -= 1
                }
            }
        }
    }
    Row{
        x: 429 ; y:533
        spacing: 14

        SecondaryButton{
            text: 'ADD'
            onClicked: {
                addReagentPopupId.popUpType = "ADD"
                addReagentPopupId.open()
            }
        }
        SecondaryButton{
            text: 'EDIT'
            onClicked: {
                console.log("item " + reagentModel.get(reagentListId.currentIndex).item)
                addReagentPopupId.m_item = reagentModel.get(reagentListId.currentIndex).item
                addReagentPopupId.m_itemNo = reagentModel.get(reagentListId.currentIndex).itemNo
                addReagentPopupId.referenceLowLimit = reagentModel.get(reagentListId.currentIndex).referenceLow
                addReagentPopupId.referenceHighLimit = reagentModel.get(reagentListId.currentIndex).referenceHigh
                addReagentPopupId.popUpType = "EDIT"
                addReagentPopupId.open()
            }
        }
        SecondaryButton{
            text: 'RESET'
        }
    }

    Popup{
        id: addReagentPopupId

        property string m_item: "newItem"
        property string m_itemNo: "newItemNo"
        property string referenceLowLimit: "0"
        property string referenceHighLimit: "100"
        property string unit: "mg/L"

        property string popUpType: "ADD"

        x: (1040 - width)/2
        y: 10//(600 - height)/2
        width: 400
        height: 400
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        background: Rectangle{
            gradient: Constants.blueGradient
            anchors.fill: parent
            radius: 20
            Rectangle{
                color: 'white'
                width: parent.width - 4
                height: parent.height - 4
                radius: 20
                anchors.centerIn: parent
            }
        }
        contentItem: Column{
            anchors.centerIn: parent
            spacing: 10
            Row{
                spacing: 10
                Text{
                    text: "Item "
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
                TextField{
                    id: itemTextId
                    text: addReagentPopupId.m_item
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
            }
            Row{
                spacing: 10
                Text{
                    text: "Item No "
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
                TextField{
                    id: itemNoId
                    text: addReagentPopupId.m_itemNo
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
            }
            Row{
                spacing: 10
                Text{
                    text: "Low Limit "
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
                TextField{
                    id: lowLimitId
                    text: addReagentPopupId.referenceLowLimit
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
            }
            Row{
                spacing: 10
                Text{
                    text: "High Limit "
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
                TextField{
                    id: highLimitId
                    text: addReagentPopupId.referenceHighLimit
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
            }
            Row{
                spacing: 10
                Text{
                    text: "Unit "
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
                TextField{
                    id: unitId
                    text: addReagentPopupId.unit
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    color: Constants.text1Color
                }
            }

            PrimaryButton{
                text: addReagentPopupId.popUpType
                onClicked: {
                    if(text === "ADD"){
                        reagentModel.append({item: itemTextId.text,
                                             itemNo: itemNoId.text,
                                             referenceLow: lowLimitId.text,
                                             referenceHigh: highLimitId.text,
                                             unit: unitId.text})
                    }else if(text === "EDIT"){

                    }

                    addReagentPopupId.close()
                }
            }
        }
    }

}
