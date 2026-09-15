import destinos.*
import test.*
import mensajeros.*

object paquete {
	
	var mensajero = jean
	var pago = false
	var destino = matrix

	method precio() {
		return destino.precioEnvio()
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
	method setDestino(nuevoDestino) {
		destino = nuevoDestino
	}
	// getter
	method destino(){
		return destino
	}

	// setter
	method setMensajero(nuevoMensajero) {
		mensajero = nuevoMensajero
	}
	// getter
	method mensajero() {
		return mensajero
	}

	
	method puedeEntregarse() {
		return self.estaPago() and destino.habilitadoAPasar()
	}
}
