import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Grid{
        x: 283 ; y: 92
        columns: 2 ; rows: 2
        columnSpacing: 23
        rowSpacing: 40

        Item{
            width: 340 ; height: 226
            Rectangle{
                width: parent.width ; height: 226
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
            }
            Text{
                text: 'Device Paremeters'
                y: -40
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

        Item{
            width: 340 ; height: 226
            Rectangle{
                width: parent.width ; height: 226
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
            }
            Text{
                text: 'Controls'
                y: -40
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

        Item{
            width: 340 ; height: 226
            Rectangle{
                width: parent.width ; height: 226
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
            }
            Text{
                text: 'Version'
                y: -40
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

        Item{
            width: 340 ; height: 226
            Rectangle{
                width: parent.width ; height: 226
                radius: 21
                color: 'transparent'
                border{
                    width: 3
                    color: Constants.primaryColor
                }
            }
            Text{
                text: 'Test Mode'
                y: -40
                color: Constants.darkTextColor
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

    }
}
