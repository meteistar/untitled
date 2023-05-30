import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15

import "../../"

Rectangle {
    id: root

    gradient: Constants.bg

    SideBar{}

    Text {
        id: titleId
        text: qsTr("UPLAB")
        font{
            pointSize: 36
            bold: true
        }
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 137/2
        anchors.top: parent.top
        anchors.topMargin: 20
    }

    LinearGradient{
        anchors.fill: titleId
        source: titleId
        gradient: Gradient{
            GradientStop{position: 0.0 ;color: "#2A8DEA"}
            GradientStop{position: 1.0 ;color: "#372DFE"}
        }
    }


    Grid{
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            horizontalCenterOffset: 137/2
        }

        columns: 2
        columnSpacing: 20
        rows: 2
        rowSpacing: 20
        BaseCard{
            id: testButtonId
            title: 'TEST'
            onClicked: stackLayout.currentIndex = 2
        }
        BaseCard{
            id: settingsButtonId
            title: 'SETTINGS'
            onClicked: stackLayout.currentIndex = 3
        }
        BaseCard{
            id: systemButtonId
            title: 'SYSTEM'
            onClicked: stackLayout.currentIndex = 4
        }
        BaseCard{
            id: searchButtonId
            title: 'SEARCH'
            onClicked: stackLayout.currentIndex = 5
        }
    }

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
