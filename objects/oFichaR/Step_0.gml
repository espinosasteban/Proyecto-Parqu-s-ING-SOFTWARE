/// @description Manejo de excepciones
// Puede escribir su código en este editor

// Pasa turno cuando rojo no sacó doble y todas las fichas están en cárcel
if (global.lanzado and !global.dobles and verificador.turno = "rojo") {
	if todo_cero(global.posir) {
		show_message("No sacaste doble y todas las fichas están en cárcel, pasas turno")
		global.usado1 = true;
		global.usado2 = true;
		global.lanzado = false;
		fin_turno_rojo()
		}
}

if (!liberado and global.dobles and oCarcel.carcelR and verificador.turno = "rojo" and todo_cero(global.posir))  {
	fr1.x = cas69.x - 6
	fr1.y = cas69.y - 28
	
	fr2.x = cas69.x - 2
	fr2.y = cas69.y - 16
	
	fr3.x = cas69.x + 3
	fr3.y = cas69.y + 1
	
	fr4.x = cas69.x + 7
	fr4.y = cas69.y + 13
	
	global.posir = [69,69,69,69]
	liberado = true;
	repite_turno_rojo();

}