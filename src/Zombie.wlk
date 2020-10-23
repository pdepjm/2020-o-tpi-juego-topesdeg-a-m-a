import wollok.game.*
import enemigos.*
import Plantas.*
import config.*
import Elemento.*

class Zombie{

	var danio=0
	var vida =100
	var velocidadAtaque=0
	var estaAtacando = false
	var property position=game.at(0,1.randomUpTo(game.height()))
	var property image="jugador.png"

	
	method danio() = danio
	 method caminar(){
	 	position =self.position().right(1)
	 }
	
	method atacar(atacado) {
		estaAtacando = true
		game.onTick(velocidadAtaque, "ATACAR", {atacado.recibirAtaque(self)})
	}
	
	method morir(){
		if(vida==0){
			game.removeVisual(self)
		}
	}
}	