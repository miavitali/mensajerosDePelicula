import test.*
import mensajeros.*

object matrix {

    const precioEnvio = 500

    method precioEnvio() {
        return precioEnvio
    }

    method habilitadoAPasar(mensajero) {
        return mensajero.puedeLlamar()
    }
}

object brooklyn {

    const precioEnvio = 150
    
    method precioEnvio() {
        return precioEnvio
    }

    method habilitadoAPasar(mensajero) {
        return mensajero.peso() <= 1000
    }
}