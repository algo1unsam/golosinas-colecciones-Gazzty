object bombon {
	var property valor = 5
	var property peso = 15
	var property gusto = "Frutilla"
	var property libreGluten = true

	method mordisco(){
		peso -= ((peso * 0.8) + 1)
		return
	}
}
object alfajor{
	var property valor = 12
	var property peso = 300
	var property gusto = "Chocolate"
	var property libreGluten = false

	method mordisco(){
		peso -= (peso * 0.2)
		return
	}	
}

object caramelo{
	var property valor = 1
	var property peso = 5
	var gusto = "Frutilla"
	var property libreGluten = true

	method mordisco(){
		peso -= 1
		return
	}
}
object chupetin{
	var property valor = 2
	var property peso = 7
	var property gusto = "Naranja"
	var property libreGluten = true

	method mordisco(){
		peso -= 2
		return
	}
}
object oblea{
	var property valor = 5
	var property peso = 250
	var property gusto = "Vainilla"
	var porperty libreGluten = false

	method mordisco(){
		if(peso > 70){
			peso -= (peso * 0.5)
		}else{
			peso -= (peso * 0.25)
		}
		return
	}
}
object chocolatin{
	var property valor = 0
	var property peso = 0
	var property gusto = "Chocolate"
	var property libreGluten = false

	method asignarPeso(_peso){
		peso = _peso
		valor = 0.5 * _peso
		return
	}

	method mordisco(){
		peso -= 2
		return
	}
}
object golosina_bañada{
	method golosina_base(base){
		var gol_base = base
	}

	var property peso = 4 + gol_base.peso()
	var property valor = 2 + gol_base.valor()
	var property gusto = gol_base.gusto()
	var property libreGluten = gol_base.libre_gluten()

	method mordisco(){
		if((peso - gol_base.peso()) > 0){
			gol_base.mordisco()
			peso = gol_base.peso() - 2
		}else{
			gol_base.mordisco()
			peso = gol_base.peso()
		
		return
		}
	}
}
object tutti{
	var property peso = 5
	var libreGluten = false
	var property precio = 7
	var property sabor = ["Frutilla", "Chocolate", "Naranja"]

	method libreGluten(libre){
		if(libre){
			libreGluten = true
			precio = 10
		}else if(!libre){
			libreGluten = false
			precio = 10
		}
		return
	}
	method mordisco(){
		//Cambiar sabor
		sabor.add(sabor[0])
		sabor.remove(sabor[0])

		peso -= 5
		return
	}
}
