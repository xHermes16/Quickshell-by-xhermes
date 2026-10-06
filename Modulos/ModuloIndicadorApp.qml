import QtQuick
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets
import "../Temas"

EstiloBoton{
    Row{
        id: indicadorModulo
        spacing: TemaPrincipal.rowSpacing

        Repeater{
            model: SystemTray.items
            delegate: Item{
                width: 20
                height: 20
                IconImage{
                    source: modelData.icon
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
                    onClicked: (mouse) => {
                        if(mouse.button === Qt.LeftButton){
                            if(modelData.onlyMenu && modelData.hasMenu){
                                var pos = QsWindow.window.itemPosition(parent)
                                modelData.display(QsWindow.window, pos.x, pos.y)
                            }
                            else{
                                modelData.activate()
                            }
                        }
                        else if(mouse.button === Qt.RightButton){
                            if(modelData.hasMenu){
                                var posi = QsWindow.window.itemPosition(parent)
                                modelData.display(QsWindow.window, posi.x, posi.y)
                            }
                        }
                        else if(mouse.button === Qt.MiddleButton){
                            modelData.secondaryActivate()
                        }
                    }
                }
            }
        }
    }
}