import QtQuick 2.0
import QtQuick.Controls 2.15
import "../../"

Button {
    id: root
    width: 116 ; height: 48

    property color colorUp: 'transparent'
    property color colorDown: Constants.primaryColor

    background: Rectangle{
        width: root.width ; height: root.height
        color: root.down ? colorDown : 'transparent'
        border{
            color: colorDown
            width: 2
        }
        radius: 11
    }

    contentItem: Text{
        anchors.centerIn: root
        text: root.text
        font.family: Constants.montserratNormal.name
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
        color: root.down ? "#ECF1FC" : Constants.primaryColor
    }
}
