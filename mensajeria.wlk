import mensajeros.*
import paquete.*



object mensajeria {
    const mensajeros = []

    method contratarMensajero(nuevoMensajero) {
        if (!mensajeros.contains(nuevoMensajero)){
            mensajeros.add(nuevoMensajero)
        }else{
            throw new Exception(message = "El mensajero ya esta conntratado")
        }
        
    }

    method despedirMensajero(nombreMensajero) {
        mensajeros.remove(nombreMensajero)
    }

    method empleados() {
        return mensajeros
    }

    method despedirATodos() {
        mensajeros.clear()
    }

    method cantidadEmpleados() {
        return mensajeros.size()
    }

    method esGrande() {
        return mensajeros.size() > 2
    }

    method puedeSerEnviadoPorPrimerEmpleado(paquete) {
        return paquete.puedeEntregarsePor(mensajeros.first())
    }

    method pesoDelUltimoEmpleado() {
        return mensajeros.last().peso()
    }
}