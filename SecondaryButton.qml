import QtQuick 2.0
import QtQuick.Controls 2.15

Button{
    id: control

    hoverEnabled: false
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
            gradient: control.down ? Constants.blueGradient : Constants.bg
        }
    }
    contentItem: Text{
        text: control.text
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: control.down ? 'white' : Constants.darkTextColor
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
    }
}
