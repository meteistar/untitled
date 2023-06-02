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
        }
        SecondaryButton{
            text: "EDIT"
        }
        SecondaryButton{
            text: "DELETE"
        }
    }
}
