import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15

Rectangle {
    id: root

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }

    SideBar{}

    Text {
        id: titleId
        text: qsTr("UPLAB")
        font{
            pointSize: 36
            bold: true
        }
        color: 'red'
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    Rectangle{
        id: test

        width: 198
        height: width
        radius: 12
        color: "#DCFF06"
        anchors{
            top: parent.top
            topMargin: 206
            left: parent.left
            leftMargin: 327
        }

        Text{
            text: "TEST"
            anchors.centerIn: parent
            color: "#7B7B7B"
            font.pointSize: 31
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //goto test page
                stackLayout.currentIndex = 2
            }
        }
    }

    Rectangle{
        id: settings

        width: 198
        height: 64
        radius: 12
        color: "#00AFFA"
        anchors{
            top: parent.top
            topMargin: 206
            left: parent.left
            leftMargin: 568
        }

        Text{
            text: "Settings"
            anchors.centerIn: parent
            color: "#00AFFA"
            font.pointSize: 31
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //goto settings page
                stackLayout.currentIndex = 3
            }
        }
    }
    Rectangle{
        id: system

        width: 198
        height: 64
        radius: 12
        color: "#DCFF06"
        anchors{
            top: parent.top
            topMargin: 279
            left: parent.left
            leftMargin: 568
        }

        Text{
            text: "System"
            anchors.centerIn: parent
            color: "#00AFFA"
            font.pointSize: 31
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //goto settings page
                stackLayout.currentIndex = 4
            }
        }
    }
    Rectangle{
        id: search

        width: 198
        height: 64
        radius: 12
        color: "#DCFF06"
        anchors{
            top: parent.top
            topMargin: 352
            left: parent.left
            leftMargin: 568
        }

        Text{
            text: "Search"
            anchors.centerIn: parent
            color: "#FF004D"
            font.pointSize: 31
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //goto settings page
                stackLayout.currentIndex = 5
            }
        }
    }
    Button{
        id: logout

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
