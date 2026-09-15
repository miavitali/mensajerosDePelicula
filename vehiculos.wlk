object moto {
    const peso = 100

    method peso() {
        return peso
    }
}

object camion {
    const peso = 500
    var cantAcoplados = 0

    method peso() {
        return peso + (cantAcoplados * 500)
    }

    // getter
    method cantAcoplados() {
        return cantAcoplados
    }
    // setters
    method ponerAcoplado() {
        cantAcoplados += 1
    }
    method sacarAcoplado() {
        cantAcoplados -= 1
    }
}