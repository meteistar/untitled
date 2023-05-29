import QtQuick 2.0
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects
//import QtGraphicalEffects 1.15

Button{
    id: control

    property int fontSize: 22

    width: 112 ; height: 44
    hoverEnabled: false
    text: "SAVE"

    background: Rectangle{
        anchors.fill: parent
        radius: 8
        gradient: Constants.blueGradient

        Rectangle{
            anchors.centerIn: parent
            width: parent.width - 4
            height: parent.height - 4
            radius: 8
            gradient: Constants.bg
            visible: control.down
        }
    }
    contentItem: Text{
        id: mete
        text: control.text
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: control.down ? Constants.primaryColor : "white"
        font{
            family: Constants.montserratNormal.name
            pixelSize: fontSize
        }

    }
}
