import QtQuick 2.15
import QtQuick.Controls 2.15

import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Rectangle{
        x: 250; y: 46
        width: 768 ; height: 500
        radius: 104
        color: 'transparent'
        border{
            color: Constants.outlineColor
            width: 4
        }

        Row{
            x: 58 ; y:446
            spacing: 17
            SecondaryButton{
                text: 'PRINT'
            }
            SecondaryButton{
                text: 'Send to LIS'
            }
            SecondaryButton{
                text: 'EXPORT'
            }
            SecondaryButton{
                text: 'DETAILS'
            }
            SecondaryButton{
                text: 'BACK'
            }
        }
    }
}
