pragma Singleton
import QtQuick 2.15

QtObject {

    readonly property FontLoader montserratNormal: FontLoader {
        source: "qrc:/Assets/Fonts/Montserrat/Montserrat-Regular.ttf"
    }
    readonly property int h1: 45
    readonly property int h2: 26
    readonly property int h3: 18
    readonly property int h4: 16
    readonly property int h5: 15

    readonly property color cardBackgroundColor: "#FFFFFF"
    readonly property color appBackground: "#EEF1FF"
    readonly property Gradient bg: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#DFE6EE"}
        GradientStop{position: 1.0 ;color: "#CAD8DB"}
    }

    readonly property Gradient blueGradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop{position: 0.0 ;color: "#2A8DEA"}
        GradientStop{position: 1.0 ;color: "#372DFE"}
    }
    readonly property color darkTextColor: "#2F3C4E"
    readonly property color textWhite: "#ECF1FC"
    readonly property color text1Color: "#818584"
    readonly property color text2Color: "#8492A6"
    readonly property color validColor: "#D9FFF2"
    readonly property color errorColor: "#FFEAEA"
    readonly property color inputHintColor: "#C4C4C4"
    readonly property color inactiveColor:"#B8D3FF"
    readonly property color activeColor:"#FFFFFF"
    readonly property color primaryColor: "#372DFE"
    readonly property color outlineColor: "#E6E6E6"
}
