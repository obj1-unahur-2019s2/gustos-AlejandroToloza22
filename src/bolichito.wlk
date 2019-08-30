import objetos.*
import personas.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla = objetoEnMostrador.material().brilla()
		const elDeVidrieraBrilla = objetoEnMostrador.material().brilla()
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		return objetoEnMostrador.color() == color || objetoEnMostrador.color() == color
	}

	method puedeMejorar() {
		return self.estaDesequilibrado() || self.esMonocromatico()
	}
	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)
	}
}