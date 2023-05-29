import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.0
import "../../"

Rectangle {
    id: root

    color: 'transparent'

    Rectangle{
//        x: 250; y: 46
        anchors{
            horizontalCenter: parent.horizontalCenter
            horizontalCenterOffset: 213/2
            verticalCenter: parent.verticalCenter
            verticalCenterOffset: 40
        }

        width: 768 ; height: 480
        radius: 104
        color: 'transparent'
        border{
            color: Constants.outlineColor
            width: 4
        }
        Text{
            y: -30
            text: 'RESULT'
            color: Constants.darkTextColor
            font{
                family: Constants.montserratNormal.name
                pointSize: 16
            }
        }

        Grid{
            id: gridId
//            x: 109 ; y: 37
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 37
            }

            columns: 2
            rows: 3
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }

                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Patient ID: 32165498'
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Test Name: HbA1c'
                    color:Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Operator ID: 32165498'
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Lot No: 2205G103'
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Sample Type: Serum'
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
            Rectangle{
                width: 294; height: 40
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    text: 'Ref Range: 4.0-6.0 %'
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 16
                    }
                }
            }
        }

        ChartView{
            id: chart
            width: 366 ; height: 272
            backgroundColor: 'transparent'
            x: 84; y: 153
            legend.alignment: Qt.AlignBottom
            antialiasing: true

            LineSeries{
                XYPoint { x: -20; y: 0   }
                XYPoint { x: -13; y: 0   }
                XYPoint { x: -10; y: 0.2 }
                XYPoint { x: -7;  y: 0   }
                XYPoint { x:  0;  y: 0   }
            }
        }

        Column{
//            x:470 ; y:211
            anchors{
                verticalCenter: parent.verticalCenter
                verticalCenterOffset: 20
                right: gridId.right
            }
            width: 230
            height: 166
            Rectangle{
                width: 230
                height: 83
                color: 'lightgray'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.centerIn: parent
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 32
                        bold: true
                    }
                    text: 'RESULT'
                }
            }
            Rectangle{
                width: 230
                height: 83
                color: 'transparent'
                border{
                    color: Constants.outlineColor
                    width: 1
                }
                Text{
                    anchors.centerIn: parent
                    color: Constants.outlineColor
                    font{
                        family: Constants.montserratNormal.name
                        pointSize: 32
                    }
                    text: '% 4.32'
                }
            }

        }

        Row{
//            x: 58 ; y:446
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: 44
            }

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
