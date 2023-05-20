import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Layouts 1.15

import "Pages/HomePage"
import "Pages/TestPage"

Window {
    id: window
    width: 1040
    height: 600
    visible: true
    title: qsTr("UPLAB")
    flags: Qt.FramelessWindowHint

    StackLayout{
        id: stackLayout
        anchors.fill: parent

        currentIndex: 0

        LoginPage{}
        HomePage{}
        TestPage{}
        SettingsPage{}
        SystemPage{}
        SearchPage{}

        Rectangle{
            color: 'red'
        }
    }

//    Rectangle{
//        id: bg
//        anchors.fill: parent
//        gradient: Gradient{
//            orientation: Gradient.Horizontal
//            GradientStop{position: 0.0 ;color: "#DFE6EE"}
//            GradientStop{position: 1.0 ;color: "#CAD8DB"}
//        }
//    }

//    MouseArea{
//        anchors.fill: parent
//        onClicked: {inputPanel.y = parent.height
//            titleId.focus = true
//        }
//    }

//    Button{
//        text: "scroll up!"

//        onClicked: {
//            scrollPosition += 0.1
//            console.log("pos " + scrollPosition)
//        }
//    }

//    Button{
//        text: "scroll down!"
//        y: 50
//        onClicked: {
//            scrollPosition -= 0.1
//            console.log("pos " + scrollPosition)
//        }
//    }

//    InputPanel {
//        id: inputPanel
//        z: 99
//        x: 0
//        y: window.height
//        width: window.width

//        states: State {
//            name: "visible"
//            when: inputPanel.active
//            PropertyChanges {
//                target: inputPanel
//                y: window.height - inputPanel.height
//            }
//        }
//        transitions: Transition {
//            from: ""
//            to: "visible"
//            reversible: true
//            ParallelAnimation {
//                NumberAnimation {
//                    properties: "y"
//                    duration: 250
//                    easing.type: Easing.InOutQuad
//                }
//            }
//        }
//    }

}
