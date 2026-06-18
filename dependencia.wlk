import pedidos.*
class Dependencia {
    const flotaRodados = []
    const pedidos =[]
    var property cantEmpleados 

    method agregarPedido(unPedido){
        pedidos.add(unPedido)
    }

    method quitarPedido(unPedido){
        pedidos.remove(unPedido)
    }

    method agregarAFlota(rodado){
        flotaRodados.add(rodado)
    }

    method quitarDeFlota(rodado){
        flotaRodados.remove(rodado)
    }

    method pesoTotalFlota(){
        return flotaRodados.sum({r=> r.peso()})
    }

    method estaBienEquipada(){
        return flotaRodados.size() > 3 &&
        flotaRodados.all({r=> r.velocidadMaxima() >= 100})
    }

    method capacidadTotalEnColor(color){
        return self.rodadosDeColor(color).sum({ r=> r.capacidad()})
    }
    method rodadosDeColor(color){
        return flotaRodados.filter({r => r.color() == color})
    }

    method colorDelRodadoMasRapido(){
        return self.rodadoMasRapido().color()
    }

    method rodadoMasRapido(){
        return flotaRodados.max({r=> r.velocidadMaxima()})
    }

    method capacidadFaltante(){
        return cantEmpleados - self.capacidadTotal()
    }

    method capacidadTotal(){
        return flotaRodados.sum({ r=> r.capacidad()})
    }
    
    method esGrande(){
        return cantEmpleados >= 40 && flotaRodados.size() >= 5 
    }

    method totalDePasajerosEnPedidos(){
        return pedidos.sum({p=> p.cantPasajerosATransportar()})
    }

    method pedidosQueNoPuedeSatisfacerPor(){
        return pedidos.filter({p=> !flotaRodados.all({r=> p.puedeSatisfacerAlPedido(r)})})
    }

    method todosLosPedidosSonDecolorIncompatible(color){
        return pedidos.all({p=> p.coloresIncompatibles().contais(color)})
    }
}