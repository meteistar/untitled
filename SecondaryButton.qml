import QtQuick 2.0
import QtQuick.Controls 2.15

Button{
    id: control

    width: 112 ; height: 44
    text: "Default"
    background: Rectangle{
        anchors.fill: parent
        radius: 8
        gradient: Constants.blueGradient

        Rectangle{
            anchors.centerIn: parent
            width: parent.width-4 ; height: parent.height-4
            radius: 8
            gradient: Constants.bg
        }
    }
    contentItem: Text{
        text: control.text
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: Constants.darkTextColor
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
    }
}
