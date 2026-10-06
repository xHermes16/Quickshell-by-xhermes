import QtQuick
import Quickshell
import "../Temas"
import "../Modulos"

PanelWindow{
    id:bar
    anchors{
        top: true
        left: true
        right: true
    }

    height: 32

    exclusiveZone: 12

    color: "transparent"

    Row{
        id: seccionIzq
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing: TemaPrincipal.rowSpacing

        ModuloWorkspaces{}
    }

    Row{
        id: seccionCen
        anchors.centerIn: parent
        spacing: TemaPrincipal.rowSpacing
        ModuloHoraFecha{}
    }

    Row{
        id:seccionDer
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing: TemaPrincipal.rowSpacing
        ModuloBateria{}
    }
}