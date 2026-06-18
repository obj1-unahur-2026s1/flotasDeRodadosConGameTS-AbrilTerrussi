
class ChevroletCorsa {
  const property color 
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300

}

class RenaultKwid{
  var tieneTanqueAdicional = false


  method ponerTanque(){
    tieneTanqueAdicional = true
  }

  method quitarTanque(){
    tieneTanqueAdicional = false
  }

  method capacidad(){
    if (tieneTanqueAdicional){
      return 3
    }else
      return 4
  }

  method velocidadMaxima() {
    if (tieneTanqueAdicional){
      return 120
    }else
      return 110
  }

  method peso(){
    if (tieneTanqueAdicional){
      return self.pesoSolo() + 150
    }else
      return self.pesoSolo() 
  }

  method pesoSolo(){
    return 1200
  }

  method color() = "Azul"
}

object trafic{
  var interior = comodo
  var motor = popular

  method cambiarInterior(unInterior){
    interior = unInterior
  }
  method cambiarMotor(unMotor){
    motor = unMotor
  }

  method interior() = interior
  method motor() = motor

  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "Blanco"
}

object comodo{
  var property capacidad = 5
  var property peso = 700
}
object popular{
  var property capacidad = 12
  var property peso = 1000
}

object pulenta {
  var property peso = 800
  var property velocidadMaxima =  130
}
object bataton {
  var property peso = 500
  var property velocidadMaxima =  80
}

class AutoEspecial{
  const property capacidad
  const property peso
  const property color
  const property velocidadMaxima
}