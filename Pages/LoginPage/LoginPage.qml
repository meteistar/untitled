import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

import "../../"

Rectangle {
    id: root

    gradient: Constants.bg

    MouseArea{
        anchors.fill: parent
        onClicked: {
            focus = true
            logo.anchors.topMargin = 60
            loginFrame.anchors.centerIn = parent
        }
    }

    Text{
        id: logo

        text: 'UPLAB'
//        color: 'red'
        visible: false
        font{
//            family: Constants.montserratNormal.name
            pointSize: 36
            bold: true
        }

        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 60
        }
    }

    LinearGradient{
        anchors.fill: logo
        source: logo
        gradient: Constants.blueGradient
    }

    Rectangle{
        id: loginFrame
        width: 406 ; height: 232
        radius: 45
        color: 'white'
        anchors.centerIn: parent

        Column{
            anchors.centerIn: parent
            spacing: 17
            TextField{
                id: userNameId
                width: 302 ; height: 48
                placeholderText: "Username"
                placeholderTextColor: Constants.darkTextColor
                onFocusChanged: {
                    if(focus){
                        logo.anchors.topMargin = 0
                        loginFrame.anchors.centerIn = undefined
                        loginFrame.anchors.horizontalCenter = root.horizontalCenter
                        loginFrame.y = 50
                    }
                }

                background: Rectangle{
                    width: 302 ; height: 48
                    border{
                        width: 2
                        color: Constants.outlineColor
                    }
                    radius: 8
                }
            }
            TextField{
                id: passwordId
                width: 302 ; height: 48
                placeholderText: "Password"
                placeholderTextColor: Constants.darkTextColor
                echoMode: TextField.Password
                onFocusChanged: {
                    if(focus){
                        logo.anchors.topMargin = 0
                        loginFrame.anchors.centerIn = undefined
                        loginFrame.anchors.horizontalCenter = root.horizontalCenter
                        loginFrame.y = 50
                    }
                }

                background: Rectangle{
                    width: 302 ; height: 48
                    border{
                        width: 2
                        color: Constants.outlineColor
                    }
                    radius: 8
                }
            }

            PrimaryButton{
                width: 302 ; height: 48
                text: 'Login'
                onClicked: {
                    if(userNameId.text === "" || passwordId.text === "")
                        return
                    if(userNameId.text === "admin" && passwordId.text === "123")
                        stackLayout.currentIndex = 1
                }
            }
        }
    }
    DropShadow {
        anchors.fill: loginFrame
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#BCC4C9"//"#80000000"
        source: loginFrame
    }

    SecondaryButton{
        id: languageButton

        hoverEnabled: false
        width: 169 ; height: 45

        contentItem: Row{
            anchors.fill: parent
            leftPadding: 16
            spacing: 10
            Image{
                source: 'qrc:/Assets/usa.png'
                width: 26 ; height: width
                anchors.verticalCenter: parent.verticalCenter
            }
            Text{
                text: 'ENGLISH'
                width: 106
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 16
                }
                color: languageButton.down ? 'white' : Constants.primaryColor
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        anchors{
            right: parent.right
            rightMargin: 40
            bottom: parent.bottom
            bottomMargin: 23
        }
    }
}
