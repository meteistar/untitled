import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Text{
        text: 'Detailed Info'
        anchors.centerIn: parent
    }

    Rectangle{
        x:274 ; y: 107
        width: 748 ; height: 467
        radius: 92
        border.color: Constants.outlineColor
        border.width: 4

        Text{
            text: 'Test Info'
            y: -30
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
        }

        Column{
            x:51 ; y: 39
            spacing: 18
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'NAME'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Patient No'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'AGE'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Sample Type'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'GENDER'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Admission No'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Bed Number'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Submitting Date'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 14
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Operator'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Submitting Open'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 14
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 43
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Operation Time'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 15
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
                Row{
                    Text{
                        width: 121 ; height: 24
                        text: 'Reviewer'
                        verticalAlignment: Text.AlignVCenter
                        color: Constants.text1Color
                        font{
                            family: Constants.montserratNormal.name
                            pixelSize: 16
                        }
                    }
                    Rectangle{
                        width: 185 ; height: 24
                        color: 'transparent'
                        border.color: Constants.text1Color
                        TextInput{
                            anchors.fill: parent
                            text: ""
                            color: Constants.text1Color
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                            font{
                                family: Constants.montserratNormal.name
                                pixelSize: 16
                            }
                        }
                    }
                }
            }




        }

        Row{
            x: 264 ; y:388
            spacing: 30
            PrimaryButton{
                text: 'SAVE'
                onClicked: {
                    testStackLayout.currentIndex = 0
                }
            }
            SecondaryButton{
                text: 'CANCEL'
                onClicked: {
                    testStackLayout.currentIndex = 0
                }
            }
        }
    }
}
