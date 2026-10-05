pragma Singleton
import QtQuick

QtObject{
    //---------------Colores
    readonly property color bgDark: "#e6190026"
    readonly property color borderPurple: "#320064"
    readonly property color textPrimary: "#d000ff"

    //---------------------Tipografia
    readonly property string fontFamily: "Germania One"
    readonly property int fontSize: 16

    //--------Border y espaciado
    readonly property int cornerRadius: 16
    readonly property int borderWidth: 2
    readonly property int rowSpacing: 8
}