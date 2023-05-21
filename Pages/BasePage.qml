import QtQuick 2.15
import QtGraphicalEffects 1.15
import "SettingsPage/Sidebar.qml" as MSidebar
import "SettingsPage"

Rectangle {
    id: root

    property string buttonTitle: "default"

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }

    MSidebar{}

    MButton{
        text: root.buttonTitle
        x: 100
    }

    MButton{
        text: "HOME"
        x: 800
    }
}
