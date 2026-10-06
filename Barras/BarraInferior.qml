import QtQuick
import Quickshell
import "../Temas"
import "../Modulos"

PanelWindow{
    id: bar
    anchors{
        bottom: true
        left: true
        right: true
    }
    height: 36
    color: "transparent"
    exclusionMode: ExclusionMode.Ignore
    Row{
        id: seccionIzq
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing: TemaPrincipal.rowSpacing
    }
    Row{
        id: seccionCen
        anchors.centerIn: parent
        spacing: TemaPrincipal.rowSpacing
        ModuloIndicadorApp{}
    }
    Row{
        id: seccionDer
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing: TemaPrincipal.rowSpacing
    }
}