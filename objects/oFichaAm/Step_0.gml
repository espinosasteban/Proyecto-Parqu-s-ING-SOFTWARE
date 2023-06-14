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

if (!liberado and global.dobles and !oCarcel.carcelAm and verificador.turno = "amarillo")  {
	show_message("amarillo")
	fam1.x = cas18.x - 8
	fam1.y = cas18.y + 18
	
	fam2.x = cas18.x - 7
	fam2.y = cas18.y
	
	fam3.x = cas18.x + 8
	fam3.y = cas18.y
	
	fam4.x = cas18.x - 8
	fam4.y = cas18.y + 18
	
	global.posiam = [18,18,18,18]
	repite_turno_amarillo();
	liberado = true;
}