import vehiculos.*

class Reserva{
    var cantPersonas = 0
    var distanciaARecorrer = 0
    var maxHorasDeViaje = 0
    const coloresContraindicados = #{} //colores que estan contraindicados para alguna de las personas que viajan
    var necesitaAutoSilencioso = false
    var necesitaTransportarSillaDeRuedas = false

    method agregarColor(color) {
        coloresContraindicados.add(color)
    }

    method cantPersonas(cantidad) {
        cantPersonas = cantidad
    }

    method distanciaARecorrer(distancia) {
        distanciaARecorrer = distancia
    }

    method maxHorasDeViaje(horas) {
        maxHorasDeViaje = horas
    }

    method necesitaAutoSilencioso(bool) {
        necesitaAutoSilencioso = bool
    }

    method necesitaTransportarSillaDeRuedas(bool) {
        necesitaTransportarSillaDeRuedas = bool
    }

    method puedeSerCumplidaPor(vehiculo) = self.cumpleCapacidad(vehiculo) && self.cumpleAutonomia(vehiculo) && self.cumpleVelocidad(vehiculo) && self.cumpleNecesidadesEspeciales(vehiculo)

    method cumpleCapacidad(vehiculo) = vehiculo.capacidad() >= cantPersonas

    method cumpleAutonomia(vehiculo) = vehiculo.autonomia() >= distanciaARecorrer

    method cumpleVelocidad(vehiculo) = if(maxHorasDeViaje > 0) {
        distanciaARecorrer / maxHorasDeViaje + 10 <= vehiculo.velocidadMax()
    } else {
        false
    }

    method cumpleNecesidadesEspeciales(vehiculo) = self.cumpleColor(vehiculo) && self.cumpleSillaDeRuedas(vehiculo) && self.cumpleRuido(vehiculo)

    method cumpleColor(vehiculo) = !coloresContraindicados.contains(vehiculo.color())

    method cumpleSillaDeRuedas(vehiculo) = !necesitaTransportarSillaDeRuedas || vehiculo.puedeTransportarSillaDeRuedas()

    method cumpleRuido(vehiculo) = !necesitaAutoSilencioso || !vehiculo.motorRuidoso()
}