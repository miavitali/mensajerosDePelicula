import mensajeros.*
import paquete.*
import paquetito.*
import paquetonViajero.*




object mensajeria {
    const mensajeros = [jean,neo,sara]
    const paquetesPendientes = []
    var facturacion = 0

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

    // Parte 3

    //1
    method puedeEntregar(unPaquete){
        return mensajeros.any({ mensajero => unPaquete.puedeEntregarsePor(mensajero) })
    }

    //2
    method losQuePuedenEnviar(unPaquete) {
        return mensajeros.filter({mensajero => unPaquete.puedeEntregarsePor(mensajero)})
    }

    //3
    method tieneSobrepeso() {
        return (mensajeros.sum({mensajero => mensajero.peso()}) / mensajeros.size()) > 500
    }

    method pendientes() {
        return paquetesPendientes
    }

    //4
    method enviar(unPaquete) {
        if (self.puedeEntregar(unPaquete)){
            const mensajeroElegido = self.losQuePuedenEnviar(unPaquete).anyOne()
            unPaquete.asignarMensajero(mensajeroElegido)

            self.cobrar(unPaquete)
            paquetesPendientes.remove(unPaquete)
        }else{
            if(!paquetesPendientes.contains(unPaquete)){
                paquetesPendientes.add(unPaquete)
            }
        }
    }

    method cobrar(elPaquete) {
        facturacion += elPaquete.precioEnvio()
    }

    //5
    method facturacion() {
        return facturacion
    }

    //6
    method enviarPaquetes(unConjuntoDePaquetes) {
        unConjuntoDePaquetes.forEach({unPaquete => self.enviar(unPaquete)})
    }

    //7
    method pendienteMasCaro() {
        return paquetesPendientes.max({paquete => paquete.precioEnvio()})
    }
    method enviarElMasCaro() {
        self.enviar(self.pendienteMasCaro())
    }
}