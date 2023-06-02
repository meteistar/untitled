import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    MouseArea{
        anchors.fill: parent
        onClicked: {
            focus = true
            root.y = 0
        }
    }

    Text{
        x: 496 ; y: 57
        text: "Unit"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }

    Rectangle{
        x: 484 ; y:90
        width: 281 ; height: 106
        color: 'white'
        radius: 28

        MToggleButton{
           anchors.centerIn: parent
           firstText: 'C'
           secondText: 'F'

           onFirstClicked: console.log("first clicked")
           onSecondClicked: console.log("second clicked")
        }
    }
    ////Incubator
    Text{
        x: 289 ; y: 197
        text: "Incubator"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }

    Rectangle{
        x: 279 ; y: 232
        width: 338 ; height: 206
        color: 'white'
        radius: 28

        MToggleButton{
           x:85 ; y:44
           firstText: 'ON'
           secondText: 'OFF'

           onFirstClicked: console.log("first clicked")
           onSecondClicked: console.log("second clicked")
        }
        Text{
            text: 'Temperature :'
            x:56 ; y:139
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
            color: Constants.darkTextColor
        }
        TextField{
            x: 188 ; y:137
            width: 48
            onFocusChanged: {
                if(focus)
                    root.y = -200
            }
        }
        Text{
            text: 'C'
            x:244 ; y:139
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
            color: Constants.darkTextColor
        }
    }
    ////Test Zone
    Text{
        x: 671 ; y: 197
        text: "Test Zone"
        font{
            family: Constants.montserratNormal.name
            pixelSize: 22
        }
        color: "black"//Constants.primaryColor
    }

    Rectangle{
        x: 662 ; y: 232
        width: 338 ; height: 206
        color: 'white'
        radius: 28

        MToggleButton{
           x:85 ; y:44
           firstText: 'ON'
           secondText: 'OFF'

           onFirstClicked: console.log("first clicked")
           onSecondClicked: console.log("second clicked")
        }
        Text{
            text: 'Temperature :'
            x:56 ; y:139
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
            color: Constants.darkTextColor
        }
        TextField{
            x: 188 ; y:137
            width: 48
            onFocusChanged: {
                if(focus)
                    root.y = -200
            }
        }
        Text{
            text: 'C'
            x:244 ; y:139
            font{
                family: Constants.montserratNormal.name
                pixelSize: 17
            }
            color: Constants.darkTextColor
        }
    }

    PrimaryButton{
        text: 'SAVE'
        x: 444 ; y: 510
    }

    SecondaryButton{
        text: 'CANCEL'
        x: 630 ; y: 510
    }
}
