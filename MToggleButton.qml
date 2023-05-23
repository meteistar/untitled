import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: root

    property string firstText: "1"
    property string secondText: "2"

    signal firstClicked
    signal secondClicked

    width: 170 ; height: 55

    gradient: Constants.blueGradient

    Rectangle{
        anchors.centerIn: parent
        width: parent.width - 4
        height: parent.height - 4
        color: 'white'
    }
    Rectangle{
        id: handleId
        width: parent.width/2
        height: parent.height
        gradient: Constants.blueGradient
    }
    Rectangle{
        color: 'transparent'
        width: parent.width/2
        height: parent.height
        Text{
            id: firstTextId
            anchors.centerIn: parent
            text: firstText
            font{
                family: Constants.montserratNormal.name
                pixelSize: 19
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                handleId.x = 0
                firstTextId.color = "white"
                secondTextId.color = Constants.darkTextColor
                firstClicked()
            }
        }
    }
    Rectangle{
        color: 'transparent'
        width: parent.width/2
        height: parent.height
        x: parent.width/2
        Text{
            id: secondTextId
            anchors.centerIn: parent
            text: secondText
            font{
                family: Constants.montserratNormal.name
                pixelSize: 19
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                handleId.x = root.width/2
                firstTextId.color = Constants.darkTextColor
                secondTextId.color = "white"
                secondClicked()
            }
        }
    }


}

