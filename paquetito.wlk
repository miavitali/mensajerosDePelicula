import mensajeros.*
import destinos.*

object paquetito{
    var mensajero = jean
    const costoEnvio = 0
	var pago = true
	var destino = matrix


    method precioEnvio() {
        return costoEnvio
    }
    method estaPago() {
        return pago
    }


    method darDestino(nuevoDestino) {
		destino = nuevoDestino
	}
	// getter
	method destino(){
		return destino
	}

	// setter
	method asignarMensajero(nuevoMensajero) {
		mensajero = nuevoMensajero
	}
	// getter
	method mensajero() {
		return mensajero
	}

    method puedeEntregarse() {
		return self.estaPago() and destino.habilitadoAPasar(self.mensajero())
	}

	method puedeEntregarsePor(esteMensajero) {
		return self.estaPago() and destino.habilitadoAPasar(esteMensajero)
	}
}