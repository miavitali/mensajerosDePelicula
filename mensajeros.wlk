import destinos.*
import vehiculos.*


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

object neo {
    const peso = 0
    var credito = 0

    method puedeLlamar() {
        return credito > 0
    }

    method credito() {
        return credito
    }
    method sumarCredito(gigas) {
        credito += gigas
    }
    method llamar(minutos) {
        credito -= minutos
    }

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
    method asignarVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    //getter
    method peso() {
        return peso + vehiculo.peso()
    }
    //setter
    method definirPeso(nuevoPeso) {
        peso = nuevoPeso
    }
}

object maia {
    const puedeLlamar = true
    const peso = 55
    const vehiculo = moto


    method puedeLlamar() {
        return puedeLlamar
    }

    // getter
    method peso() {
        return peso
    }

    method vehiculo() {
        return vehiculo
    }
}