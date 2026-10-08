pragma Singleton
import QtQuick

QtObject{
    //---------------Colores
    readonly property color fondo: '#d1190026'
    readonly property color borde: "#320064"
    readonly property color texto: "#d000ff"
    //-----------------Colores dos
    readonly property color fondoDos: '#d3a84c'
    readonly property color bordeDos: '#ffd67c'
    readonly property color textoDos: '#775a1c'

    //---------------------Tipografia
    readonly property string fontFamily: "Germania One"
    readonly property int fontSize: 16

    //--------Border y espaciado
    readonly property int cornerRadius: 16
    readonly property int borderWidth: 2
    readonly property int rowSpacing: 8
}