import QtQuick
import Quickshell.Services.UPower
import "../Temas"

EstiloBoton{
    id: bateriaModulo

    property var dispositivo: UPower.displayDevice
    property int porcentaje: dispositivo.ready ? Math.round(dispositivo.percentage * 100) : 0
    property bool cargando: !UPower.onBattery

    EstiloTexto{
        tema: bateriaModulo.tema
        text: (bateriaModulo.cargando ? " " : "") + bateriaModulo.porcentaje + "%"
    }
}