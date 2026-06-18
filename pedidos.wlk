class Pedido {
    var distanciaARecorrrer //km
    var tiempoMaximo //hs
    var property cantPasajerosATransportar
    const coloresIncompatibles = #{}

    method cambiarDistancia(unaDist){
        distanciaARecorrrer = unaDist
    }
    
    method agregarColoresincompatibles(unColor){
        coloresIncompatibles.add(unColor)
    }

    method acelerar(){
        tiempoMaximo = tiempoMaximo - 1
    }

    method relajar(){
        tiempoMaximo = tiempoMaximo + 1
    }

    method velocidadRequerida(){
        return distanciaARecorrrer / tiempoMaximo
    }

    method puedeSatisfacerAlPedido(unAuto){
        return 
        (unAuto.velocidadMaxima()  >= self.velocidadRequerida()+ 10) &&
        (unAuto.capacidad() >= cantPasajerosATransportar) &&
        !coloresIncompatibles.contains(unAuto.color())
    }




}