import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15

import "../../"

Rectangle {
    id: root

    gradient: Constants.bg
//    gradient: Constants.blueGradient

//    Rectangle{
//        anchors.centerIn: parent
//        width: parent.width-8
//        height: parent.height-8
//        gradient: Constants.bg
//    }
    SideBar{}

    Text {
        id: titleId
        text: qsTr("UPLAB")
        font{
            pointSize: 36
            bold: true
        }
//        color: 'red'
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    LinearGradient{
        anchors.fill: titleId
        source: titleId
        gradient: Gradient{
            GradientStop{position: 0.0 ;color: "#2A8DEA"}
            GradientStop{position: 1.0 ;color: "#372DFE"}
        }
    }


    Rectangle {
        id: test
        radius: 55
        width: 197 ; height: 197
        color: 'white'
//        border{
//            color: Constants.outlineColor
//            width: 2
//        }
        anchors{
            top: parent.top
            topMargin: 206
            left: parent.left
            leftMargin: 327
        }
        layer.enabled: true
        layer.effect: DropShadow {
            anchors.fill: test
            horizontalOffset: 6
            verticalOffset: 6
            radius: 8.0
            samples: 17
            color: "#BCC4C9"//"#80000000"
            source: test
        }
        Image{
            source: 'qrc:/Assets/test.png'
            width: 100 ; height: 100
            fillMode: Image.PreserveAspectFit
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 18
            }
        }

        Text{
            text: "TEST"
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 126
            }
            font{
                family: Constants.montserratNormal.name
                pointSize: 21
                bold: true
            }
            color: Constants.outlineColor
        }

        MouseArea{
            anchors.fill: parent
            onClicked: stackLayout.currentIndex = 2
        }
    }

//    BaseCard{
//        title: "TEST"
//        onClicked: stackLayout.currentIndex = 2
//        anchors{
//            top: parent.top
//            topMargin: 206
//            left: parent.left
//            leftMargin: 327
//        }

//    }

    ////Settings

    Rectangle {
        id: settings
        radius: 19
        width: 210
        height: 64
        color: 'white'
        anchors{
            top: parent.top
            topMargin: 206
            left: parent.left
            leftMargin: 568
        }
        layer.enabled: true
        layer.effect: DropShadow {
            anchors.fill: settings
            horizontalOffset: 6
            verticalOffset: 6
            radius: 8.0
            samples: 17
            color: "#BCC4C9"//"#80000000"
            source: settings
        }
        Image{
            source: 'qrc:/Assets/test.png'
            width: 41 ; height: 41
            fillMode: Image.PreserveAspectFit
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 21
            }
        }

        Text{
            text: "SETTINGS"
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 65
            }
            font{
                family: Constants.montserratNormal.name
                pointSize: 21
                bold: true
            }
            color: Constants.outlineColor
            horizontalAlignment: Text.AlignLeft
        }

        MouseArea{
            anchors.fill: parent
            onClicked: stackLayout.currentIndex = 3
        }
    }
//    Rectangle{
//        id: settings

//        width: 198
//        height: 64
//        radius: 12
//        color: "#00AFFA"
//        anchors{
//            top: parent.top
//            topMargin: 206
//            left: parent.left
//            leftMargin: 568
//        }

//        Text{
//            text: "Settings"
//            anchors.centerIn: parent
//            color: "#00AFFA"
//            font.pointSize: 31
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                //goto settings page
//                stackLayout.currentIndex = 3
//            }
//        }
//    }
    ////System
    Rectangle {
        id: system
        radius: 19
        width: 210
        height: 64
        color: 'white'
        anchors{
            top: parent.top
            topMargin: 279
            left: parent.left
            leftMargin: 568
        }
        layer.enabled: true
        layer.effect: DropShadow {
            anchors.fill: system
            horizontalOffset: 6
            verticalOffset: 6
            radius: 8.0
            samples: 17
            color: "#BCC4C9"//"#80000000"
            source: system
        }
        Image{
            source: 'qrc:/Assets/test.png'
            width: 41 ; height: 41
            fillMode: Image.PreserveAspectFit
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 21
            }
        }

        Text{
            text: "SYSTEM"
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 65
            }
            font{
                family: Constants.montserratNormal.name
                pointSize: 21
                bold: true
            }
            color: Constants.outlineColor
            horizontalAlignment: Text.AlignLeft
        }

        MouseArea{
            anchors.fill: parent
            onClicked: stackLayout.currentIndex = 4
        }
    }

//    Rectangle{
//        id: system

//        width: 198
//        height: 64
//        radius: 12
//        color: "#DCFF06"
//        anchors{
//            top: parent.top
//            topMargin: 279
//            left: parent.left
//            leftMargin: 568
//        }

//        Text{
//            text: "System"
//            anchors.centerIn: parent
//            color: "#00AFFA"
//            font.pointSize: 31
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                //goto settings page
//                stackLayout.currentIndex = 4
//            }
//        }
//    }

    ////Search
    Rectangle {
        id: search
        radius: 19
        width: 210
        height: 64
        color: 'white'
        anchors{
            top: parent.top
            topMargin: 352
            left: parent.left
            leftMargin: 568
        }
        layer.enabled: true
        layer.effect: DropShadow {
            anchors.fill: search
            horizontalOffset: 6
            verticalOffset: 6
            radius: 8.0
            samples: 17
            color: "#BCC4C9"//"#80000000"
            source: search
        }
        Image{
            source: 'qrc:/Assets/test.png'
            width: 41 ; height: 41
            fillMode: Image.PreserveAspectFit
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 21
            }
        }

        Text{
            text: "SEARCH"
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 65
            }
            font{
                family: Constants.montserratNormal.name
                pointSize: 21
                bold: true
            }
            color: Constants.outlineColor
            horizontalAlignment: Text.AlignLeft
        }

        MouseArea{
            anchors.fill: parent
            onClicked: stackLayout.currentIndex = 4
        }
    }


//    Rectangle{
//        id: search

//        width: 198
//        height: 64
//        radius: 12
//        color: "#DCFF06"
//        anchors{
//            top: parent.top
//            topMargin: 352
//            left: parent.left
//            leftMargin: 568
//        }

//        Text{
//            text: "Search"
//            anchors.centerIn: parent
//            color: "#FF004D"
//            font.pointSize: 31
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                //goto settings page
//                stackLayout.currentIndex = 5
//            }
//        }
//    }
    PrimaryButton{
        id: logoutButton

        anchors{
            bottom: parent.bottom
            bottomMargin: 23
            right: parent.right
            rightMargin: 39
        }

        text: "LOGOUT"
        width: 170 ; height: 45

        onClicked: {
            stackLayout.currentIndex = 0
        }
    }

}
