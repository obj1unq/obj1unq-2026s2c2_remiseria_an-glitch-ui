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
    var property puedeTransportarSillaDeRuedas = true
    var property autonomia = 200
    var property tieneTanqueDeGasExtra = false
    var property tieneCañoDeEscapeSilencioso = false


    method color() = color
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

    method valorAutonomiaSiTieneTanqueDeGas() = 0 
    method valorAutonomiaSiTieneTransportador()= 0
    method valorAutonomiaSiTieneCañoDeEscape() = 0
}

class CombiAdaptable {
    var property velocidadMax = 0
    const capacidad = 0
    var property color = null //"Negro"
    const motorRuidoso = true
    const puedeTransportarSillaDeRuedas = false
    var property autonomia = 0

}