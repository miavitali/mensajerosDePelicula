import destinos.*
import vehiculos.*

object neo {
    const peso = 0
    var credito = 0

    method puedeLlamar() {
        credito > 0
    }

    method credito() {
        return credito
    }
    method sumarCredito(gigas) {
        credito += gigas
    }

    method peso() {
        return peso
    }
}

object jean {
    const puedeLlamar = true
    const peso = 65

    method puedeLlamar() {
        return puedeLlamar
    }

    // getter
    method peso() {
        return peso
    }
}

object sara {
    var peso = 50
    const puedeLlamar = false
    var vehiculo = moto

    method puedeLlamar() {
        return puedeLlamar
    }

    method vehiculo() {
        return vehiculo
    }
    method setVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    //getter
    method peso() {
        return peso + vehiculo.peso()
    }
    //setter
    method setPeso(nuevoPeso) {
        peso = nuevoPeso
    }
}