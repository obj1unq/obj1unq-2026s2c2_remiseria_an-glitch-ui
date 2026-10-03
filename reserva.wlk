import vehiculos.*

class Reserva{
    var property auto = null
    var cantPersonas = 0
    var property distanciaARecorrer = 0
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


/*
¿Da igual que las colecciones de flotas y viajes en la sucursal sean listas o conjuntos? Si piensas que no, cambia una implementación por la otra y 
revisa el resultado.
    No es lo mismo usar lista que conjuntos porque, en el caso de las reservas, al usar lista se permite que el historial de las reservas esté ordenado
    según el orden en el que las reservas fueron agregadas, y si se usara un conjunto, obtener orden o la reserva en una posición específica sería imposible
    En cambio, para la colección de flotas da igual si se usa una lista o un conjunto ya que la flota de vehiculos no requiere algo en específico para su uso

¿Dónde se instancia un viaje, dentro o fuera de la clase Sucursal?. Pensar como sería la alternativa.
    Una instancia viaje se debería crear dentro de la clase sucursal (chasquicoop) al tener esta una forma de poder realizar un viaje   ??

¿La combi es un objeto autodefinido o una instancia de clase? ¿Se puede usar la otra variante indistintamente?
    La combi es un objeto autodefinido (wko) porque el enunciado explícitamente te dice que 'La combi adaptable es un vehículo único para toda la empresa.'
    y por ende no puede ser una clase en donde se definan n instancias de una combi. La alternativa de que combi sea una clase sería incorrecta al no 
    respetar el enunciado   ??

Dibujar el diagrama dinámico que muestra el estado final del último test.
    -_-'

Dibujar con un diagrama estático la relación entre los tipos Viaje, Reserva y Vehículo (y las entidades que las implementan).
    -_-''
*/
