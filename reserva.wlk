import vehiculos.*

class Reserva{
    const auto = null
    var cantPersonas = 0
    var distanciaARecorrer = 0
    var maxHorasDeViaje = 0
    const coloresContraindicados = #{} //colores que estan contraindicados para alguna de las personas que viajan
    var aceptaAutoRuidoso = false //la necesidad de un auto que no sea ruidoso
    var transportinParaSillaDeRueda = false //necesidad de transportar silla de ruedas.


    method auto() = auto 

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

    method aceptaAutoRuidoso(bool) {
        aceptaAutoRuidoso = bool
    }

    method transportinParaSillaDeRueda(bool) {
        transportinParaSillaDeRueda = bool
    }

    method puedeContratar() = auto.cumpleParaContratacion()
}