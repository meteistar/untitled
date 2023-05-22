import QtQuick 2.0

Rectangle {
    id: root

    property string title: "default"
    signal clicked

    radius: 55
    width: 197 ; height: 197
    color: 'transparent'
    border{
        color: "#777C7F"
        width: 2
    }
    Text{
        text: root.title
        anchors.centerIn: parent
        font.pointSize: 21
        color: "#818584"
    }

    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
