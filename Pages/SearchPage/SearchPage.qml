import QtQuick 2.15
import QtGraphicalEffects 1.15

import "../"
import "../../"

BasePage {
    id: systemPageId

    buttonTitle: "SEARCH"

    Rectangle{
        id: tableFrameId

        x:158 ; y:71
        width: headerId.width ; height: 384
        color: Constants.cardBackgroundColor

        Row{
            id: headerId
            //width: 785
            height: 47
            Rectangle{
                width: 41
                height: parent.height
                gradient: Constants.blueGradient
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Date & Time'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Sample No'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Patient No'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Item'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Name'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: 'Result'
                    color: 'white'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 14
                    }
                }
            }

        }
    }

    ListView{
        id: searchList

        x:158 ; y:118
        width: 790 ; height: 335
        model: searchModelId
        delegate: searchDelegateId
    }

    Component{
        id: searchDelegateId
        Row {
            id: rectId
            width: parent.width
            anchors.left: parent.left
            height: 47
            Rectangle{
                width: 41
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
                Text{
                    id: orderLabelId
                    anchors.centerIn: parent
                    text: dateAndTime
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }

            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
                Text{
                    id: expiderOnLabelId
                    anchors.centerIn: parent
                    text: sampleNo
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }
            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
                Text{
                    id: statusLabelId
                    anchors.centerIn: parent
                    text: patientNo
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    color: Constants.text2Color
                }
            }

            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
                Text{
                    id: certCreatedOnLabelId
                    anchors.centerIn: parent
                    text: mItem
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }

            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }

                Text{
                    id: certExpiredOnLabelId
                    anchors.centerIn: parent
                    text: name
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }

            Rectangle{
                width: 123
                height: parent.height
                color: 'transparent'
                border{
                    width: 1
                    color: Constants.outlineColor
                }
                Text{
                    id: certUrlLabelId
                    anchors.centerIn: parent
                    text: result
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }


        }

    }
    ListModel{
        id: searchModelId

        ListElement {
            dateAndTime: "2023-12-06" ;
            sampleNo: "1" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-07" ;
            sampleNo: "2" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-06" ;
            sampleNo: "3" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-07" ;
            sampleNo: "4" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-06" ;
            sampleNo: "5" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-07" ;
            sampleNo: "6" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-06" ;
            sampleNo: "7" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-07" ;
            sampleNo: "8" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-06" ;
            sampleNo: "9" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
        ListElement {
            dateAndTime: "2023-12-07" ;
            sampleNo: "10" ;
            patientNo: "12345" ;
            mItem: "abc" ;
            name: "xyz" ;
            result: "Valid" ;
        }
    }

    SecondaryButton{
        id: infoId
        text: 'Info'
        x: 203 ; y: 464
    }

    Image{
        source: "qrc:/Assets/arrow.png"
        x:418 ; y:476
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Up Arrow clicked")
                searchList.positionViewAtBeginning()
                searchList.positionViewAtIndex(0, ListView.Beginning)
            }
        }
    }
    Text{
        text: "1/2"
        font.pixelSize: 21
        color: Constants.primaryColor
        anchors.verticalCenter: infoId.verticalCenter
        x:470
    }

    Image{
        source: "qrc:/Assets/arrow.png"
        rotation: 180
        x:527 ; y:476
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Down Arrow clicked")
                searchList.positionViewAtIndex(5, ListView.Beginning)
            }
        }
    }
    SecondaryButton{
        text: '2'
        x:596 ; y:466
        width: 64 ; height: 44
    }

    SecondaryButton{
        text: "Go"
        x:696 ; y:466
        width: 64 ; height: 44
    }
    Row{
        spacing: 14
        width: 637 ; height: 51
        x: 204 ; y: 523
        SecondaryButton{ text: "Search" }
        SecondaryButton{ text: "Delete" }
        SecondaryButton{ text: "Print"  }
        SecondaryButton{ text: "Send"   }
        SecondaryButton{ text: "Export" }
    }

}
