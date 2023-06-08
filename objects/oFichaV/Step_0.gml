/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando verde no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "verde") {
	if todo_cero(global.posiv) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_verde()
		}
}

if (!liberado and global.dobles and oCarcel.carcelV)  {
	fv1.x = cas1.x - 25
	fv1.y = cas1.y
	
	fv2.x = cas1.x - 7
	fv2.y = cas1.y
	
	fv3.x = cas1.x + 8
	fv3.y = cas1.y
	
	fv4.x = cas1.x + 25
	fv4.y = cas1.y
	
	global.posiv = [1,1,1,1]
	repite_turno_verde();
	liberado = true;
}