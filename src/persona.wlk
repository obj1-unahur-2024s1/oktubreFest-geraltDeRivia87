import cerveza.*

class Persona {
	
	const peso
	const property mercadoDeCervezas = []
	const jarras = []
	const gustaDeMusicaTradicional = false
	const aguante 
	const property nacionalidad
	
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
	
}
