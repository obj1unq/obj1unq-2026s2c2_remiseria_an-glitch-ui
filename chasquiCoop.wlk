import reserva.*
import vehiculos.*


object chasquiCoop {
    const flotaVehiculo = #{}
    const historialReservas = []


    method hacerReserva(pedido, auto) {
        self.validarRealizarReserva(pedido, auto)
        self.agregarReserva(pedido, auto)
    }

    method validarRealizarReserva(reserva) {
        if(!self.hayAutoEnFlotaCapacitado(reserva)){
            self.error("No es posible realizar la reserva")
        }
    } 

    method hayAutoEnFlotaCapacitado(reserva) = 0 

    method agregarReserva(reserva, vehiculo) {
        historialReservas.add(reserva)
        reserva.auto(vehiculo)
    }

    method agregarVehiculo(auto) {
        flotaVehiculo.add(auto)
    }
}