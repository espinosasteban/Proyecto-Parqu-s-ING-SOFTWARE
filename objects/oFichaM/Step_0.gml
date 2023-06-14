/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando verde no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "morado") {
	if todo_cero(global.posim) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		show_message("morado")
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_morado()
		}
}

if (!liberado and global.dobles and !oCarcel.carcelM and verificador.turno = "morado")  {
	show_message("morado")
	fm1.x = cas35.x - 20
	fm1.y = cas35.y + 19
	
	fm2.x = cas35.x - 6
	fm2.y = cas35.y + 8
	
	fm3.x = cas35.x + 7
	fm3.y = cas35.y + 1
	
	fm4.x = cas35.x - 2
	fm4.y = cas35.y + 11
	
	global.posim = [35,35,35,35]
	repite_turno_morado();
	liberado = true;
}