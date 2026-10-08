import QtQuick

Text{
    default property bool tema: true
    color: tema ? TemaPrincipal.texto : TemaPrincipal.textoDos
    font.family: TemaPrincipal.fontFamily
    font.pixelSize: TemaPrincipal.fontSize
    font.bold: true
}