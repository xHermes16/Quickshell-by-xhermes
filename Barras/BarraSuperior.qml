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

    height: 36

    exclusiveZone: 14

    color: "transparent"

    Row{
        id: seccionIzq
        anchors.left: parent.left
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
        spacing: TemaPrincipal.rowSpacing
        ModuloBateria{}
    }
}