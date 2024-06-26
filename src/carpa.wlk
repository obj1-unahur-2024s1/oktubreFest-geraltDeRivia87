import cerveza.*
import persona.*

class Carpa {
     
     const participantes = []
     const capacidadMax 
     var property tieneMusicaTradicional
     var property marca  
     
    
     method estaLleno() = participantes.size() == capacidadMax 
     method esAleman(unaPersona) = unaPersona.nacionalidad() == "aleman"
     method participantes()= participantes 
     method agregarParticipante(unaPersona) {
     	
     	if(not self.estaLleno() and not self.esAleman(unaPersona))
     	    participantes.add(unaPersona)
     	else
     	if(not self.estaLleno() and participantes.size().even() and self.esAleman(unaPersona))    
            participantes.add(unaPersona)  
            
     } 
     method puedeIngresar(unaPersona) = not self.estaLleno() and not unaPersona.estaEbrio()
         
	 method estaEnLaCarpa(unaPersona) = participantes.contains(unaPersona)
	 
	 method servirJarra(unaPersona,litros){
	 	const jarra(self.marca()) = new Marca(marca = marca, lupulo=5)
	 	
	 	if(self.estaEnLaCarpa(unaPersona)) unaPersona.agregar(jarra)
	 	else
	 	self.
	 }
	
}
