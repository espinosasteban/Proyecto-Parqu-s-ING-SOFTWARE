/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando verde no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "amarillo") {
	if todo_cero(global.posiam) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_amarillo()
		}
}

if (!liberado and global.dobles and oCarcel.carcelAm and verificador.turno = "amarillo" and todo_cero(global.posiam))  {
	fam1.x = cas18.x - 8
	fam1.y = cas18.y + 15
	
	fam2.x = cas18.x - 3
	fam2.y = cas18.y + 2
	
	fam3.x = cas18.x + 2
	fam3.y = cas18.y - 12
	
	fam4.x = cas18.x + 8
	fam4.y = cas18.y - 26
	
	global.posiam = [18,18,18,18]
	liberado = true;
	repite_turno_amarillo();
	
}