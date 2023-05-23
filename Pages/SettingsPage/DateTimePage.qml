import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Row{
        x:281 ; y:155
        spacing: 13
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Year"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Month"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Day"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
    }

    Grid{
        x:281 ; y:192
        width: 380 ; height: 185
        columns: 3 ; rows: 3
        columnSpacing: 13
        rowSpacing: 17
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        Text{
            width: 117 ; height: 50
            text: '2023'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            width: 117 ; height: 50
            text: '4'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            width: 117 ; height: 50
            text: '7'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }

    }

    Row{
        x:742 ; y:155
        spacing: 13
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Hour"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }
        Rectangle{
            width: 117 ; height: 28
            color: 'transparent'
            Text{
                anchors.centerIn: parent
                text: "Minute"
                font{
                    family: Constants.montserratNormal.name
                    pixelSize: 22
                }
            }
        }

    }

    Grid{
        x:742 ; y:192
        width: 246 ; height: 185
        columns: 2 ; rows: 3
        columnSpacing: 13
        rowSpacing: 17
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '+'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }

        Text{
            width: 117 ; height: 50
            text: '15'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text{
            width: 117 ; height: 50
            text: '50'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }
        SecondaryButton{
            width: 117 ; height: 50
            text: '-'
            font{
                family: Constants.montserratNormal.name
                pixelSize: 22
            }
        }


    }

    PrimaryButton{
        text: 'SAVE'
        x: 453 ; y: 500
    }

    SecondaryButton{
        text: 'CANCEL'
        x:640 ; y:500
    }
}
