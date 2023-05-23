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
        x: 326 ; y:212
        RadioButton{
            text: 'English'
        }
        RadioButton{
            text: 'Polish'
        }
        RadioButton{
            text: 'Deutsch'
        }
        RadioButton{
            text: 'Pyccknn'
        }
        RadioButton{
            text: 'Espano'
        }
        RadioButton{
            text: 'Portugues'
        }
        RadioButton{
            text: 'Italiano'
        }
        RadioButton{
            text: 'Francais'
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
