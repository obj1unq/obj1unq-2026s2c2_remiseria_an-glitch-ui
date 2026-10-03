class Torino {
    var property velocidadMax = 0
    const capacidad = 4
    var property color = null //"Negro"
    const motorRuidoso = true
    const puedeTransportarSillaDeRuedas = false
    var property autonomia = 0

    method capacidad() = capacidad
    method motorRuidoso() = motorRuidoso
    method puedeTransportarSillaDeRuedas() = puedeTransportarSillaDeRuedas
}

class Economico {
    const velocidadMax = 120
    const capacidad = 5
    const color = "Beige"    //modelar objetos colores? barbaridad
    const motorRuidoso = true
    var property puedeTransportarSillaDeRuedas = false
    var property autonomia = 200
    var property tieneTanqueDeGasExtra = false
    var property tieneCañoDeEscapeSilencioso = false


    method color() = color
    method motorRuidoso() = motorRuidoso && !tieneCañoDeEscapeSilencioso && !tieneTanqueDeGasExtra
    method capacidad() = capacidad - self.espacioTotalDeSusAdaptaciones()
    method espacioTotalDeSusAdaptaciones() = if(tieneTanqueDeGasExtra && puedeTransportarSillaDeRuedas){
        2
    } else if(tieneTanqueDeGasExtra || puedeTransportarSillaDeRuedas){
        1
    } else{
        0
    }

    method velocidadMax() = velocidadMax - self.velocidadMaxTotalSegunAdaptaciones()
    method velocidadMaxTotalSegunAdaptaciones() = self.valorSiTieneCañoDeEscapeSilencioso() + self.valorSiTieneTanqueExtra() + self.valorSiTieneTransportador()
    method valorSiTieneCañoDeEscapeSilencioso() = if(tieneCañoDeEscapeSilencioso){5} else{0}   //120-5=115
    method valorSiTieneTanqueExtra() = if(tieneTanqueDeGasExtra){40} else{0}     //120-40=80
    method valorSiTieneTransportador() = if(puedeTransportarSillaDeRuedas){30} else{0}    //120-30=90

    method tieneMotorSilencioso() = motorRuidoso || tieneCañoDeEscapeSilencioso || tieneTanqueDeGasExtra    //?????

    method autonomia() = (autonomia + self.valorAutonomiaSiTieneTanqueDeGas()) - (self.valorAutonomiaSiTieneTransportador() + self.valorAutonomiaSiTieneCañoDeEscape())

    method valorAutonomiaSiTieneTanqueDeGas() = if(tieneTanqueDeGasExtra){200} else{0}
    method valorAutonomiaSiTieneTransportador()= if(puedeTransportarSillaDeRuedas){20} else{0}
    method valorAutonomiaSiTieneCañoDeEscape() = if(tieneCañoDeEscapeSilencioso){10} else{0}
}

class CombiAdaptable {
    var property interior = interiorAccesible
    var property motor = motorUrbano
    const color = "Celeste"


    method capacidad() = interior.capacidad()
    method puedeTransportarSillaDeRuedas() = interior.puedeTransportarSillaDeRuedas()
    method velocidadMax() = motor.velocidadMax()
    method autonomia() = motor.autonomia()
    method motorRuidoso() = motor.motorRuidoso()
    method color() = color
}

object interiorEspacioso {
    method capacidad() = 7
    method puedeTransportarSillaDeRuedas() = false
}

object interiorAccesible {
    method capacidad() = 5
    method puedeTransportarSillaDeRuedas() = true
}

object motorDeportivo {
    method velocidadMax() = 230
    method autonomia() = 400
    method motorRuidoso() = true
}

object motorUrbano {
    method velocidadMax() = 130
    method autonomia() = 1000
    method motorRuidoso() = false
}

