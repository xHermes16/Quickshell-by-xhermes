import QtQuick

Rectangle{
    id: root

    default property alias content: contentContainer.children
    property bool tema: true

    implicitWidth: contentContainer.implicitWidth > 0 ? contentContainer.implicitWidth + 24 : 0
    implicitHeight: contentContainer.implicitHeight > 0 ? contentContainer.implicitHeight + 10 : 0

    radius: TemaPrincipal.cornerRadius
    color: tema ? TemaPrincipal.fondo : TemaPrincipal.fondoDos
    border.color: tema ? TemaPrincipal.borde : TemaPrincipal.bordeDos
    border.width: TemaPrincipal.borderWidth

    Item{
        id: contentContainer
        anchors.centerIn: parent
        implicitWidth: childrenRect.width
        implicitHeight: childrenRect.height
    }
}