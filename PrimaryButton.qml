import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: control
    width: 112 ; height: 44
//    x:430 ; y:510

    text: "SAVE"
    background: Rectangle{
        anchors.fill: parent
        radius: 8
        gradient: Constants.blueGradient
    }
    contentItem: Text{
        id: mete
        text: control.text
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "white"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }

    }
}
