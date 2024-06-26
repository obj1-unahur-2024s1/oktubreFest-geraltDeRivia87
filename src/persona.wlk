import cerveza.*
import carpa.*

class Persona {
	
	const peso
	const property mercadoDeCervezas = []
	const jarras = []
	const property gustaDeMusicaTradicional = false
	const aguante 
	const property nacionalidad
	
	method agregarJarra(jarra) {jarras.add(jarra)}
	
	method conMucholupulo() = mercadoDeCervezas.find({cerveza => cerveza.lupulo()> 4})
	
    method conMasGraduacion() = mercadoDeCervezas.find({cerveza => cerveza.graduacionAlcolica()>8})
    
    method CervezasQueGustan() { 
    	
    	return
    	if(self.nacionalidad() == "aleman")
    	   self.mercadoDeCervezas()
    	else
    	if(self.nacionalidad() == "belga")
    	   self.conMasGraduacion()
    	else
    	if(self.nacionalidad() == "checo") 
    	   self.conMasGraduacion()    
    }
    
    method alcoholConsumido()= jarras.sum({cerveza => cerveza.contenidoDeAlcohol()})
    
    method estaEbrio() = (self.alcoholConsumido() * peso)  > aguante
    
    method leGustaCerveza(marca){ 
    	
    	return 
    	self.CervezasQueGustan().contains(marca)
    }
	
	method entrarACarpa(unaCarpa){
		
		if(self.leGustaCerveza(unaCarpa.marca()) 
		   and self.gustaDeMusicaTradicional() == unaCarpa.tieneMusicaTradicional())
		unaCarpa.agregarParticipante(self)
		else 
		self.error("La casa se reserva el derecho de admision ")   
			
	} 
	
	method puedeEntrarA(unaCarpa) = unaCarpa.puedeIngresar(self)
	
}
