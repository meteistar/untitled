import QtQuick 2.0

Rectangle {
    id: root

    width: 137 ; height: parent.height

    color: 'transparent'
    border{
        width: 4
        color: "#A9AC00"

    }

    Rectangle{
        id: upperRect

        width: parent.width ; height: 225
        color: 'transparent'
        border{
            width: 4
            color: "#A9AC00"

        }

        Image{
            id: profileIcon

            source: ""
            anchors{
                left: parent.left
                leftMargin: 17
                top: parent.top
                topMargin: 23
            }
        }
        Text{
            text: "Guest"
            font.pointSize: 13
            color: 'black'
        }
    }
}
