import QtQuick
import Quickshell.Hyprland
import "../Temas"

EstiloBoton{
    Row{
        id: workspacesModulo
        spacing: TemaPrincipal.rowSpacing

        Repeater{
            model: Hyprland.workspaces
            delegate: Rectangle{
                width: texto.width + 12
                height: texto.height + 2
                radius: width/2
                color: modelData.active ? TemaPrincipal.textPrimary : TemaPrincipal.bgDark
                border.color: TemaPrincipal.borderPurple
                border.width: TemaPrincipal.borderWidth

                EstiloTexto{
                    id: texto
                    anchors.centerIn: parent
                    text: modelData.name
                    color: modelData.active ? TemaPrincipal.bgDark : TemaPrincipal.textPrimary
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: modelData.activate()
                }
            }

        }
    }
}