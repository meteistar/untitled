import QtQuick 2.15
import QtGraphicalEffects 1.15
import "SettingsPage" as MSettingsPage

import "../"

Rectangle {
    id: root

    property string buttonTitle: "default"

    gradient: Constants.bg

    MSettingsPage.Sidebar{id: sideBar}

//    MSettingsPage.MButton{
//        text: root.buttonTitle
//        anchors.left: sideBar.right
//    }

    PrimaryButton{
        enabled: false
        width: 274; height: 54
        text: root.buttonTitle
        anchors.left: sideBar.right
    }
//    MSettingsPage.MButton{
//        text: "HOME"
//        anchors.right: parent.right
//        onClicked: {
//            stackLayout.currentIndex = 1
//        }
//    }

    PrimaryButton{
        width: 274; height: 54
        text: "HOME"
        anchors.right: parent.right
        onClicked: {
            stackLayout.currentIndex = 1
        }
    }
}
