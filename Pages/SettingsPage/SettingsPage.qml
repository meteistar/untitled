import QtQuick 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: root

    property string buttonTitle: "default"

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }
    //TODO component yap
    Sidebar{}
    //TODO componenta cevir
    Rectangle{
        id: testButton

        x:213
        width: 221 ; height: 51
        border.color: "#A9AC00"
        border.width: 2
        Text{
            text: root.buttonTitle
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }
    //TODO componenta cevir
    Rectangle{
        id: homeButton

        x:803
        width: 221 ; height: 51
        border.color: "#A9AC00"
        border.width: 2
        Text{
            text: "HOME"
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }

    Rectangle{
        id: testInfoId
        width: 373 ; height: 150
        radius: 10
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop{position: 0.0 ;color: "#FEFEFE"}
            GradientStop{position: 1.0 ;color: "#ECEDF1"}
        }
        x:260 ; y:100
        MButton{
            text: "TEST INFO"
        }

//        border{
//            color: "#372DFE"
//            width: 3
//        }
//        Rectangle{
//            width: 102 ; height: 31
//            gradient: Gradient{
//                orientation: Gradient.Horizontal
//                GradientStop{position: 0.0 ;color: "#2A8DEA"}
//                GradientStop{position: 1.0 ;color: "#372DFE"}
//            }
//            Text{
//                text: "Test Info"
//                anchors.centerIn: parent
//                color: "#ECF1FC"
//            }
//        }
    }

    DropShadow {
        anchors.fill: testInfoId
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#BCC4C9"//"#80000000"
        source: testInfoId
    }

    Rectangle{
        id: testModeId
        width: 373 ; height: 150
        radius: 10
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop{position: 0.0 ;color: "#FEFEFE"}
            GradientStop{position: 1.0 ;color: "#ECEDF1"}
        }
        x:760 ; y:100
//        border{
//            color: "#372DFE"
//            width: 3
//        }
        Text{
            text: "Test Info"
//            anchors.centerIn: parent
            x: 5 ; y:5
            color: "#3D3D3D"
            font.bold: true
            font.pointSize: 14
        }
//        Rectangle{
//            width: 102 ; height: 31
//            gradient: Gradient{
//                orientation: Gradient.Horizontal
//                GradientStop{position: 0.0 ;color: "#2A8DEA"}
//                GradientStop{position: 1.0 ;color: "#372DFE"}
//            }
//            Text{
//                text: "Test Info"
//                anchors.centerIn: parent
//                color: "#ECF1FC"
//            }
//        }
        Rectangle{
            anchors.centerIn: parent
            width: 250 ; height: 50
            Text{
                text: "Standart"
                anchors.verticalCenter: parent.verticalCenter
                x: 10
            }
            Text{
                text: "Quick"
                anchors.verticalCenter: parent.verticalCenter
                x: 60
            }
        }
    }

    DropShadow {
        anchors.fill: testInfoId
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#BCC4C9"//"#80000000"
        source: testInfoId
    }
}
