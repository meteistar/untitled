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
        width: 790 ; height: 384
        color: Constants.cardBackgroundColor
        Rectangle{
            id: horLine
            width: parent.width ; height: 1
            color: Constants.darkTextColor
            y:30
        }
    }

    Text{
        text: "Date & Time"
        color: Constants.darkTextColor

        anchors {
            left: parent.left
            leftMargin: 199
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
        }
    }

    Text {
        id: orderId
        text: "Sample No"
        color: Constants.darkTextColor
        anchors {
            left: parent.left
            leftMargin: 323
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
        }
    }

    Text {
        id: expiderId
        text: "Patient No"
        color: Constants.darkTextColor
        anchors {
            left: parent.left
            leftMargin: 446
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
        }
    }

    Text {
        id: statusId
        text: "Item"
        color: Constants.darkTextColor
        anchors {
            left: parent.left
            leftMargin: 571
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: certId
        text: "Name"
        color: Constants.darkTextColor
        anchors {
            left: parent.left
            leftMargin: 695
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: resultId
        text: "Result"
        color: Constants.darkTextColor
        anchors {
            left: parent.left
            leftMargin: 817
            top: parent.top
            topMargin: 71
        }

        font {
            family: Constants.montserratNormal.name
            pixelSize: Constants.h5
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
            spacing: 50
            Text{
                id: orderLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: parent.left
//                anchors.leftMargin: 41
                text: dateAndTime
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: Constants.h5
                }
                color: Constants.text2Color
            }
            Text{
                id: expiderOnLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: orderLabelId.right
//                anchors.leftMargin: 164
                text: sampleNo
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: Constants.h5
                }
                color: Constants.text2Color
            }
            Text{
                id: statusLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: expiderOnLabelId.right
//                anchors.leftMargin: 50
                text: patientNo
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 13
                }
                color: Constants.text2Color
            }

            Text{
                id: certCreatedOnLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: statusRectId.right
//                anchors.leftMargin: 45
                text: mItem
                horizontalAlignment: Text.AlignLeft
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: Constants.h5
                }
                color: Constants.text2Color
            }
            Text{
                id: certExpiredOnLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: certCreatedOnLabelId.right
//                anchors.leftMargin: 83
                text: name
                horizontalAlignment: Text.AlignLeft
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: Constants.h5
                }
                color: Constants.text2Color
            }
            Text{
                id: certUrlLabelId
                anchors.verticalCenter: parent.verticalCenter
//                anchors.left: certExpiredOnLabelId.right
//                anchors.leftMargin: 80
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
    ListModel{
        id: searchModelId

        ListElement {
            dateAndTime: "A0B1C007" ;
            sampleNo: "2023-05-13" ;
            patientNo: "Valid" ;
            mItem: "2023-05-11" ;
            name: "2023-06-07" ;
            result: "http://www.faxquote.com" ;
        }
        ListElement {
            dateAndTime: "A0B1C008" ;
            sampleNo: "2023-05-14" ;
            patientNo: "Valid" ;
            mItem: "2023-05-12" ;
            name: "2023-06-06" ;
            result: "http://www.faxquote.com" ;
        }
    }

    SButton{
        id: infoId
        text: "Info"
        x: 203 ; y: 464
    }
    Image{
        source: "qrc:/Assets/arrow.png"
        x:418 ; y:476
        MouseArea{
            anchors.fill: parent
            onClicked: console.log("Up Arrow clicked")
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
            onClicked: console.log("Down Arrow clicked")
        }
    }
    SButton{
        text: "2"
        x:596 ; y:466
        width: 64 ; height: 44
    }
    SButton{
        text: "Go"
        x:696 ; y:466
        width: 64 ; height: 44
    }
    Row{
        spacing: 14
        width: 637 ; height: 51
        x: 204 ; y: 523
        SButton{ text: "Search" }
        SButton{ text: "Delete" }
        SButton{ text: "Print"  }
        SButton{ text: "Send"   }
        SButton{ text: "Export" }
    }

}
