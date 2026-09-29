import mensajeros.*
import destinos.*

object paquetonViajero{
    var mensajero = jean
	var montoYaPago= 0
	var destinos = []


    method agregarDestino(nuevoDestino) {
        destinos.add(nuevoDestino)
    }
    method destinos() {
        return destinos
    }

    method precioEnvio() {
        return destinos.size() * 100
    }
    method pagarEnvio(monto) {
        montoYaPago += monto
    }

    method montoAPagar() {
        return self.precioEnvio() - montoYaPago
    }

    method estaPago() {
        return self.montoAPagar() == 0
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
		return self.estaPago() and destinos.all({ destino => destino.habilitadoAPasar(self.mensajero()) })
	}

	method puedeEntregarsePor(esteMensajero) {
		return self.estaPago() and destinos.all({ destino => destino.habilitadoAPasar(esteMensajero) })
	}
}