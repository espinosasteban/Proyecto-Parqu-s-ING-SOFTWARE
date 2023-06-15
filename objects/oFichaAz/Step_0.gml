/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando azul no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "azul") {
	if todo_cero(global.posaz) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_azul()
		}
}

if (!liberado and global.dobles and oCarcel.carcelAz and verificador.turno = "azul")  {
	faz1.x = cas52.x - 18
	faz1.y = cas52.y + 15
	
	faz2.x = cas52.x - 6
	faz2.y = cas52.y + 7
	
	faz3.x = cas52.x + 6
	faz3.y = cas52.y - 2
	
	faz4.x = cas52.x + 17
	faz4.y = cas52.y - 10
	
	global.posaz = [52,52,52,52]
	repite_turno_azul();
	liberado = true;
}