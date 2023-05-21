import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15

Rectangle{
    id: bg

    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }

    Text {
        id: titleId
        text: qsTr("UPLAB")
        font{
            pointSize: 36
            bold: true
        }
        color: 'red'
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    Rectangle{
        id: loginFrameId

        width: 406 ; height: 232
        border.color: "white"//"#372DFE"
        border.width: 1
        anchors.centerIn: parent
        radius: 45

        TextField{
            id: userId
            width: 300 ; height: 48
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
            placeholderText: "User"
            onActiveFocusChanged: {
                if(activeFocus){
                    scrollUp()
                }
            }
            onAccepted: passwordId.focus = true
            font.pointSize: 18
            background: Rectangle{
                width: 300 ; height: 48
                border.color: "black"
                radius: 5
            }
        }

        TextField{
            id: passwordId
            width: 300 ; height: 48
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: userId.bottom
            anchors.topMargin: 17
            placeholderText: "Password"
            onActiveFocusChanged: {
                if(activeFocus){
                    scrollUp()
                }
            }
            onAccepted: secondId.focus = true
            font.pointSize: 18
            background: Rectangle{
                width: 300 ; height: 48
                border.color: "black"
                radius: 5
            }
            x: 50
            y: 50
        }

        Button{
            id: loginButtonId
            width: 300 ; height: 48
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: passwordId.bottom
            anchors.topMargin: 17
            text: "LOGIN"
            contentItem: Text{
                color: 'white'
                text: loginButtonId.text
//                anchors.centerIn: loginButtonId
                width: loginButtonId.width
                height: loginButtonId.height
                font.pointSize: 18
            }
            x: 50
            y:100
            background: Rectangle{
                width: loginButtonId.width ; height: loginButtonId.height
                radius: 24
                gradient: Gradient{
                    orientation: Gradient.Horizontal
                    GradientStop{position: 0.0 ;color: "#2A8DEA"}
                    GradientStop{position: 1.0 ;color: "#372DFE"}
                }
            }

            onClicked: {
                stackLayout.currentIndex = 1
            }
        }

    }

    DropShadow {
        anchors.fill: loginFrameId
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#aa000000"//"#80000000"
        source: loginFrameId
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    function scrollUp(){
        titleId.anchors.topMargin = 0
        loginFrameId.anchors.centerIn = undefined
        loginFrameId.anchors.horizontalCenter = window.horizontalCenter
        loginFrameId.anchors.top = titleId.bottom
        loginFrameId.anchors.topMargin = 5
    }
  }
