import QtQuick 2.0
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects

Button{
    id: control

    property string title: 'default'

    hoverEnabled: false
    width: 300 ; height: 200

    background: Rectangle {
        id: bg
        radius: 55
        anchors.fill: parent
        color: 'white'

        layer.enabled: true
        layer.effect: DropShadow {
            anchors.fill: bg
            horizontalOffset: control.down ? -6 : 6
            verticalOffset: control.down ? -6 : 6
            radius: 8.0
//            samples: 17
            color: "#BCC4C9"
            source: bg
        }
    }

    contentItem: Rectangle{
        color: 'transparent'
        anchors.fill: parent
        Image{
            source: 'qrc:/Assets/test.png'
            width: control.width < 150 ? 41 : 100
            height: control.height < 150 ? 41 : 100
            fillMode: Image.PreserveAspectFit
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: control.down ? 25 : 18
            }
        }
        Text{
            text: control.title
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: control.down ? 133 : 126
            }
            font{
                family: Constants.montserratNormal.name
                pointSize: control.down ? 20 : 21
                bold: true
            }
            color: Constants.outlineColor
        }
    }
}

//Rectangle {
//    id: root

//    property string title: "default"
//    signal clicked

//    radius: 55
//    width: 197 ; height: 197
//    color: 'transparent'
//    border{
//        color: "#777C7F"
//        width: 2
//    }
//    Text{
//        text: root.title
//        anchors.centerIn: parent
//        font.pointSize: 21
//        color: "#818584"
//    }

//    MouseArea{
//        anchors.fill: parent
//        onClicked: root.clicked()
//    }
//}
