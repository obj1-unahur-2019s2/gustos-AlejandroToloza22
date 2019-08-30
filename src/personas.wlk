import objetos.*

object estefania {
	method leGusta(objeto) { return objeto.color().esFuerte() }
}

object rosa {
	method leGusta(objeto) { return objeto.peso()<=2000 }
}

object juan {
	method leGusta(objeto) { 
		return not objeto.color().esFuerte() || objeto.peso()>=1200 and objeto.peso()<=1800 		
	}
}                                                                    //objeto.peso().between(1200, 1800)

object luisa {
	method leGusta(objeto) { return objeto.material().brilla() } }
