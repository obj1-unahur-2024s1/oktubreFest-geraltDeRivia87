class JarraCerveza {
	
	const property marca
	const property lupulo
	const property madeIn
	const property litros 
	
	method graduacionAlcolica() 
	
	method lupuloEnJarra(){
		
		return
		lupulo * litros 
			
	}
	
	method contenidoDeAlcohol(){
		
		return
		self.graduacionAlcolica() * litros
	}
		
}

object graduacionNegraMundial{
	
	var porcentajeGraduacion
	
	method porcentaje()= porcentajeGraduacion
	method porcentaje(numero) {
		
		porcentajeGraduacion = numero
	}
}

class MarcaRubia inherits JarraCerveza {
	
	const graduacionAlcolica
	
	override method graduacionAlcolica() {
		
		return graduacionAlcolica
	}
}

class MarcaNegra inherits JarraCerveza {
	
	override method graduacionAlcolica() { 
		
		return
		graduacionNegraMundial.porcentaje() * (lupulo *2)
		
		
	}
}

class MarcaRoja inherits MarcaNegra {
	
	override method graduacionAlcolica(){ 
		
		return 
		super() * 1.25
	} 
	
	
}
