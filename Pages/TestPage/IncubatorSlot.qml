import QtQuick 2.0

import "../../"

Rectangle {
    id: root

    property int leftSquareWidth: 28
    property string leftSquareColor: '#F8C70F'
    property int number: 1

    property int rightSquareWidth: 61

    width: 190
    height: 73
    radius: 8
    color: 'transparent'
    border{
        color: root.leftSquareColor
        width: 3
    }

    Rectangle{
        width: root.leftSquareWidth
        height: width
        color: root.leftSquareColor
        radius: 5
        Text{
            anchors.centerIn: parent
            color: 'white'
            font{
                family: Constants.montserratNormal.name
                pointSize: 11
            }

            text: root.number
        }
    }

    Rectangle{
        width: root.rightSquareWidth
        height: width
        radius: 8
        color: root.leftSquareColor
        anchors{
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 6
        }
        Text{
            id: timeRemain
            property int minute: 14
            property int second: 59
            anchors.centerIn: parent
            text: minute + ":" + second
            color: 'white'
            font{
                family: Constants.montserratNormal.name
                pointSize: 11
            }
        }
        Timer{
            interval: 1000
            repeat: true
            running: true

            onTriggered: {
                timeRemain.second --
                if(timeRemain.second == 0){
                    timeRemain.second = 59
                    timeRemain.minute--
                }
            }
        }
    }


}
