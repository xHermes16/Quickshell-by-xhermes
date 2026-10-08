import QtQuick
import "../Temas"

Item{
    id: relojModulo

    implicitWidth: contenido.width
    implicitHeight: contenido.height

    property string horaTexto: ""
    property string fechaTexto: ""
    property bool mostrarFecha: false
    property bool tema: true

    function actualizar(){
        var ahora = new Date()
        horaTexto = Qt.formatTime(ahora, "HH:mm")
        fechaTexto = Qt.formatDate(ahora, "dd/MM/yyyy")
    }

    Timer{
        interval: 1000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: relojModulo.actualizar()
    }

    MouseArea{
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked:{
            relojModulo.mostrarFecha = !relojModulo.mostrarFecha
        }
    }

    EstiloBoton{
        id: contenido
        tema: relojModulo.tema
        EstiloTexto{
            id: texto
            tema: relojModulo.tema
            text:{
                if (mostrarFecha){
                    return fechaTexto
                }
                else{
                    return horaTexto
                }
            }
        }
    }
}