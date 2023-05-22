import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

import "../"
import "../../"

BasePage{
    id: root

    buttonTitle: "Settings"

    Rectangle{
        x: 130 ; y:53
        width: 115; height: 547
        color: 'transparent'
        border{
            color: "#7B7B7B"
            width: 2
        }
    }
    Button{
        id: wifi
        width: 115 ; height: 48
        text: "WIFI"

        property bool pressed: false

        background: Rectangle{
            anchors.fill: parent
            color: 'transparent'
            border{
                width: 2
                color: wifi.pressed ? Constants.primaryColor : "#7B7B7B"
            }
        }
        contentItem: Text{
            anchors.centerIn: parent
            text: wifi.text
            color: wifi.pressed ? Constants.primaryColor : "#7B7B7B"
        }

    }
}
