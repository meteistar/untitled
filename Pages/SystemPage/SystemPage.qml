import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../"
import "../../"
import "../SettingsPage/"

BasePage {
    id: systemPageId

    buttonTitle: "SYSTEM"

    Component.onCompleted: {
        systemCheckId.pressedd = true
    }

    StackLayout{
        id: systemStackLayout
        anchors.fill: parent

        SystemCheck{}
        Reagent{}
        Service{}
        Adjustment{}
        QC{}
    }

    Rectangle{
        id: menuBarId

        x: 130 ; y:53
        width: 115; height: 547
        color: 'transparent'
        border{
            color: "#7B7B7B"
            width: 2
        }
    }

    MenuButton{
        id: systemCheckId
        text: "System Check"
        height: 87
        y: 85
        onClicked: {
            reagentId.pressedd = false
            serviceId.pressedd = false
            adjustmentId.pressedd = false
            qcId.pressedd = false

            systemStackLayout.currentIndex = 0
        }
    }
    MenuButton{
        id: reagentId
        text: "Reagent"
        height: 87
        y: 188
        onClicked: {
            systemCheckId.pressedd = false
            serviceId.pressedd = false
            adjustmentId.pressedd = false
            qcId.pressedd = false

            systemStackLayout.currentIndex = 1
        }
    }
    MenuButton{
        id: serviceId
        text: "Service"
        height: 87
        y: 292
        onClicked: {
            systemCheckId.pressedd = false
            reagentId.pressedd = false
            adjustmentId.pressedd = false
            qcId.pressedd = false

            systemStackLayout.currentIndex = 2
        }
    }
    MenuButton{
        id: adjustmentId
        text: "Adjustment"
        height: 87
        y: 395
        onClicked: {
            systemCheckId.pressedd = false
            reagentId.pressedd = false
            serviceId.pressedd = false
            qcId.pressedd = false

            systemStackLayout.currentIndex = 3
        }
    }
    MenuButton{
        id: qcId
        text: "QC"
        height: 87
        y: 498
        onClicked: {
            systemCheckId.pressedd = false
            reagentId.pressedd = false
            serviceId.pressedd = false
            adjustmentId.pressedd = false

            systemStackLayout.currentIndex = 4
        }
    }

}
