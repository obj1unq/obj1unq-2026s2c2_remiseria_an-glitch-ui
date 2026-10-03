import reserva.*
import vehiculos.*


object chasquiCoop {
    const flotaVehiculo = #{}
    const historialReservas = []


    method hacerReserva(pedido) {
        self.validarRealizarReserva(pedido)
        const vehiculo = (self.vehiculosCapacitadosPara(pedido)).get(0)
        self.agregarReserva(pedido, vehiculo)
    }

    method hacerReserva(pedido, vehiculo) {
        self.validarRealizarReserva(pedido, vehiculo)
        self.agregarReserva(pedido, vehiculo)
    }

    method validarRealizarReserva(reserva) {
        if(!self.hayAutoEnFlotaCapacitado(reserva)){
            self.error("No es posible realizar la reserva...")
        }
    }

    method validarRealizarReserva(reserva, vehiculo) {
        if(!self.existeElAuto(vehiculo)){
            self.error("No se puede asignar un auto que no está en la flota...")
        }
        if(!reserva.puedeSerCumplidaPor(vehiculo)){
            self.error("El auto no puede cumplir con la reserva...")
        }
    }

    method hayAutoEnFlotaCapacitado(reserva) = flotaVehiculo.any({a => reserva.puedeSerCumplidaPor(a)})

    method agregarReserva(reserva, vehiculo) {
        historialReservas.add(reserva)
        reserva.auto(vehiculo)
    }

    method agregarVehiculo(auto) {
        self.validarAgregacionDe(auto)
        flotaVehiculo.add(auto)
    }

    method quitarVehiculo(auto) {
        self.validarEliminacionDe(auto)
        flotaVehiculo.remove(auto)
    }

    method validarEliminacionDe(auto) {
        if(!self.existeElAuto(auto)){
            self.error("No se puede quitar un auto que no está en la flota...")
        }
    }

    method validarAgregacionDe(auto) {
        if(self.existeElAuto(auto)){
            self.error("No se puede agregar un auto que ya está en la flota...")
        }
    }

    method existeElAuto(auto) = flotaVehiculo.contains(auto)

    method vehiculosCapacitadosPara(reserva) = flotaVehiculo.filter({a => reserva.puedeSerCumplidaPor(a)})
    method reservasParaElVehiculo(auto) = historialReservas.filter({r => r.auto() == auto})
    method distanciaTotalRecorridaPara(auto) = (self.reservasParaElVehiculo(auto)).sum({a => a.distanciaARecorrer()})
}