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

    StackLayout{
        id: systemStackLayout
        anchors.fill: parent

        SystemCheck{}
        Reagent{}
        Service{}
        Adjustment{}
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
        id: wifiButtonId
        text: "System Check"
        y: 69
        onClicked: {
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false

            systemStackLayout.currentIndex = 0
        }
    }
    MenuButton{
        id: lisButtonId
        text: "Reagent"
        y: 145
        onClicked: {
            wifiButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false

            systemStackLayout.currentIndex = 1
        }
    }
    MenuButton{
        id: tempButtonId
        text: "Service"
        y: 220
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false

            systemStackLayout.currentIndex = 2
        }
    }
    MenuButton{
        id: reagentButtonId
        text: "Adjustment"
        y: 298
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            dateTimeButtonId.pressedd = false

            systemStackLayout.currentIndex = 3
        }
    }
    MenuButton{
        id: dateTimeButtonId
        text: "QC"
        y: 374
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false

            systemStackLayout.currentIndex = 4
        }
    }

}
