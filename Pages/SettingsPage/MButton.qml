import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: root

    contentItem: Text{
        text: root.text
        color: "#ECF1FC"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle{
        width: 102 ; height: 31
        radius: 8
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop{position: 0.0 ;color: "#2A8DEA"}
            GradientStop{position: 1.0 ;color: "#372DFE"}
        }
    }
}
