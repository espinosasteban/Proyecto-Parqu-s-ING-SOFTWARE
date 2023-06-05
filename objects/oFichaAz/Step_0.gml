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