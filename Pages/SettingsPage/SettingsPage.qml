import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../"
import "../../"

BasePage{
    id: root

    buttonTitle: "Settings"

    StackLayout{
        id: settingsStackLayout
        anchors.fill: parent

        WifiPage{}
        LisPage{}
        TemperaturePage{}
        ReagentPage{}
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
        text: "WIFI"
        y: 69
        onClicked: {
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            languageButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 0
        }
    }
    MenuButton{
        id: lisButtonId
        text: "LIS"
        y: 145
        onClicked: {
            wifiButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            languageButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 1
        }
    }
    MenuButton{
        id: tempButtonId
        text: "Temperature"
        y: 220
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            languageButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 2
        }
    }
    MenuButton{
        id: reagentButtonId
        text: "Reagent"
        y: 298
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            languageButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 3
        }
    }
    MenuButton{
        id: dateTimeButtonId
        text: "Date&Time"
        y: 374
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            languageButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 4
        }
    }
    MenuButton{
        id: languageButtonId
        text: "Language"
        y: 450
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            usersButtonId.pressedd = false

            settingsStackLayout.currentIndex = 5
        }
    }
    MenuButton{
        id: usersButtonId
        text: "Users"
        y: 526
        onClicked: {
            wifiButtonId.pressedd = false
            lisButtonId.pressedd = false
            tempButtonId.pressedd = false
            reagentButtonId.pressedd = false
            dateTimeButtonId.pressedd = false
            languageButtonId.pressedd = false

            settingsStackLayout.currentIndex = 6
        }
    }


}
