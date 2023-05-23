import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Rectangle{
        width: 412 ; height: 328
        color: Constants.cardBackgroundColor
        x:323 ; y:123

        Row{
            Rectangle{
                width: 82 ; height: 43
                Text{
                    anchors.centerIn: parent
                    text: "Select"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            Rectangle{
                width: 163 ; height: 43
                Text{
                    anchors.centerIn: parent
                    text: "User Name"
                    color: Constants.darkTextColor
                    font{
                        family: Constants.montserratNormal.name
                        pixelSize: 13
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            Rectangle{
                width: 163 ; height: 43
                Text{
                    anchors.centerIn: parent
                    text: "Password"
                    color: Constants.darkTextColor
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
            width: parent.width ; height: 286
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
                    width: 163 ; height: 43
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
                    width: 164 ; height: 43
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
        x: 344; y:509
        spacing: 70
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
