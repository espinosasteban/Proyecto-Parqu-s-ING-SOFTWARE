/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando morado no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "morado") {
	if todo_cero(global.posim) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		show_message(oCarcel.carcelM)
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_morado()
		}
}

if (!liberado and global.dobles and oCarcel.carcelM and verificador.turno = "morado")  {
	
	fm1.x = cas35.x - 19
	fm1.y = cas35.y - 7
	
	fm2.x = cas35.x - 7
	fm2.y = cas35.y - 3
	
	fm3.x = cas35.x + 4
	fm3.y = cas35.y + 8
	
	fm4.x = cas35.x + 15
	fm4.y = cas35.y + 16
	
	global.posim = [35,35,35,35]
	repite_turno_morado();
	liberado = true;
}