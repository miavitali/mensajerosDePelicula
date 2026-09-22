import destinos.*
import mensajeros.*

object paqueteExtra {
	
	var mensajero = neo
	var pago = false
	const costoEnvio = 150
	var destino = matrix

	method precioEnvio() {
		return costoEnvio
	}

	// setter
	method pagar() {
		pago = true
	}
	// getter
	method estaPago() {
		return pago
	}

	// setter
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
