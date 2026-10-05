import QtQuick

Rectangle{
    id: root

    default property alias content: contentContainer.children

    implicitWidth: contentContainer.implicitWidth + 24
    implicitHeight: contentContainer.implicitHeight + 10

    radius: TemaPrincipal.cornerRadius
    color: TemaPrincipal.bgDark
    border.color: TemaPrincipal.borderPurple
    border.width: TemaPrincipal.borderWidth

    Item{
        id: contentContainer
        anchors.centerIn: parent
        implicitWidth: childrenRect.width
        implicitHeight: childrenRect.height
    }
}