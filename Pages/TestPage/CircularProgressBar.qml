import QtQuick 2.15

import "../../"

Canvas {
    id: canvas

    width:240
    height: 240
    antialiasing: true

    property real min: 0
    property real max: 100
    property real current: 0

    property color primaryColor: Constants.primaryColor//'orange'
    property color secondaryColor: Constants.outlineColor//'lightblue'
    property real primaryLineWidth: 16
    property real secondaryLineWidth: 8

    property real centerX: width / 2
    property real centerY: height / 2
    property real radius: (Math.min(width, height) - secondaryLineWidth)

    property real angle: (current / 100 * 2 * Math.PI)
    property real angleOffset: -Math.PI / 2

    property string text: 'Text'

    onCurrentChanged: requestPaint()

    signal clicked

    onPaint: {
        var ctx = getContext("2d");
        ctx.save();

        ctx.clearRect(0,0,canvas.width,canvas.height);

        if(mouseArea.pressed){
            ctx.beginPath();
            ctx.lineWidth = 1;
            ctx.fillStyle = Qt.lighter("gray");
            ctx.arc(120, 120, 119, 0, 2 * Math.PI);
            ctx.fill();
        }

        ctx.beginPath();
        ctx.lineWidth = secondaryLineWidth;
        ctx.strokeStyle = secondaryColor;
        ctx.arc(120, 120, 120 - primaryLineWidth/2, 0, 2 * Math.PI);
        ctx.stroke();

        ctx.beginPath();
        ctx.lineWidth = primaryLineWidth;
        ctx.lineCap = 'round'
        ctx.strokeStyle = primaryColor;
        ctx.arc(120, 120, 120 - secondaryLineWidth, -Math.PI/2, -Math.PI/2 + angle);
        ctx.stroke();

        ctx.restore();
    }
    Text{
        anchors.centerIn: parent
        text: Math.round(canvas.current) + '%'
        color: canvas.primaryColor
        font{
            bold: true
            pixelSize: 18
        }
    }

    MouseArea{
        id: mouseArea

        anchors.fill: parent
        onClicked: canvas.clicked()
        onPressedChanged: canvas.requestPaint()
    }
}
