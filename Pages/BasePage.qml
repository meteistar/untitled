import QtQuick 2.15
import QtGraphicalEffects 1.15
import "SettingsPage" as MSettingsPage


Rectangle {
    id: root

    property string buttonTitle: "default"

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }

    MSettingsPage.Sidebar{id: sideBar}

    MSettingsPage.MButton{
        text: root.buttonTitle
        anchors.left: sideBar.right
    }

    MSettingsPage.MButton{
        text: "HOME"
        anchors.right: parent.right
        onClicked: {
            stackLayout.currentIndex = 1
        }
    }
}
