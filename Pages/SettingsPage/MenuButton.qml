import QtQuick 2.0
import QtQuick.Controls 2.15

import "../../"

Button{
    id: root

    width: pressedd ? 155 : 115 ; height: 48
    anchors.horizontalCenter: menuBarId.horizontalCenter

    text: "Default"

    property bool pressedd: false

    background: Rectangle{
        anchors.fill: parent
        color: 'transparent'
        gradient: pressedd ? Constants.blueGradient : undefined
        border{
            width: 2
            color: root.pressedd ? Constants.primaryColor : "#7B7B7B"
        }
        radius: 11
    }
    contentItem: Text{
        anchors.centerIn: parent
        text: root.text
        color: root.pressedd ? Constants.textWhite : "#7B7B7B"//root.pressedd ? Constants.primaryColor : "#7B7B7B"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 16
        }

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    onClicked: pressedd = true
}
