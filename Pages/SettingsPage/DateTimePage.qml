import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    property int year: 2023
    property int month: 6
    property int day: 30

    property int hour: 6
    property int minute: 40

    Row{
        x:281 ; y:155
        spacing: 13
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Year"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Month"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Day"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
    }

    Grid{
        x:281 ; y:192
        width: 380 ; height: 185
        columns: 3 ; rows: 3
        columnSpacing: 13
        rowSpacing: 17
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: year += 1
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                month += 1
                if(month == 13)
                    month = 1
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                day += 1
                if(day == 32)
                    day = 1
            }
        }
        Text{
            id: yearLabel
            width: 117 ; height: 50
            text: root.year
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            id: monthLabel
            width: 117 ; height: 50
            text: root.month
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            id: dayLabel
            width: 117 ; height: 50
            text: root.day
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: year -= 1
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(month == 1)
                    return
                month -= 1

            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(day == 1)
                    return
                day -= 1
            }
        }

    }

    Row{
        x:742 ; y:155
        spacing: 13
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Hour"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Minute"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

    }

    Grid{
        x:742 ; y:192
        width: 246 ; height: 185
        columns: 2 ; rows: 3
        columnSpacing: 13
        rowSpacing: 17
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(hour === 23)
                    return
                hour += 1
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(minute === 59)
                    return
                minute += 1
            }
        }

        Text{
            width: 117 ; height: 50
            text: hour
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            width: 117 ; height: 50
            text: minute
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(hour === 1)
                    return
                hour -= 1
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            onClicked: {
                if(minute === 0)
                    return
                minute -= 1
            }
        }


    }

    PrimaryButton{
        text: 'SAVE'
        x: 453 ; y: 500
    }

    SecondaryButton{
        text: 'CANCEL'
        x:640 ; y:500
    }
}
