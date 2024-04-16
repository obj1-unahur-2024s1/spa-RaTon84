object spa{
	method atender(persona){
		persona.masaje()
		persona.banioVapor()
	}
}

object olivia{
	var gradoConcentracion = 6;	
	method banioVapor(){		
	}
	/*asignacion */
	method masaje(){
		gradoConcentracion += 3;
	}
	/*asignacion */
	method discute(){
		gradoConcentracion -= 1;		
	}
	/*consulta */
	method gradoConcentracion(){
		return gradoConcentracion;
	}
}

object bruno{	
	var esFeliz = true;
	var tieneSed = false;
	var peso = 5500;
	method masaje(){
		esFeliz = true;
	}
	method banioVapor(){
		peso -= 500;
	}
	method tomarAgua(){
		tieneSed = false;
	}
	method comerFideos(){
		peso += 250;
		tieneSed = true;
	}
	method correr(){
		peso -= 300;
	}
	method verNoticiero(){
		esFeliz = false;
	}
	method estaPerfecto(){
		return esFeliz && !tieneSed && peso.between(5000,7000)
	}
	method mediodiaEnCasa(){
		self.comerFideos();
		self.tomarAgua();
		self.verNoticiero();
	}
}

object ramiro{	
	var contractura = 0;
	var pielGrasosa = false;
	method masaje(){
		contractura = 0.max(contractura) -2
	}
	method banioVapor(){
		pielGrasosa = false;
	}
	method comerBigMac(){
		pielGrasosa = true;
	}
	method bajaAFosa(){
		pielGrasosa = true;
		contractura += 1;
	}
	method jugarPaddle(){
		contractura += 3;		
	}
	method diaDetrabajo(){
		self.bajaAFosa();
		self.comerBigMac();
		self.bajaAFosa();
	}
}