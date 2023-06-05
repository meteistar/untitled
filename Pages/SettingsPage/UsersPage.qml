import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Rectangle{
        id: userListFrameId

        width: 720 ; height: 335+43
        color: Constants.cardBackgroundColor
        x:270 ; y:85

        Row{
            Rectangle{
                width: 82 ; height: 43
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: "Select"
                    color: 'white'//Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            Rectangle{
                width: 319 ; height: 43
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: "User Name"
                    color: 'white'//Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            Rectangle{
                width: 319 ; height: 43
                gradient: Constants.blueGradient
                Text{
                    anchors.centerIn: parent
                    text: "Password"
                    color: 'white'//Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

        }

        ListView{
            id: userListId

            y:43
            width: parent.width ; height: 335
            delegate: userDelegate
            model: userModel
        }

        Component{
            id: userDelegate
            Row{
                Rectangle{
                    width: 82 ; height: 43
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    CheckBox{
                        anchors.centerIn: parent
                    }
                }
                Rectangle{
                    width: 319 ; height: 43
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: userName
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
                Rectangle{
                    width: 319 ; height: 43
                    color: 'transparent'
                    border{
                        width: 1
                        color: "gray"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: password
                        color: Constants.darkTextColor
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 18
                        }
                    }
                }
            }
        }

        ListModel{
            id: userModel
            ListElement{
                select: 'false'
                userName: 'User'
                password: '123456'
            }
            ListElement{
                select: 'false'
                userName: 'admin'
                password: '123456'
            }
        }
    }
    Row{
        anchors.horizontalCenter: userListFrameId.horizontalCenter
        y:509
        spacing: 25
        SecondaryButton{
            text: "ADD"
            onClicked: {
                addUserPopup.open()
            }
        }
        SecondaryButton{
            text: "EDIT"
            onClicked: {
                userModel.set(0, {select: true, userName: "mete", password: "istar"})
            }
        }
        SecondaryButton{
            text: "DELETE"
            onClicked: {
                userModel.remove(1,1)
            }
        }
    }

    Popup {
        id: addUserPopup
        x: (1040 - width)/2
        y: (600 - height)/2
        width: 400
        height: 200
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        background: Rectangle{
            gradient: Constants.blueGradient
            anchors.fill: parent
            radius: 20
            Rectangle{
                color: 'white'
                width: parent.width - 4
                height: parent.height - 4
                radius: 20
                anchors.centerIn: parent
            }
        }
        contentItem: Column{
            anchors.centerIn: parent
            spacing: 10
            Row{
                spacing: 10
                Text{
                    text: 'User Name'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    width: 150
                    color: Constants.text1Color
                }
                TextField{
                    id: userNameTextFieldId
                    placeholderText: 'username'
                }
            }
            Row{
                spacing: 10
                Text{
                    text: 'Password'
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 15
                    }
                    width: 150
                    color: Constants.text1Color
                }
                TextField{
                    id: passwordTextFieldId
                    placeholderText: 'password'
                }
            }
            PrimaryButton{
                text: 'Add'
                anchors.right: parent.right
                anchors.rightMargin: 12
                onClicked: {
                    userModel.append({select: true,
                                     userName: userNameTextFieldId.text,
                                     password: passwordTextFieldId.text})
                    addUserPopup.close()
                }
            }
        }
    }
}
