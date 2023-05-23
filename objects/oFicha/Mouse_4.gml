/// @description Movimiento

// Detecta la instancia de la casilla a la cual es posible desplazarse
if (global.lanzado == true) {
	pos = resultado + pos_ficha - 1
	desplaza = oCasilla.casillas[pos]
	ex = desplaza.x
	ye = desplaza.y
	x = ex
	y = ye
	pos_ficha = pos + 1
	
	// Se habilita selección de casilla a mover
	global.movimiento = true;
	
	// Se bloquea dado con el cual se realizó el movimiento
	if (global.seleccionado == dado1) {
		global.usado1 = true;
		oDado.random_number_1 = 0;
	} else if (global.seleccionado == dado2) {
		global.usado2 = true;
		oDado2.random_number_2 = 0;
	}
	
	// Se deshabilita el estado del dado lanzado
	global.lanzado = false;
}