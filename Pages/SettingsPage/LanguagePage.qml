import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Grid{
        columns: 4 ; rows: 2
        columnSpacing: 40
        rowSpacing: 30
        x: 350 //; y:212
        anchors.verticalCenter: parent.verticalCenter

        RadioButton{
            text: 'English'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Polish'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Deutsch'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Pyccknn'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Espano'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Portugues'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Italiano'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
        RadioButton{
            text: 'Francais'
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
            verticalPadding: -7
        }
    }

    Row{
        x:455 ; y:500
        spacing: 70
        PrimaryButton{
            text: 'SAVE'
        }
        SecondaryButton{
            text: 'CANCEL'
        }
    }
}
