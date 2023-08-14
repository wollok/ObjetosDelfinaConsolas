object delfina {
	var diversion = 0
	var consolaActual = play
	
	method diversion() {
		return diversion
	}
	
	method agarrar(consola){
		consolaActual = consola
	}
	
	method jugar(juego){
		diversion = diversion + juego.diversion()
		consolaActual.usar()
	}
	method jugabilidadDeTuConsola() {
		return consolaActual.jugabilidad()
	}
}


object play {
	method jugabilidad(){
		return 10
	}
	method usar() { 
		
	}
}

object portatil{
	var bateriaBaja = false
	
	method jugabilidad() {
		return if (bateriaBaja) 1 else 8
	}
	
	method usar() {
		bateriaBaja = true
	}
}

object tablet{
	var saraza = "asdkjaskdjfaksf"
	method usar(){
		saraza = "dkfjaskfhskjaf"
	}
	method jugabilidad() = 0
}

object arkanoid {
	method diversion() {
		return 50
	}
}

object mario {
	method diversion() {
		return if(delfina.jugabilidadDeTuConsola()>5) 100 else 15
	}
}

object pokemon {
	method diversion() {
		return delfina.jugabilidadDeTuConsola() * 10
	}
}
object candy {
	method diversion () {return 0}
}